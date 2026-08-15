#!/usr/bin/env python3
"""noreel: parchea el APK de Instagram para quitar Reels.

Uso:
    python3 patch.py <dir_con_apks_originales> <dir_salida>

<dir_con_apks_originales> debe contener base.apk y los split_*.apk extraidos
del movil (ver pull.sh). La salida es un unico APK (base.apk parcheado
fusionado con todos los splits) firmado y listo para `adb install`.

Los nombres de clase de Instagram estan ofuscados (X/03A3, X/00GK...) y
cambian en cada version, asi que los objetivos se localizan por estructura
y por el campo __redex_internal_original_name que conserva redex.
"""
import os
import re
import shutil
import subprocess
import sys
import zipfile
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

ROOT = Path(__file__).resolve().parent
TOOLS = ROOT / "tools"
SMALI = TOOLS / "smali.jar"
BAKSMALI = TOOLS / "baksmali.jar"
SIGNER = TOOLS / "uber-apk-signer.jar"
MERGER = TOOLS / "APKEditor.jar"
KEYSTORE = ROOT / "keystore" / "release.jks"

USER_SESSION = "Lcom/instagram/common/session/UserSession;"

# Pestanas que desaparecen de la barra inferior (por defecto solo Reels).
# Para quitar tambien Explorar (la lupa): IGSR_REMOVED_TABS=CLIPS,SEARCH
REMOVED_TABS = tuple(os.environ.get("IGSR_REMOVED_TABS", "CLIPS").split(","))


def run(*cmd):
    subprocess.run([str(c) for c in cmd], check=True)


def disassemble(base_apk: Path, work: Path) -> dict[str, Path]:
    dex_dir = work / "dex"
    smali_dir = work / "smali"
    dex_dir.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(base_apk) as z:
        names = [n for n in z.namelist() if re.fullmatch(r"classes\d*\.dex", n)]
        for n in names:
            if not (dex_dir / n).exists():
                z.extract(n, dex_dir)

    def one(n):
        out = smali_dir / n[:-4]
        if not out.exists():
            run("java", "-jar", BAKSMALI, "d", "-j", "2", dex_dir / n, "-o", out)
        return n, out

    with ThreadPoolExecutor(4) as ex:
        return dict(ex.map(one, names))


def find_files(smali_dirs, needle: str):
    """Ficheros .smali que contienen `needle` (usa grep, mucho mas rapido)."""
    res = subprocess.run(
        ["grep", "-rlF", "--include=*.smali", needle, *map(str, smali_dirs)],
        capture_output=True, text=True,
    )
    return [Path(p) for p in res.stdout.split()]


def class_name(text: str) -> str:
    return re.search(r"^\.class .*?(L[^;]+;)", text, re.M).group(1)


def enum_fields(text: str, cls: str) -> dict[str, str]:
    """Mapa nombre_enum -> campo ofuscado, leyendo el <clinit>."""
    out, last = {}, None
    for line in text.splitlines():
        m = re.search(r'const-string(?:/jumbo)? v1, "([A-Z_]+)"', line)
        if m:
            last = m.group(1)
        m = re.search(rf"sput-object v0, {re.escape(cls)}->(\w+):{re.escape(cls)}", line)
        if m and last and last not in out:
            out[last] = m.group(1)
    return out


def methods(text: str):
    for m in re.finditer(r"^\.method (.*?)\n(.*?)^\.end method\n", text, re.M | re.S):
        yield m


class Patcher:
    def __init__(self, smali_dirs: dict[str, Path], work: Path):
        self.dirs = smali_dirs  # desensamblado original (cache, no se toca)
        self.mod = work / "smali_mod"
        self.touched: set[str] = set()  # nombres de dex modificados

    def dex_of(self, path: Path) -> str:
        for name, d in self.dirs.items():
            if d in path.parents:
                return name
        raise KeyError(path)

    def read(self, path: Path) -> str:
        """Lee la version ya parcheada si existe, para encadenar parches."""
        if not any(d in path.parents for d in self.dirs.values()):
            return path.read_text()
        dex = self.dex_of(path)
        if dex in self.touched:
            mod = self.mod / dex / path.relative_to(self.dirs[dex])
            if mod.exists():
                return mod.read_text()
        return path.read_text()

    def write(self, path: Path, text: str):
        dex = self.dex_of(path)
        dst_root = self.mod / dex
        if dex not in self.touched:
            shutil.rmtree(dst_root, ignore_errors=True)
            shutil.copytree(self.dirs[dex], dst_root)
            self.touched.add(dex)
        dst = dst_root / path.relative_to(self.dirs[dex])
        dst.parent.mkdir(parents=True, exist_ok=True)
        dst.write_text(text)

    def find_class(self, path: str) -> Path:
        for d in self.dirs.values():
            f = d / f"{path}.smali"
            if f.exists():
                return f
        raise FileNotFoundError(path)

    def locate_product_type(self):
        f = self.find_class("com/instagram/model/mediatype/ProductType")
        cls = "Lcom/instagram/model/mediatype/ProductType;"
        text = self.read(f)
        clips = None
        last = None
        for line in text.splitlines():
            m = re.search(r'const-string(?:/jumbo)? v\d+, "([A-Z_]+)"', line)
            if m:
                last = m.group(1)
            m = re.search(rf"sput-object v\d+, {re.escape(cls)}->(\w+):{re.escape(cls)}", line)
            if m and last == "CLIPS":
                clips = m.group(1)
                break
        ext = self.find_class("com/instagram/feed/media/MediaExtKt").read_text()
        getter = re.search(r"^\.method public static final (\w+)\(Lcom/instagram/feed/media/Media;\)" + re.escape(cls), ext, re.M).group(1)
        self.helper_vars = {"__CLIPS__": clips, "__PRODUCT_TYPE__": getter}
        print(f"[+] ProductType.CLIPS = {clips}, MediaExtKt.{getter}(Media)")
        # Tipo de media (PHOTO, VIDEO, CAROUSEL...): MediaExtKt.x(new W(media)) -> MediaType.
        # Muchos videos que se abren como reel no tienen ProductType CLIPS.
        for m in re.finditer(r"^\.method public static final (\w+)\((L[^;]+;)\)(L[^;]+;)$", ext, re.M):
            meth, wrapper, mtype = m.groups()
            if not mtype.startswith("LX/"):
                continue
            ttext = self.read(self.find_class(mtype[1:-1]))
            if not all(f'"{k}"' in ttext for k in ("PHOTO", "VIDEO", "CAROUSEL")):
                continue
            consts = {}
            last = None
            for line in ttext.splitlines():
                mm = re.search(r'const-string(?:/jumbo)? v\d+, "([A-Z_]+)"', line)
                if mm:
                    last = mm.group(1)
                mm = re.search(rf"sput-object v\d+, {re.escape(mtype)}->(\w+):{re.escape(mtype)}", line)
                if mm and last and last not in consts:
                    consts[last] = mm.group(1)
            wtext = self.read(self.find_class(wrapper[1:-1]))
            ctor = re.search(r"^\.method public constructor <init>\((L[^;]+;)\)V", wtext, re.M)
            if ctor and "VIDEO" in consts:
                self.helper_vars.update({"__MEDIA_TYPE__": meth, "__MEDIA_TYPE_CLS__": mtype, "__VIDEO__": consts["VIDEO"],
                                         "__TYPE_WRAPPER__": wrapper, "__MEDIA_DICT__": ctor.group(1)})
                print(f"[+] MediaType = {mtype} VIDEO={consts['VIDEO']}, MediaExtKt.{meth}(new {wrapper}(media))")
                break
        assert "__MEDIA_TYPE__" in self.helper_vars, "tipo de media no encontrado"

    def locate_users(self):
        """Autor de un Media y relacion con el: los usa Gate (por reflexion) para
        clasificar los reels del feed (tuyos, amigos, otros)."""
        media = self.read(self.find_class("com/instagram/feed/media/Media"))
        author = [m.group(1) for m in re.finditer(r"^\.method public final (\w+)\(\)Lcom/instagram/user/model/User;\n(.*?)^\.end method", media, re.M | re.S)
                  if re.search(r'const-string(?:/jumbo)? v\d+, "user"\n', m.group(2))]
        assert len(author) == 1, f"autor del Media: {author}"
        user = self.read(self.find_class("com/instagram/user/model/User"))
        def bool_getter(key):
            ms = [m.group(1) for m in re.finditer(r"^\.method public final (\w+)\(\)Ljava/lang/Boolean;\n(.*?)^\.end method", user, re.M | re.S)
                  if f'"{key}"' in m.group(2)]
            assert len(ms) == 1, f"User.{key}: {ms}"
            return ms[0]
        # Estado de seguimiento calculado: metodo ()FollowStatus sin claves propias.
        fs = [f for f in find_files(self.dirs.values(), '"FollowStatusFollowing"')]
        assert len(fs) == 1, f"FollowStatus: {fs}"
        fcls = class_name(self.read(fs[0]))
        status = [m.group(1) for m in re.finditer(rf"^\.method public final (\w+)\(\){re.escape(fcls)}\n(.*?)^\.end method", user, re.M | re.S)
                  if "const-string" not in m.group(2)]
        assert len(status) == 1, f"User.followStatus: {status}"
        injected = [m.group(1) for m in re.finditer(r"^\.method public final (\w+)\(\)L[^;]+;\n(.*?)^\.end method", media, re.M | re.S)
                    if re.search(r'const-string(?:/jumbo)? v\d+, "injected"\n', m.group(2))]
        assert len(injected) == 1, f"Media.injected: {injected}"
        self.helper_vars["__MEDIA_INJECTED__"] = injected[0]
        # Contenido generado por IA: etiqueta, deteccion y stickers.
        ai = []
        for key in ("ai_label_info", "gen_ai_detection_method", "has_gen_ai_sticker", "has_high_risk_gen_ai_inform_treatment"):
            ai += [m.group(1) for m in re.finditer(r"^\.method public final (\w+)\(\)L[^;]+;\n(.*?)^\.end method", media, re.M | re.S)
                   if re.search(rf'const-string(?:/jumbo)? v\d+, "{key}"\n', m.group(2))][:1]
        assert ai, "indicadores de IA del Media no encontrados"
        self.helper_vars["__MEDIA_AI__"] = ",".join(ai)
        carousel = [m.group(1) for m in re.finditer(r"^\.method public final (\w+)\(\)Ljava/util/List;\n(.*?)^\.end method", media, re.M | re.S)
                    if re.search(r'const-string(?:/jumbo)? v\d+, "carousel_media"\n', m.group(2))]
        assert len(carousel) == 1, f"Media.carousel_media: {carousel}"
        self.helper_vars["__MEDIA_CAROUSEL__"] = carousel[0]
        print(f"[+] Media IA: {self.helper_vars['__MEDIA_AI__']}")
        self.helper_vars.update({
            "__MEDIA_AUTHOR__": author[0], "__FOLLOW_STATUS__": status[0],
            "__FOLLOWED_BY__": bool_getter("followed_by"), "__FOLLOWS_ME__": bool_getter("is_following_current_user"),
        })
        print(f"[+] Media.{author[0]}() autor, User.{status[0]}() sigues, User.{self.helper_vars['__FOLLOWED_BY__']}()/"
              f"{self.helper_vars['__FOLLOWS_ME__']}() te sigue")

    def add_helper(self):
        """Anade com/igsinreels/*.smali al dex mas pequeno."""
        dex = min(self.dirs, key=lambda n: sum(1 for _ in self.dirs[n].rglob("*.smali")))
        for f in (ROOT / "smali").rglob("*.smali"):
            text = self.read(f)
            for k, v in self.helper_vars.items():
                text = text.replace(k, v)
            self.write(self.dirs[dex] / f.relative_to(ROOT / "smali"), text)
        print(f"[+] Helper anadido a {dex}")

    # ---- 5. secciones donde se pueden permitir reels (ajustes) ---------------
    SECTIONS = {
        "__SAVED_CLASSES__": r"Saved\w*Fragment",
        "__REPOST_CLASSES__": r"(RepostsProfileTabFragment|RepostImmersiveSelfFragment)",
        "__DM_CLASSES__": r"DirectThread\w*Fragment",
        # Lupa y resultados de busqueda: todo se abre en el visor de reels.
        "__EXPLORE_CLASSES__": r"(Explore|\w*Serp)\w*Fragment",
        # Tu perfil (pestanas de reels y reposts propios).
        "__SELF_CLASSES__": r"SelfFragment",
        # Feed de inicio "Para ti".
        "__HOME_CLASSES__": r"MainFeedFragment",
    }

    def locate_sections(self):
        res = subprocess.run(
            ["grep", "-rhoE", "--include=*.smali",
             r'^\.class .*|__redex_internal_original_name:Ljava/lang/String; = "\w+"', *map(str, self.dirs.values())],
            capture_output=True, text=True,
        )
        names, cls = {}, None
        for line in res.stdout.splitlines():
            if line.startswith(".class"):
                cls = re.search(r"(L[^;]+;)", line).group(1)
            elif cls:
                names[line.rsplit('"', 2)[1]] = cls[1:-1].replace("/", ".")
        for var, pattern in self.SECTIONS.items():
            found = sorted(v for k, v in names.items() if re.fullmatch(pattern, k))
            assert found, f"sin clases para {var}"
            self.helper_vars[var] = ",".join(found)
            print(f"[+] {var.strip('_')}: {len(found)} fragments")

    # ---- 6. celdas de listas/cuadriculas: tapar los reels --------------------
    def locate_viewholder(self):
        rv = self.read(self.find_class("androidx/recyclerview/widget/RecyclerView"))
        adapter = re.search(r"^\.method public getAdapter\(\)(L[^;]+;)", rv, re.M).group(1)
        atext = self.read(self.find_class(adapter[1:-1]))
        holder = re.search(r"^\.method public abstract \w+\(Landroid/view/ViewGroup;I\)(L[^;]+;)", atext, re.M).group(1)
        htext = self.read(self.find_class(holder[1:-1]))
        views = re.findall(r"^\.field public final (\w+):Landroid/view/View;", htext, re.M)
        assert len(views) == 1, f"itemView de {holder}: {views}"
        self.helper_vars.update({"__VIEW_HOLDER__": holder, "__ITEM_VIEW__": views[0]})
        self.rv_adapter, self.rv_holder = adapter, holder

    def patch_list_binding(self):
        """Adaptador generico de RecyclerView de Instagram: tras enlazar cada celda
        con su modelo (definicion.bind(holder, modelo)) llama a Blocker.bound."""
        adapter, holder = self.rv_adapter, self.rv_holder
        bind = re.compile(
            rf"(invoke-virtual \{{v\d+, p1, (v\d+)\}}, L[^;]+;->\w+\({re.escape(holder)}L[^;]+;\)V\n"
            r"\s+:try_end_\w+\n\s+\.catch [^\n]+\n)")
        done = []
        for f in find_files(self.dirs.values(), f".super {adapter}"):
            text = self.read(f)
            for m in methods(text):
                if not m.group(1).endswith(f"({holder}I)V"):
                    continue
                body, n = bind.subn(
                    lambda mm: mm.group(1) + f"\n    invoke-static {{p1, {mm.group(2)}}}, "
                    "Lcom/igsinreels/Blocker;->bound(Ljava/lang/Object;Ljava/lang/Object;)V\n",
                    m.group(2), count=1)
                if n:
                    text = text.replace(m.group(0), m.group(0).replace(m.group(2), body))
                    done.append(class_name(text))
            if class_name(text) in done:
                self.write(f, text)
        assert len(done) == 1, f"adaptador generico: {done}"
        print(f"[+] Adaptador generico {done[0]} (holder {holder}) parcheado")
        # Resto de adaptadores (p. ej. los mensajes de un chat): en bindViewHolder de la
        # clase base, tras onBindViewHolder(holder, payloads, pos), se mira el propio holder.
        f = self.find_class(adapter[1:-1])
        text = self.read(f)
        call = re.compile(rf"(invoke-virtual \{{p0, p1, v\d+, p2\}}, {re.escape(adapter)}->\w+\({re.escape(holder)}Ljava/util/List;I\)V\n)")
        text, n = call.subn(r"\1\n    invoke-static {p1}, Lcom/igsinreels/Blocker;->boundHolder(Ljava/lang/Object;)V\n", text, count=1)
        assert n == 1, "bindViewHolder de la clase base no encontrado"
        self.write(f, text)
        print(f"[+] bindViewHolder de {adapter} parcheado")

    # ---- 6b. contenido de los mensajes de chat (reels enviados por MD) --------
    def patch_message_content(self):
        """Interfaz de 'binders' de contenido de mensaje: bind(holder, modelo),
        crear(LayoutInflater, ViewGroup) -> holder y reciclar(holder)."""
        iface = None
        for f in find_files(self.dirs.values(), "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)L"):
            text = self.read(f)
            if not text.startswith(".class public interface abstract"):
                continue
            ms = re.findall(r"^\.method public abstract (\w+)\((.*)\)(\S+)$", text, re.M)
            if len(ms) != 3:
                continue
            create = [m for m in ms if m[1] == "Landroid/view/LayoutInflater;Landroid/view/ViewGroup;"]
            if not create:
                continue
            h = create[0][2]
            bind = [m for m in ms if re.fullmatch(rf"{re.escape(h)}L[^;]+;", m[1]) and m[2] == "V"]
            recycle = [m for m in ms if m[1] == h and m[2] == "V"]
            if bind and recycle:
                assert iface is None, f"varias interfaces de contenido: {iface} {class_name(text)}"
                iface = (class_name(text), bind[0][0], bind[0][1])
        assert iface, "interfaz de contenido de mensajes no encontrada"
        cls, meth, params = iface
        # Cada implementacion: el puente bind(H, M) suele delegar en un metodo tipado
        # (que tambien se llama directamente); se engancha al principio de ese metodo.
        hook = "\n    invoke-static/range {p1 .. p2}, Lcom/igsinreels/Blocker;->boundContent(Ljava/lang/Object;Ljava/lang/Object;)V\n"
        n = 0
        for f in find_files(self.dirs.values(), f".implements {cls}"):
            text = self.read(f)
            me = class_name(text)
            bridge = re.search(rf"^\.method public (?:final )?(?:bridge synthetic )?{meth}\({re.escape(params)}\)V\n(.*?)^\.end method", text, re.M | re.S)
            if not bridge:
                continue
            target = re.search(rf"invoke-virtual \{{p0, p1, p2\}}, {re.escape(me)}->(\w+)\((L[^;]+;L[^;]+;)\)V", bridge.group(1))
            sig = rf"{target.group(1)}\({re.escape(target.group(2))}\)V" if target else rf"{meth}\({re.escape(params)}\)V"
            m = re.search(rf"^\.method (?:public |private |final |bridge |synthetic )*{sig}\n\s+\.registers \d+\n", text, re.M)
            if not m or " static " in m.group(0):
                continue
            self.write(f, text.replace(m.group(0), m.group(0) + hook, 1))
            n += 1
        assert n >= 1, "sin implementaciones de contenido de mensajes"
        print(f"[+] Contenido de mensajes {cls}.{meth}: {n} binders enganchados")

    # ---- 9. ajustes: apartado Reels en "Lo que ves" -------------------------
    def patch_settings(self):
        """Pantalla de ajustes (settings2, Compose): las definiciones de filas y de
        secciones se construyen en lambdas invoke(); su resultado pasa por
        Gate.settingsDef, que anade la fila "Reels". Su ruta propia se intercepta
        en el navegador de la pantalla."""
        enums = [f for f in find_files(self.dirs.values(), 'const-string v0, "REELS_SECOND"')
                 if all(f'"{k}"' in (t := self.read(f)) for k in ("LIKE_COUNT", "FAVORITES")) and ".super Ljava/lang/Enum;" in t]
        if not enums:
            enums = [f for f in find_files(self.dirs.values(), '"REELS_SECOND"')
                     if all(f'"{k}"' in (t := self.read(f)) for k in ("LIKE_COUNT", "FAVORITES")) and ".super Ljava/lang/Enum;" in t]
        assert len(enums) == 1, f"enum de filas de ajustes: {enums}"
        key = class_name(self.read(enums[0]))
        n = 0
        for f in find_files(self.dirs.values(), f"{key}->"):
            text = self.read(f)
            if f == enums[0]:
                continue
            m = re.search(r"^\.method public final bridge synthetic invoke\(\)Ljava/lang/Object;\n(.*?)^\.end method", text, re.M | re.S)
            if not m:
                continue
            body, k = re.subn(r"\n(\s+)return-object (v\d+)\n",
                              lambda mm: f"\n    invoke-static/range {{{mm.group(2)} .. {mm.group(2)}}}, Lcom/igsinreels/Gate;->settingsDef(Ljava/lang/Object;)Ljava/lang/Object;\n\n"
                                         f"    move-result-object {mm.group(2)}\n{mm.group(1)}return-object {mm.group(2)}\n", m.group(1))
            self.write(f, text.replace(m.group(1), body))
            n += 1
        assert n >= 2, f"definiciones de ajustes: {n}"
        # Navegador: evento con (ruta, bundle) -> si es la nuestra, abre el apartado.
        nav = re.compile(
            r"(invoke-virtual \{v\d+\}, Landroidx/fragment/app/Fragment;->requireActivity\(\)Landroidx/fragment/app/FragmentActivity;\n\s+move-result-object (v\d+)\n"
            r"(?:.*\n){0,3}?\s+check-cast (v\d+), (L[^;]+;)\n\s+iget-object (v\d+), \3, \4->\w+:Ljava/lang/String;\n)"
            r"(\s+iget-object (v\d+), \3, \4->\w+:Landroid/os/Bundle;\n)")
        done = 0
        for f in find_files(self.dirs.values(), '"bottom_sheet_content_fragment"'):
            text = self.read(f)
            new, k = nav.subn(lambda m: m.group(1) +
                f"\n    invoke-static {{{m.group(5)}, {m.group(2)}}}, Lcom/igsinreels/Gate;->settingsRoute(Ljava/lang/String;Landroid/app/Activity;)Z\n\n"
                f"    move-result {m.group(7)}\n\n    if-eqz {m.group(7)}, :igsinreels_route\n\n    return-void\n\n    :igsinreels_route\n" + m.group(6), text)
            if k:
                self.write(f, new)
                done += k
        assert done == 1, f"navegador de ajustes: {done}"
        print(f"[+] Ajustes: {n} definiciones ({key}) y navegador enganchados")

    # ---- 10. pestana Reels: filtrar los reels no permitidos -------------------
    def patch_clips_filter(self):
        """Controlador de datos del visor de clips (tiene su ClipsViewerSource): el metodo
        estatico (self, List nuevos, List, Map, Z, Z) recibe los elementos que se van a
        anadir; se filtran con Gate.filterClips (solo actua en la pestana Reels)."""
        src = "Lcom/instagram/clips/intf/ClipsViewerSource;"
        done = []
        for f in find_files(self.dirs.values(), f":{src}"):
            text = self.read(f)
            cls = class_name(text)
            if not re.search(rf"^\.field public final \w+:{re.escape(src)}$", text, re.M):
                continue
            m = re.search(rf"^\.method public static final \w+\({re.escape(cls)}Ljava/util/List;Ljava/util/List;Ljava/util/Map;ZZ\)V\n(\s+\.registers \d+\n)", text, re.M)
            if not m:
                continue
            inject = ("\n    invoke-static/range {p0 .. p1}, Lcom/igsinreels/Gate;->filterClips(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;\n\n"
                      "    move-result-object p1\n")
            text = text.replace(m.group(0), m.group(0) + inject, 1)
            # Carga de reels normales: (..., String, List ids, List elementos, Map, 8 x boolean).
            b = re.search(r"^\.method public final \w+\((L[^;]+;)(L[^;]+;)Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;ZZZZZZZZ\)V\n(\s+\.registers (\d+)\n)", text, re.M)
            assert b and int(b.group(4)) - 15 >= 2, "carga de reels del visor no encontrada"
            inject = ("\n    move-object/from16 v0, p0\n\n    move-object/from16 v1, p5\n\n"
                      "    invoke-static {v0, v1}, Lcom/igsinreels/Gate;->filterClips(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;\n\n"
                      "    move-result-object v1\n\n    move-object/from16 p5, v1\n\n"
                      "    move-object/from16 v1, p4\n\n"
                      "    invoke-static {v1}, Lcom/igsinreels/Gate;->filterClipIds(Ljava/util/List;)Ljava/util/List;\n\n"
                      "    move-result-object v1\n\n    move-object/from16 p4, v1\n")
            text = text.replace(b.group(0), b.group(0) + inject, 1)
            self.write(f, text)
            done.append(cls)
        assert len(done) == 1, f"controlador de clips: {done}"
        print(f"[+] Pestana Reels: {done[0]} filtra los reels nuevos (anuncios y carga normal)")

    # ---- 7. ciclo de vida de los fragments -----------------------------------
    def patch_fragment_lifecycle(self):
        f = self.find_class("androidx/fragment/app/Fragment")
        text = self.read(f)
        for meth, hook in (("performCreate(Landroid/os/Bundle;)V", "created"), ("performResume()V", "resumed")):
            m = re.search(rf"^\.method public {re.escape(meth)}\n\s+\.registers \d+\n", text, re.M)
            assert m, f"Fragment.{meth}"
            text = text.replace(m.group(0), m.group(0) + f"\n    invoke-static {{p0}}, Lcom/igsinreels/Gate;->{hook}(Landroidx/fragment/app/Fragment;)V\n", 1)
        self.write(f, text)
        print("[+] Fragment.performCreate/performResume enganchados")

    # ---- 8. lista de publicaciones (ContextualFeed): sin reels ---------------
    def patch_contextual_feed(self):
        f = self.find_class("instagram/features/feed/contextualfeed/ContextualFeedFragment")
        text = self.read(f)
        types = set(re.findall(r"iget-object v\d+, \w+, Linstagram/features/feed/contextualfeed/ContextualFeedFragment;->\w+:(L[^;]+;)\n"
                               r"(?:\s+\.line \d+\n)?\s+const-string(?:/jumbo)? v\d+, \"adapter\"", text))
        assert len(types) == 1, f"adaptador de ContextualFeed: {types}"
        adapter = types.pop()
        af = self.find_class(adapter[1:-1])
        atext = self.read(af)
        n = 0
        for m in methods(atext):
            if re.fullmatch(r"public final \w+\(Ljava/util/List;I?\)V", m.group(1)):
                head = re.match(r"(\s+\.registers \d+\n)", m.group(2))
                body = m.group(2).replace(head.group(1), head.group(1) +
                    "\n    invoke-static {p0, p1}, Lcom/igsinreels/Gate;->filterFeed(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;\n\n"
                    "    move-result-object p1\n", 1)
                atext = atext.replace(m.group(0), m.group(0).replace(m.group(2), body))
                n += 1
        assert n == 2, f"metodos de lista en {adapter}: {n}"
        self.write(af, atext)
        print(f"[+] Adaptador de ContextualFeed {adapter} filtra reels")

    # ---- 4. reels dentro del feed de inicio ----------------------------------
    BLOCKED_UNITS = ("clips_netego", "vibes_in_feed_unit")

    def patch_feed(self):
        files = [f for f in find_files(self.dirs.values(), 'const-string v0, "clips_netego"')
                 if '"media_or_ad"' in (t := self.read(f)) and "unsafeParseFromJson" in t]
        assert len(files) == 1, f"parser de FeedItem: {files}"
        f = files[0]
        text = self.read(f)
        m = next(m for m in methods(text) if "unsafeParseFromJson" in m.group(1))
        body = m.group(2)
        # a) unidades de reels sugeridos: el parser ya no las reconoce -> skipChildren
        for unit in self.BLOCKED_UNITS:
            body, n = re.subn(rf'(:sswitch_\w+\s+(?:\.line \d+\s+)*const-string(?:/jumbo)? v0, )"{unit}"',
                              rf'\1"igsinreels_{unit}"', body)
            assert n == 1, f"unidad {unit}: {n}"
        # b) media_or_ad: si el post es un reel, se descarta
        body, n = re.subn(
            r'(const-string v0, "media_or_ad"\n.*?invoke-static \{[^}]+\}, L[^;]+;->\w+\([^)]*\)Lcom/instagram/feed/media/Media;'
            r'\s+(?:\.line \d+\s+)*move-result-object (v\d+)\n)',
            lambda mm: mm.group(1) + f"\n    invoke-static/range {{{mm.group(2)} .. {mm.group(2)}}}, Lcom/igsinreels/Blocker;->feedMedia(Lcom/instagram/feed/media/Media;)Lcom/instagram/feed/media/Media;\n\n    move-result-object {mm.group(2)}\n",
            body, count=1, flags=re.S)
        assert n == 1, "media_or_ad no encontrado"
        print(f"[+] Feed parcheado en {class_name(text)}")
        self.write(f, text.replace(m.group(2), body))

    # ---- 3. el visor de Reels se sustituye por BlockedFragment ---------------
    def class_by_original_name(self, name: str) -> tuple[Path, str]:
        files = find_files(self.dirs.values(), f'__redex_internal_original_name:Ljava/lang/String; = "{name}"')
        assert len(files) == 1, f"{name}: {files}"
        return files[0], class_name(self.read(files[0]))

    def locate_clips_fragments(self):
        f, self.viewer = self.class_by_original_name("ClipsViewerFragment")
        _, self.clips_tab = self.class_by_original_name("ClipsTabFragment")
        text = self.read(f)
        base = re.search(r"^\.super (\S+)", text, re.M).group(1)
        session_type = re.search(r"^\.method public final getSession\(\)(L[^;]+;)", text, re.M).group(1)
        lazy = re.search(r"invoke-static \{v\d+\}, (L[^;]+;->\w+)\(Landroidx/fragment/app/Fragment;\)(L[^;]+;)", text)
        self.helper_vars.update({
            "__BASE_FRAGMENT__": base, "__SESSION_TYPE__": session_type,
            "__SESSION_LAZY__": lazy.group(1), "__LAZY_TYPE__": lazy.group(2),
        })
        subclasses = [class_name(self.read(g)) for g in find_files(self.dirs.values(), f".super {self.viewer}")]
        self.blocked = [self.viewer, self.clips_tab, *subclasses]
        names = [c[1:-1].replace("/", ".") for c in self.blocked]
        self.helper_vars["__BLOCKED_NAMES__"] = "," + ",".join(names) + ","
        print(f"[+] ClipsViewerFragment={self.viewer} ClipsTabFragment={self.clips_tab} base={base} bloqueados={names}")

    def patch_clips_factory(self):
        # ClipsFragmentFactory: crea ClipsViewerFragment, ClipsTabFragment y subclases.
        # newClipsViewerFragment(Bundle args, ...) decide segun el origen del reel
        # (MD, guardados, reposts) y los ajustes; el resto de creaciones se bloquean.
        targets = self.blocked
        n = gated = 0
        for cls in targets:
            for f in find_files(self.dirs.values(), f"new-instance v0, {cls}"):
                text = self.read(f)
                new, k = text, 0
                for m in methods(text):
                    body = m.group(2)
                    if ":igsinreels_allowed" in body:
                        continue
                    if "_newClipsViewerFragment\"" in body:
                        new = new.replace(m.group(0), m.group(0).replace(body, self.gate_viewer(m.group(1), body)))
                        gated += 1
                        continue
                    # Pestana Reels (devuelve un fragment): segun los ajustes.
                    if re.search(rf"\){re.escape(self.helper_vars['__BASE_FRAGMENT__'])}$|\)Landroidx/fragment/app/Fragment;$", m.group(1)):
                        new = new.replace(m.group(0), m.group(0).replace(body, self.gate_viewer(m.group(1), body, tab=True)))
                        gated += 1
                        continue
                    # redex a veces llama directamente al constructor de la superclase
                    nb, kk = re.subn(
                        rf"new-instance (v\d+), {re.escape(cls)}(\s+(?:\.line \d+\s+)*)invoke-direct \{{\1\}}, L[^;]+;-><init>\(\)V",
                        r"new-instance \1, Lcom/igsinreels/BlockedFragment;\2invoke-direct {\1}, Lcom/igsinreels/BlockedFragment;-><init>()V",
                        body)
                    if kk:
                        new = new.replace(m.group(0), m.group(0).replace(body, nb))
                        k += kk
                if new != text:
                    print(f"[+] {cls} -> BlockedFragment en {class_name(text)} ({k})")
                    self.write(f, new)
                    n += k
        assert gated >= 2, f"visor: {n} creaciones sustituidas, {gated} con permiso"
        # Punto unico donde ModalActivity (y otros) crean fragments por nombre:
        # si el nombre es de Reels, se devuelve BlockedFragment.
        modal = self.find_class("com/instagram/modal/ModalActivity").read_text()
        sig = re.search(r"invoke-static \{[^}]+\}, (L[^;]+;)->(\w+)\((Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;L[^;]+;Ljava/lang/String;)\)Landroidx/fragment/app/Fragment;", modal)
        factory_cls, meth, params = sig.groups()
        f = self.find_class(factory_cls[1:-1])
        text = self.read(f)
        header = f".method public static final {meth}({params})Landroidx/fragment/app/Fragment;"
        m = re.search(re.escape(header) + r"\n\s+\.registers (\d+)\n", text)
        assert m and int(m.group(1)) - 4 >= 1, "factoria por nombre no encontrada"
        inject = (
            "\n    invoke-static {p3, p0}, Lcom/igsinreels/Gate;->blockNamed(Ljava/lang/String;Landroid/os/Bundle;)Z\n\n    move-result v0\n\n"
            "    if-eqz v0, :igsinreels_go\n\n"
            "    new-instance v0, Lcom/igsinreels/BlockedFragment;\n\n"
            "    invoke-direct {v0}, Lcom/igsinreels/BlockedFragment;-><init>()V\n\n"
            "    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V\n\n"
            "    return-object v0\n\n    :igsinreels_go\n"
        )
        self.write(f, text.replace(m.group(0), m.group(0) + inject, 1))
        print(f"[+] Factoria por nombre {factory_cls}.{meth} parcheada")

    @staticmethod
    def gate_viewer(header: str, body: str, tab: bool = False) -> str:
        """Al principio del metodo: si el visor (o la pestana Reels, tab=True) no
        esta permitido, devuelve BlockedFragment."""
        params = re.findall(r"\[*(?:L[^;]+;|[ZBSCIJFD])", re.search(r"\((.*)\)", header).group(1))
        reg = re.match(r"\s+\.registers (\d+)\n", body)
        wide = sum(2 if p in "JD" else 1 for p in params) + (0 if " static " in f" {header}" else 1)
        assert reg and int(reg.group(1)) > wide, f"sin registros libres: {header}"
        if tab:
            check, args = "invoke-static {}, Lcom/igsinreels/Gate;->reelsTab()Z", ""
        else:
            idx = params.index("Landroid/os/Bundle;") + (0 if " static " in f" {header}" else 1)
            check = f"invoke-static {{p{idx}}}, Lcom/igsinreels/Gate;->viewerAllowed(Landroid/os/Bundle;)Z"
            args = f"    invoke-virtual {{v0, p{idx}}}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V\n\n"
        inject = (
            f"\n    {check}\n\n    move-result v0\n\n"
            "    if-nez v0, :igsinreels_allowed\n\n"
            "    new-instance v0, Lcom/igsinreels/BlockedFragment;\n\n"
            "    invoke-direct {v0}, Lcom/igsinreels/BlockedFragment;-><init>()V\n\n"
            + args +
            "    return-object v0\n\n    :igsinreels_allowed\n"
        )
        return body.replace(reg.group(0), reg.group(0) + inject, 1)

    # ---- 1. enum IgTab ------------------------------------------------------
    def locate_igtab(self):
        f, self.igtab = self.class_by_original_name("IgTab")
        self.tabs = enum_fields(self.read(f), self.igtab)
        print(f"[+] IgTab = {self.igtab} {self.tabs}")
        for k in ("FEED", *REMOVED_TABS):
            assert k in self.tabs, f"IgTab sin {k}"

    # ---- 2. pestanas de la barra inferior -----------------------------------
    def patch_tab_list(self):
        clips = f"{self.igtab}->{self.tabs['CLIPS']}:{self.igtab}"
        feed = f"{self.igtab}->{self.tabs['FEED']}:{self.igtab}"
        done = 0
        for f in find_files(self.dirs.values(), f"new-array v1, v0, [{self.igtab}"):
            text = self.read(f)
            cls = class_name(text)
            new = text
            for m in methods(text):
                header, body = m.group(1), m.group(2)
                # (UserSession, Z) -> List : lista final de pestanas, sin REMOVED_TABS.
                if header.endswith(f"({USER_SESSION}Z)Ljava/util/List;") and "return-object v3" in body:
                    nb = body.replace(
                        "    :cond_6\n    return-object v3\n",
                        "    :cond_6\n"
                        "    new-instance v0, Ljava/util/ArrayList;\n\n"
                        "    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V\n\n"
                        + "".join(
                            # Reels: solo si los ajustes lo permiten (Gate.reelsTab).
                            ("    invoke-static {}, Lcom/igsinreels/Gate;->reelsTab()Z\n\n    move-result v1\n\n"
                             f"    if-nez v1, :igsinreels_keep_{t}\n\n" if t == "CLIPS" else "")
                            + f"    sget-object v1, {self.igtab}->{self.tabs[t]}:{self.igtab}\n\n"
                            "    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z\n\n"
                            + (f"    :igsinreels_keep_{t}\n\n" if t == "CLIPS" else "")
                            for t in REMOVED_TABS)
                        + "    return-object v0\n",
                    )
                    assert nb != body, f"patron de lista no encontrado en {cls}"
                    new = new.replace(m.group(0), m.group(0).replace(body, nb))
                    done += 1
                # (UserSession) -> IgTab : pestana inicial "Reels" -> Inicio.
                elif header.endswith(f"({USER_SESSION}){self.igtab}") and clips in body:
                    new = new.replace(m.group(0), m.group(0).replace(clips, feed))
                    done += 1
            if new != text:
                print(f"[+] Lista de pestanas parcheada en {cls}")
                self.write(f, new)
        assert done >= 2, f"solo se aplicaron {done} parches de pestanas"


def assemble(work: Path, smali_dirs, touched) -> dict[str, Path]:
    out = {}
    for name in sorted(touched):
        dst = work / "out_dex" / name
        dst.parent.mkdir(parents=True, exist_ok=True)
        print(f"[*] Ensamblando {name}")
        run("java", "-Xmx4g", "-jar", SMALI, "a", "-j", "8", "--api", "28", smali_dirs / name, "-o", dst)
        if not dst.exists():
            sys.exit(f"[-] smali no pudo ensamblar {name}")
        out[name] = dst
    return out


def rebuild_base(src: Path, dst: Path, new_dex: dict[str, Path]):
    with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst, "w") as zout:
        for info in zin.infolist():
            if info.filename.startswith("META-INF/") and info.filename.split("/")[-1].upper().endswith(
                (".SF", ".RSA", ".EC", ".DSA", "MANIFEST.MF")
            ):
                continue
            if info.filename in new_dex:
                zout.write(new_dex[info.filename], info.filename, zipfile.ZIP_DEFLATED)
            else:
                zout.writestr(info, zin.read(info.filename))


def merge(apk_dir: Path, dst: Path):
    run("java", "-Xmx4g", "-jar", MERGER, "m", "-i", apk_dir, "-o", dst, "-f")


def sign(apk: Path):
    args = ["java", "-jar", SIGNER, "-a", apk, "--overwrite", "--allowResign"]
    if KEYSTORE.exists():
        args += ["--ks", KEYSTORE, "--ksAlias", os.environ.get("KS_ALIAS", "igsinreels"),
                 "--ksPass", os.environ["KS_PASS"], "--ksKeyPass", os.environ["KS_PASS"]]
    run(*args)


def main():
    if len(sys.argv) != 3:
        sys.exit(__doc__)
    src, out = Path(sys.argv[1]).resolve(), Path(sys.argv[2]).resolve()
    work = out / ".work"
    out.mkdir(parents=True, exist_ok=True)

    smali_dirs = disassemble(src / "base.apk", work)
    p = Patcher(smali_dirs, work)
    p.locate_igtab()
    p.patch_tab_list()
    p.locate_product_type()
    p.locate_clips_fragments()
    p.locate_sections()
    p.locate_viewholder()
    p.locate_users()
    p.add_helper()
    p.patch_feed()
    p.patch_clips_factory()
    p.patch_list_binding()
    p.patch_message_content()
    p.patch_fragment_lifecycle()
    p.patch_contextual_feed()
    p.patch_settings()
    p.patch_clips_filter()

    new_dex = assemble(work, p.mod, p.touched)
    parts = work / "parts"
    shutil.rmtree(parts, ignore_errors=True)
    parts.mkdir()
    rebuild_base(src / "base.apk", parts / "base.apk", new_dex)
    for split in src.glob("split_*.apk"):
        shutil.copy(split, parts / split.name)

    # Restos de builds anteriores (base.apk + split_*.apk sueltos)
    for old in [*out.glob("*.apk"), *out.glob("*.apk.idsig")]:
        old.unlink()
    apk = out / f"instagram-noreel-{out.name}.apk"
    print(f"[*] Fusionando {len(list(parts.glob('*.apk')))} APKs en {apk.name}")
    merge(parts, apk)
    sign(apk)
    shutil.rmtree(parts)
    print(f"[+] Listo: {apk}\n    adb install -r {apk}")


if __name__ == "__main__":
    main()

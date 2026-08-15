package com.igsinreels;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.LinearGradient;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;

import com.instagram.feed.media.Media;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Decide que reels se pueden ver y donde. patch.py engancha:
 * <ul>
 * <li>{@link #bound}: cada celda de una lista/cuadricula al enlazarse con su modelo.
 *     Si es un reel no permitido se tapa con un aviso y no responde a toques.</li>
 * <li>{@link #viewerAllowed}: al abrir el visor de reels; si no, BlockedFragment.</li>
 * <li>{@link #resumed}: el visor permitido muestra solo ese reel; deslizar = STOP.</li>
 * <li>{@link #created} / {@link #filterFeed}: la lista de publicaciones (ContextualFeed)
 *     no incluye reels, salvo el guardado que abriste si "guardados" esta permitido.</li>
 * </ul>
 */
public final class Gate {
    private static final String TAG = "IGSR";

    // Clases ofuscadas de cada seccion, separadas por comas (las rellena patch.py).
    private static String SAVED_CLASSES = "__SAVED_CLASSES__";
    private static String REPOST_CLASSES = "__REPOST_CLASSES__";
    private static String DM_CLASSES = "__DM_CLASSES__";
    private static String EXPLORE_CLASSES = "__EXPLORE_CLASSES__";
    private static String SELF_CLASSES = "__SELF_CLASSES__";
    private static String HOME_CLASSES = "__HOME_CLASSES__";
    // Metodos ofuscados (los rellena patch.py): autor del Media y relacion con el.
    private static String MEDIA_AUTHOR = "__MEDIA_AUTHOR__";
    private static String FOLLOW_STATUS = "__FOLLOW_STATUS__";
    private static String FOLLOWED_BY = "__FOLLOWED_BY__";
    private static String FOLLOWS_ME = "__FOLLOWS_ME__";
    private static String MEDIA_INJECTED = "__MEDIA_INJECTED__";
    private static String MEDIA_AI = "__MEDIA_AI__";
    private static String MEDIA_CAROUSEL = "__MEDIA_CAROUSEL__";
    private static final String USER_PROFILE = "com.instagram.profile.fragment.UserDetailFragment";

    /** Lupa y busqueda: cualquier publicacion se abre como reel, asi que se tapan todas. */
    static final String EXPLORE = "explore";

    private static final String CONTEXTUAL_FEED = "instagram.features.feed.contextualfeed.ContextualFeedFragment";
    private static final String ARG_FEED_MODE = "ContextualFeedFragment.ARGUMENT_CONTEXTUAL_FEED_MODE";
    private static final Pattern VIEWER_SOURCE = Pattern.compile("clipsViewerSource=([A-Za-z_]+)");
    private static final Pattern MEDIA_ID = Pattern.compile("\\d{6,}_\\d+");
    private static final Pattern EXPLORE_SOURCE = Pattern.compile("(?i)EXPLORE|SEARCH|SERP|KEYWORD|HASHTAG");

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static String section(String className) {
        if (className == null) return null;
        String c = "," + className + ",";
        if (("," + SAVED_CLASSES + ",").contains(c)) return Settings.SAVED;
        if (("," + REPOST_CLASSES + ",").contains(c)) return Settings.REPOSTS;
        if (("," + DM_CLASSES + ",").contains(c)) return Settings.DM;
        if (("," + EXPLORE_CLASSES + ",").contains(c)) return EXPLORE;
        return null;
    }

    // ---------------------------------------------------------------- Media

    static boolean isReel(Object media) {
        try {
            return media != null && Blocker.isClips(media);
        } catch (Throwable t) {
            return false;
        }
    }

    private static final Map<Class<?>, List<Field>> FIELDS = new HashMap<>();

    /**
     * Busca el Media de una celda: el propio modelo o un campo (hasta 3 niveles, tambien
     * dentro de listas). Si hay varios Media distintos (una fila con varias publicaciones)
     * no se devuelve ninguno, para no tapar la fila entera.
     */
    static Object findMedia(Object model) {
        return findMedia(model, 3);
    }

    static Object findMedia(Object model, int depth) {
        if (model == null) return null;
        if (model instanceof Media) return model;
        Object[] found = new Object[1];
        if (!search(model, depth, found, new java.util.IdentityHashMap<Object, Boolean>())) return null;
        return found[0];
    }

    /** false si se encontro mas de un Media distinto. */
    private static int MAX_VISITED = 400;

    private static boolean search(Object obj, int depth, Object[] found, Map<Object, Boolean> seen) {
        if (obj == null || seen.size() > MAX_VISITED || seen.put(obj, Boolean.TRUE) != null) return true;
        if (obj instanceof Media) {
            if (found[0] != null && found[0] != obj) return false;
            found[0] = obj;
            return true;
        }
        if (depth <= 0) return true;
        if (obj instanceof List) {
            List<?> l = (List<?>) obj;
            for (int i = 0; i < l.size() && i < 4; i++) {
                if (!search(l.get(i), depth - 1, found, seen)) return false;
            }
            return true;
        }
        Class<?> c = obj.getClass();
        String n = c.getName();
        // Colecciones de guardados: su portada no es la celda.
        if (c.isArray() || n.startsWith("java.") || n.startsWith("android.") || n.startsWith("kotlin.")
                || n.contains("Collection") || n.contains("Session") || obj instanceof View || obj instanceof Context
                || obj instanceof Fragment) return true;
        for (Field f : fields(c)) {
            Class<?> t = f.getType();
            if (t.isPrimitive() || t == String.class) continue;
            Object v;
            try {
                v = f.get(obj);
            } catch (Throwable e) {
                continue;
            }
            if (!search(v, depth - 1, found, seen)) return false;
        }
        return true;
    }

    private static List<Field> fields(Class<?> cls) {
        List<Field> cached = FIELDS.get(cls);
        if (cached != null) return cached;
        List<Field> out = new ArrayList<>();
        Class<?> c = cls;
        for (; c != null && c != Object.class; c = c.getSuperclass()) {
            for (Field f : c.getDeclaredFields()) {
                if (Modifier.isStatic(f.getModifiers())) continue;
                try {
                    f.setAccessible(true);
                } catch (Throwable t) {
                    continue;
                }
                out.add(f);
            }
        }
        FIELDS.put(cls, out);
        return out;
    }

    private static Field[] idPath;

    /** Id del media ("<pk>_<usuario>"): el primer String con esa forma (hasta 2 niveles). */
    static String mediaId(Object media) {
        if (media == null) return null;
        try {
            if (idPath == null) idPath = searchId(media, 2);
            if (idPath == null) return null;
            Object cur = media;
            for (Field f : idPath) {
                if (cur == null) return null;
                cur = f.get(cur);
            }
            return cur instanceof String ? (String) cur : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static Field[] searchId(Object obj, int depth) throws IllegalAccessException {
        for (Field f : fields(obj.getClass())) {
            if (f.getType() == String.class) {
                Object v = f.get(obj);
                if (v != null && MEDIA_ID.matcher((String) v).matches()) return new Field[] {f};
            }
        }
        if (depth <= 1) return null;
        for (Field f : fields(obj.getClass())) {
            Class<?> t = f.getType();
            if (t.isPrimitive() || t.isArray() || t.getName().startsWith("java.")) continue;
            Object v = f.get(obj);
            if (v == null) continue;
            Field[] sub = searchId(v, depth - 1);
            if (sub != null) return new Field[] {f, sub[0]};
        }
        return null;
    }

    // ------------------------------------------------------------ Contexto

    private static int fragmentTagId;

    /** Fragment al que pertenece una vista (androidx guarda el fragment en su vista raiz). */
    static Fragment fragmentOf(View v) {
        if (fragmentTagId == 0) {
            fragmentTagId = v.getResources().getIdentifier("fragment_container_view_tag", "id",
                    v.getContext().getPackageName());
            if (fragmentTagId == 0) fragmentTagId = -1;
        }
        if (fragmentTagId == -1) return null;
        for (Object cur = v; cur instanceof View; cur = ((View) cur).getParent()) {
            Object tag = ((View) cur).getTag(fragmentTagId);
            if (tag instanceof Fragment) return (Fragment) tag;
        }
        return null;
    }

    /** Seccion (MD, guardados, reposts) a la que pertenece el fragment o alguno de sus padres. */
    /** Anuncios abiertos desde el feed (FEED_ADS_..., FEED_MULTI_ADS, ..._SEED_AD...). */
    static boolean isFeedAdSource(String s) {
        return (s.startsWith("FEED_") || s.startsWith("NEWSFEED")) && (s.contains("ADS") || s.endsWith("_AD") || s.contains("_AD_"));
    }

    /** Visor abierto desde un feed de inicio: un solo reel, segun el cuadro de ese feed. */
    static final String HOME_FEED = "home_feed";

    /** Paginas de un modo de la pestana Reels bloqueado del todo: sin scroll. */
    private static final WeakHashMap<View, Boolean> LOCKED_PAGES = new WeakHashMap<>();

    /** Paginas del visor de la pestana Reels -> tapada. */
    private static final WeakHashMap<View, Boolean> TAB_PAGES = new WeakHashMap<>();

    /** Seleccion que aplica dentro de la pestana Reels, o null si no es la pestana. */
    static String reelsTabKey(Fragment f) {
        for (; f != null; f = f.getParentFragment()) {
            if (!Blocker.isBlocked(f.getClass().getName())) continue;
            String src = viewerSource(f.getArguments());
            if (!REELS_TAB.equals(sectionOfSource(src))) continue;
            return tabKeyOfSource(src);
        }
        return null;
    }

    private static final WeakHashMap<View, Boolean> HEADER_VIEWS = new WeakHashMap<>();
    private static long headerScan;

    /**
     * Mantiene visibles los textos del encabezado de la pestana Reels y sus contenedores
     * (Instagram los oculta a veces). Se buscan como mucho cada segundo.
     */
    static void keepHeaderVisible(View root) {
        if (SystemClock.uptimeMillis() - headerScan > 1000) {
            headerScan = SystemClock.uptimeMillis();
            List<android.widget.TextView> tabs = new ArrayList<>();
            for (android.widget.TextView t : headerTabs(root)) {
                // Las pestanas del encabezado: "Para ti"/"Siguiendo" y "Amigos" (texto blanco).
                if ((t.getCurrentTextColor() & 0x00FFFFFF) == 0x00FFFFFF) tabs.add(t);
            }
            if (tabs.size() == 2) {
                HEADER_VIEWS.clear();
                for (android.widget.TextView t : tabs) {
                    for (Object p = t; p instanceof View && p != root; p = ((View) p).getParent()) {
                        HEADER_VIEWS.put((View) p, Boolean.TRUE);
                        if (((View) p).getHeight() > root.getHeight() / 3) break; // hasta el contenedor del encabezado
                    }
                }
            }
        }
        for (View v : new ArrayList<>(HEADER_VIEWS.keySet())) {
            if (v == null || !v.isAttachedToWindow()) continue;
            if (v.getVisibility() != View.VISIBLE) v.setVisibility(View.VISIBLE);
            if (v.getAlpha() < 1f) v.setAlpha(1f);
            if (v.getTranslationY() != 0f) v.setTranslationY(0f);
        }
    }

    /** Textos del encabezado de la pestana Reels (los que tienen estado seleccionado/no). */
    static List<android.widget.TextView> headerTabs(View root) {
        int[] loc = new int[2];
        List<android.widget.TextView> out = new ArrayList<>();
        List<View> stack = new ArrayList<>();
        stack.add(root);
        int maxY = (int) (root.getHeight() * 0.18f);
        while (!stack.isEmpty()) {
            View v = stack.remove(stack.size() - 1);
            // Solo lo que ya se ve: lo que Instagram oculta a proposito (p. ej. "Vistos
            // recientemente") no se toca.
            if (!v.isShown() || v.getAlpha() == 0f) continue;
            v.getLocationOnScreen(loc);
            if (loc[1] > maxY || loc[0] < 0 || loc[0] > root.getWidth()) continue;
            if (v instanceof android.widget.TextView && ((android.widget.TextView) v).getText().length() > 0
                    && ((android.widget.TextView) v).getText().length() < 30) {
                out.add((android.widget.TextView) v);
            }
            if (v instanceof ViewGroup) {
                ViewGroup g = (ViewGroup) v;
                for (int i = 0; i < g.getChildCount(); i++) stack.add(g.getChildAt(i));
            }
        }
        return out;
    }

    /** Texto del modo "Siguiendo" de la pestana Reels en los idiomas soportados. */
    private static final Pattern FOLLOWING_LABEL = Pattern.compile(
            "(?i)(Siguiendo|Following|Seguint|A seguir|Seguindo|Abonnements|Seguiti|Gefolgt|Abonniert)\\s*\\W*");

    /**
     * Modo activo de la pestana Reels segun su encabezado: dos textos ("Para ti" | "Amigos");
     * el activo esta seleccionado. El de la izquierda puede ser "Siguiendo" (desplegable).
     */
    static String tabModeFromHeader(View root, String fallback) {
        int[] loc = new int[2];
        List<android.widget.TextView> tabs = new ArrayList<>();
        List<View> stack = new ArrayList<>();
        stack.add(root);
        int maxY = (int) (root.getHeight() * 0.18f);
        while (!stack.isEmpty()) {
            View v = stack.remove(stack.size() - 1);
            if (!v.isShown()) continue;
            v.getLocationOnScreen(loc);
            if (loc[1] > maxY || loc[0] < 0 || loc[0] > root.getWidth()) continue;
            if (v instanceof android.widget.TextView && ((android.widget.TextView) v).getText().length() > 0) {
                tabs.add((android.widget.TextView) v);
            }
            if (v instanceof ViewGroup) {
                ViewGroup g = (ViewGroup) v;
                for (int i = 0; i < g.getChildCount(); i++) stack.add(g.getChildAt(i));
            }
        }
        android.widget.TextView selected = null, rightmost = null;
        int rx = Integer.MIN_VALUE;
        for (android.widget.TextView t : tabs) {
            t.getLocationOnScreen(loc);
            if (t.isSelected()) selected = t;
            if (loc[0] > rx) {
                rx = loc[0];
                rightmost = t;
            }
        }
        if (selected == null || tabs.size() < 2) return fallback;
        String mode;
        if (selected == rightmost) mode = Settings.TAB_FRIENDS;
        else if (FOLLOWING_LABEL.matcher(String.valueOf(selected.getText()).trim()).matches()) mode = Settings.TAB_FOLLOWING;
        else mode = Settings.TAB_FOR_YOU; // "Reels", "Para ti"...
        return mode;
    }

    /** Modo de la pestana Reels (para ti / siguiendo / amigos) segun el origen del visor. */
    static String tabKeyOfSource(String src) {
        String u = String.valueOf(src).toUpperCase(java.util.Locale.ROOT);
        if (u.contains("FRIEND")) return Settings.TAB_FRIENDS;
        if (u.contains("FOLLOW")) return Settings.TAB_FOLLOWING;
        return Settings.TAB_FOR_YOU;
    }

    /** STOP de BlockedFragment: en la pestana Reels sin nada marcado es permanente. */
    public static boolean autoClose(Bundle args) {
        return !REELS_TAB.equals(sectionOfSource(viewerSource(args)));
    }

    private static final WeakHashMap<ViewTreeObserver, Boolean> AUDIO_WATCHED = new WeakHashMap<>();

    private static void watchTabAudio(final View item) {
        final View root = item.getRootView();
        ViewTreeObserver vto = root.getViewTreeObserver();
        if (AUDIO_WATCHED.containsKey(vto)) return;
        AUDIO_WATCHED.put(vto, Boolean.TRUE);
        vto.addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() {
            @Override
            public void onScrollChanged() {
                checkTabAudio(root);
                trackScrollDirection();
                // Al quedarse quieto el visor: si la pagina actual esta bloqueada, se salta.
                MAIN.removeCallbacks(skipCheck);
                MAIN.post(skipCheck); // sin espera: salta en cuanto la pagina bloqueada ocupa la pantalla
            }
        });
        MAIN.postDelayed(skipCheck, 600);
        // Encabezado de la pestana Reels ("Para ti" | "Amigos") siempre visible.
        vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                if (!TAB_PAGES.isEmpty()) keepHeaderVisible(root);
                return true;
            }
        });
        MAIN.postDelayed(new Runnable() {
            @Override
            public void run() {
                checkTabAudio(root);
            }
        }, 500);
    }



    // ------------------------------- Pestana Reels: saltar los reels bloqueados

    /** Reels bloqueados seguidos que se saltan antes de bloquear el modo un tiempo. */
    private static final int MAX_SKIPS = 10;
    private static int scrollDir = 1, skipsInARow;
    /** Modo de la pestana Reels cerrado tras MAX_SKIPS no permitidos seguidos (STOP sin scroll). */
    private static String exhaustedMode;

    /** true si el modo se ha cerrado por no haber nada permitido (hasta cambiar de modo). */
    private static boolean exhausted(String mode) {
        return mode != null && mode.equals(exhaustedMode);
    }
    private static View dirRef;
    private static int dirRefTop;

    /** Direccion del ultimo desplazamiento del visor (+1 hacia abajo, -1 hacia arriba). */
    private static void trackScrollDirection() {
        View ref = dirRef;
        if (ref == null || !ref.isAttachedToWindow()) {
            for (View v : TAB_PAGES.keySet()) {
                if (v != null && v.isAttachedToWindow()) {
                    dirRef = v;
                    dirRefTop = v.getTop();
                    return;
                }
            }
            return;
        }
        int top = ref.getTop();
        if (top < dirRefTop) scrollDir = 1;
        else if (top > dirRefTop) scrollDir = -1;
        dirRefTop = top;
    }

    /**
     * Pagina actual de la pestana Reels (la que ocupa casi toda la pantalla) bloqueada: se
     * pasa a la siguiente en la direccion en que se iba, como si estuviera filtrada. Tras
     * 10 seguidas se para (y queda el STOP) para no forzar cargas sin fin.
     */
    private static final Runnable skipCheck = new Runnable() {
        @Override
        public void run() {
            Rect r = new Rect();
            for (Map.Entry<View, Boolean> e : new ArrayList<>(TAB_PAGES.entrySet())) {
                View page = e.getKey();
                if (page == null || !page.isShown() || !(page.getParent() instanceof RecyclerView)) continue;
                if (!page.getGlobalVisibleRect(r) || r.height() < page.getHeight() * 0.9f) continue;
                if (!Boolean.TRUE.equals(e.getValue())) {
                    skipsInARow = 0;
                    return;
                }
                if (LOCKED_PAGES.containsKey(page) && !exhausted(lastTabMode)) {
                    // Modo apagado o sin opciones: STOP permanente, no se salta.
                    if (exhaustedMode == null) return;
                }
                if (LOCKED_PAGES.containsKey(page)) return;
                if (exhausted(lastTabMode)) return;
                if (skipsInARow >= MAX_SKIPS) {
                    // 10 no permitidos seguidos: el modo se cierra (STOP sin scroll).
                    exhaustedMode = lastTabMode;
                    for (View v : new ArrayList<>(TAB_PAGES.keySet())) if (v != null) LOCKED_PAGES.put(v, Boolean.TRUE);
                    return;
                }
                skipsInARow++;
                ((View) page.getParent()).scrollBy(0, scrollDir * page.getHeight());
                return;
            }
        }
    };

    private static android.media.AudioFocusRequest focus;

    /**
     * Si la pagina visible de la pestana Reels esta tapada, se pide el foco de audio
     * (el reproductor de Instagram deja de sonar); si no, se devuelve.
     */
    static void checkTabAudio(View any) {
        boolean covered = false;
        Rect r = new Rect();
        List<View> pages = new ArrayList<>();
        for (Map.Entry<View, Boolean> e : new ArrayList<>(TAB_PAGES.entrySet())) {
            if (Boolean.TRUE.equals(e.getValue())) pages.add(e.getKey());
        }
        pages.addAll(FEED_COVERED.keySet()); // filas de video tapadas en los feeds
        for (View v : pages) {
            if (v == null || !v.isShown()) continue;
            if (v.getGlobalVisibleRect(r) && r.height() > v.getHeight() / 2) covered = true;
        }
        final android.media.AudioManager am = (android.media.AudioManager) any.getContext().getSystemService(Context.AUDIO_SERVICE);
        if (am == null) return;
        if (covered && focus == null) {
            focus = new android.media.AudioFocusRequest.Builder(android.media.AudioManager.AUDIOFOCUS_GAIN).build();
            am.requestAudioFocus(focus);
            // Respaldo: el audio multimedia en silencio mientras la pagina tapada este visible.
            am.adjustStreamVolume(android.media.AudioManager.STREAM_MUSIC, android.media.AudioManager.ADJUST_MUTE, 0);
            muted = true;
            final View root = any;
            MAIN.postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!muted) return;
                    checkTabAudio(root); // al salir de la pestana no hay scroll: se revisa solo
                    if (muted) MAIN.postDelayed(this, 700);
                }
            }, 700);
        } else if (!covered && focus != null) {
            am.abandonAudioFocusRequest(focus);
            focus = null;
            if (muted) {
                am.adjustStreamVolume(android.media.AudioManager.STREAM_MUSIC, android.media.AudioManager.ADJUST_UNMUTE, 0);
                muted = false;
            }
        }
    }

    private static boolean muted;

    /** Pestana Reels: siempre se abre; sus reels se filtran segun los selectores. */
    static final String REELS_TAB = "reels_tab";

    /** Seccion especial: dentro de un visor de reels (solo existe si se permitio abrirlo). */
    static final String VIEWER = "viewer";

    static String sectionOf(Fragment f) {
        boolean self = false, other = false;
        for (Fragment p = f; p != null; p = p.getParentFragment()) {
            String n = p.getClass().getName();
            if (Blocker.isBlocked(n)) return VIEWER;
            if (("," + SELF_CLASSES + ",").contains("," + n + ",")) self = true;
            else if (USER_PROFILE.equals(n)) other = true;
        }
        for (; f != null; f = f.getParentFragment()) {
            String s = section(f.getClass().getName());
            // La pestana de reposts esta en tu perfil y en los de otros.
            if (Settings.REPOSTS.equals(s)) return self ? s : Settings.OTHER_REPOSTS;
            if (s != null) return s;
            if (CONTEXTUAL_FEED.equals(f.getClass().getName())) {
                if (isSavedFeed(f.getArguments())) return Settings.SAVED;
                // Publicacion abierta desde un perfil (lista "All posts" de ese perfil).
                String fs = feedSection(f);
                if (fs != null) return fs;
            }
        }
        // Resto de un perfil (pestana Reels, cuadricula).
        // En tu perfil (cuadricula y pestana Reels) manda "Reels que publicas"; la opcion
        // "Yo" de los feeds solo cuenta en los feeds.
        if (self) return Settings.OWN;
        return other ? Settings.OTHER_PROFILES : null;
    }

    private static boolean isSavedFeed(Bundle args) {
        return args != null && "Saved".equalsIgnoreCase(String.valueOf(args.get(ARG_FEED_MODE)));
    }

    // ------------------------------------------------- Celdas de las listas

    private static final WeakHashMap<View, Object> PENDING = new WeakHashMap<>();
    private static final WeakHashMap<View, Boolean> BLOCKED = new WeakHashMap<>();
    private static final WeakHashMap<View, Boolean> HOOKED = new WeakHashMap<>();

    private static View lastBound;

    /**
     * Llamado tras onBindViewHolder de cualquier adaptador. Las celdas del adaptador
     * generico ya se decidieron en {@link #bound}; para el resto se busca el Media
     * dentro del propio ViewHolder (p. ej. un reel enviado en un chat).
     */
    public static void boundHolder(View item, Object holder) {
        if (item == null) return;
        if (item == lastBound) {
            lastBound = null;
            return;
        }
        lastBound = null;
        HOLDER_ONLY.put(item, Boolean.TRUE);
        bound(item, holder, 5);
    }

    private static void dump(Object o, int lvl, int max, StringBuilder sb, Map<Object, Boolean> seen) {
        if (o == null || lvl > max || seen.put(o, Boolean.TRUE) != null || seen.size() > 300) return;
        for (Field f : fields(o.getClass())) {
            Object v;
            try {
                v = f.get(o);
            } catch (Throwable t) {
                continue;
            }
            if (v == null || v instanceof View || v instanceof Context) continue;
            String val = v instanceof String || v instanceof Number || v instanceof Boolean || v instanceof Enum ? String.valueOf(v) : "";
            if (val.length() > 80) val = val.substring(0, 80);
            StringBuilder ind = new StringBuilder();
            for (int i = 0; i < lvl; i++) ind.append("  ");
            sb.append(ind).append(f.getName()).append(':').append(v.getClass().getName()).append(' ').append(val).append('\n');
            String n = v.getClass().getName();
            if (!(v instanceof String) && !n.startsWith("java.lang.") && !n.contains("Session")) dump(v, lvl + 1, max, sb, seen);
        }
    }

    /** Celdas vistas solo desde su ViewHolder: se tapan unicamente dentro de los chats. */
    private static final WeakHashMap<View, Boolean> HOLDER_ONLY = new WeakHashMap<>();

    /** Tipo del adjunto de un mensaje que es un reel (p. ej. "xma_clip", XMA_CLIPS_SHARE). */
    private static final Pattern XMA_REEL = Pattern.compile("(?i)xma_clips?|xma_reels?|CLIPS?_SHARE|REELS?_SHARE");

    /** Contenido de un mensaje de chat (la burbuja) enlazado con su modelo. */
    public static void boundContent(View view, Object model) {
        try {
            if (view == null || model == null) return;
            Settings.init(view.getContext());
            boolean reel = hasReelMarker(model, 2, new java.util.IdentityHashMap<Object, Boolean>());
            if (!reel) {
                Object m = findMedia(model, 3);
                reel = m != null && isReel(m);
            }
            if (!reel) {
                PENDING.remove(view);
                cover(view, false);
                return;
            }
            PENDING.put(view, model);
            REEL.put(view, Boolean.TRUE);
            HOLDER_ONLY.put(view, Boolean.TRUE);
            hook(view);
            evaluate(view);
        } catch (Throwable t) {
            Log.e(TAG, "boundContent", t);
        }
    }

    private static boolean hasReelMarker(Object o, int depth, Map<Object, Boolean> seen) {
        if (o == null || seen.size() > MAX_VISITED || seen.put(o, Boolean.TRUE) != null) return false;
        if (o instanceof String) return XMA_REEL.matcher((String) o).matches();
        if (o instanceof Enum) return XMA_REEL.matcher(((Enum<?>) o).name()).matches();
        if (depth < 0) return false;
        Class<?> c = o.getClass();
        String n = c.getName();
        if (c.isArray() || n.startsWith("java.") || n.startsWith("android.") || n.contains("Session")
                || o instanceof View || o instanceof Context || o instanceof Fragment) return false;
        for (Field f : fields(c)) {
            Class<?> t = f.getType();
            if (t.isPrimitive()) continue;
            try {
                if (hasReelMarker(f.get(o), depth - 1, seen)) return true;
            } catch (Throwable ignored) {
            }
        }
        return false;
    }

    /** true si `item` es una fila de N miniaturas y se ha enlazado cada una con su Media. */
    private static boolean boundRow(View item, Object model, int depth) {
        if (!(item instanceof ViewGroup)) return false;
        ViewGroup row = (ViewGroup) item;
        while (row.getChildCount() == 1 && row.getChildAt(0) instanceof ViewGroup) row = (ViewGroup) row.getChildAt(0);
        List<View> tiles = new ArrayList<>();
        for (int i = 0; i < row.getChildCount(); i++) tiles.add(row.getChildAt(i));
        if (tiles.size() < 2) return false;
        // La lista de la propia fila: la que tiene tantas publicaciones como miniaturas.
        List<?> list = mediaList(model, depth, tiles.size(), new java.util.IdentityHashMap<Object, Boolean>());
        // Sin lista propia: cada miniatura (p. ej. IgMultiImageButton) guarda su Media.
        List<Object> medias = new ArrayList<>();
        int found = 0;
        for (int i = 0; i < tiles.size(); i++) {
            Object m = list != null ? firstMedia(list.get(i), 2) : tileMedia(tiles.get(i));
            if (m != null) found++;
            medias.add(m);
        }
        if (found == 0) return false;
        for (int i = 0; i < tiles.size(); i++) {
            View tile = tiles.get(i);
            Object m = medias.get(i);
            if (m == null) {
                PENDING.remove(tile);
                cover(tile, false);
                continue;
            }
            PENDING.put(tile, m);
            REEL.put(tile, isReel(m));
            HOLDER_ONLY.remove(tile);
            MULTI.remove(tile);
            hook(tile);
            evaluate(tile);
        }
        PENDING.remove(item);
        cover(item, false);
        return true;
    }

    /** Media guardado en los campos de alguna vista de una miniatura, o null. */
    private static Object tileMedia(View tile) {
        List<View> st = new ArrayList<>();
        st.add(tile);
        while (!st.isEmpty()) {
            View v = st.remove(st.size() - 1);
            if (!v.getClass().getName().startsWith("android.")) {
                Object m = findMediaInView(v, 3);
                if (m != null) return m;
            }
            if (v instanceof ViewGroup) for (int i = 0; i < ((ViewGroup) v).getChildCount(); i++) st.add(((ViewGroup) v).getChildAt(i));
        }
        return null;
    }

    /** Lista de `size` elementos (en el modelo, hasta `depth` niveles) que llevan cada uno un Media. */
    private static List<?> mediaList(Object o, int depth, int size, Map<Object, Boolean> seen) {
        if (o == null || depth < 0 || seen.put(o, Boolean.TRUE) != null || seen.size() > MAX_VISITED) return null;
        if (o instanceof List) {
            List<?> l = (List<?>) o;
            if (l.size() == size) {
                boolean all = true;
                for (Object e : l) if (firstMedia(e, 2) == null) all = false;
                if (all) return l;
            }
            return null;
        }
        String n = o.getClass().getName();
        if (o.getClass().isArray() || n.startsWith("java.") || n.startsWith("android.") || o instanceof View
                || o instanceof Context || o instanceof Media) return null;
        for (Field f : fields(o.getClass())) {
            if (f.getType().isPrimitive() || f.getType() == String.class) continue;
            try {
                List<?> r = mediaList(f.get(o), depth - 1, size, seen);
                if (r != null) return r;
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    /** Llamado tras enlazar cada celda de una lista con su modelo. */
    public static void bound(View item, Object model) {
        lastBound = item;
        HOLDER_ONLY.remove(item);
        bound(item, model, 3);
    }

    private static void bound(View item, Object model, int depth) {
        try {
            if (item == null) return;
            Settings.init(item.getContext());
            Object media = findMedia(model, depth);
            MULTI.remove(item);
            // Fila de una cuadricula (p. ej. publicaciones de un perfil): N miniaturas con
            // una lista de N publicaciones en el modelo; cada miniatura se decide sola.
            if (media == null && boundRow(item, model, depth)) return;
            if (media == null) {
                // Varios Media (p. ej. un repost: fachada + original): el primero, pero solo
                // cuenta en las secciones donde se tapa todo (lupa, reposts).
                media = depth <= 3 ? firstMedia(model, 3) : null;
                if (media != null) MULTI.put(item, Boolean.TRUE);
            }
            if (media == null) {
                PENDING.remove(item);
                cover(item, false);
                return;
            }
            PENDING.put(item, media);
            REEL.put(item, isReel(media));
            hook(item);
            evaluate(item);
        } catch (Throwable t) {
            Log.e(TAG, "bound", t);
        }
    }

    private static final WeakHashMap<View, Boolean> REEL = new WeakHashMap<>();
    /** Celdas cuyo modelo tiene varios Media (se usa el primero, solo en lupa/reposts). */
    private static final WeakHashMap<View, Boolean> MULTI = new WeakHashMap<>();

    /** Burbujas de reel en chats -> true si la envie yo. */
    private static final WeakHashMap<View, Boolean> DM_BUBBLES = new WeakHashMap<>();

    /** true si la burbuja esta en el lado de los mensajes propios; null si aun no tiene posicion. */
    static Boolean sentSide(View v) {
        if (v.getWidth() == 0) return null;
        View root = v.getRootView();
        int[] loc = new int[2];
        v.getLocationInWindow(loc);
        float center = loc[0] + v.getWidth() / 2f;
        boolean end = center > root.getWidth() / 2f;
        if (v.getLayoutDirection() == View.LAYOUT_DIRECTION_RTL) end = !end;
        return end;
    }

    private static Boolean lastTapSent;
    private static long lastTapTime;
    private static Object lastTapMedia;
    private static long lastTapMediaTime;

    static boolean isCarousel(Object media) {
        return String.valueOf(Blocker.describe(media)).endsWith("/CAROUSEL");
    }

    /** Primera foto/video de un carrusel, o null. */
    static Object carouselFirst(Object media) {
        try {
            Object l = media.getClass().getMethod(MEDIA_CAROUSEL).invoke(media);
            return l instanceof List && !((List<?>) l).isEmpty() ? ((List<?>) l).get(0) : null;
        } catch (Throwable t) {
            return null;
        }
    }

    /** Contenido generado por IA (etiqueta "Informacion sobre IA", deteccion o sticker). */
    /** Ids de publicaciones vistas como IA en algun momento (Instagram rellena los indicadores tarde). */
    private static final java.util.Set<String> AI_SEEN = java.util.Collections.synchronizedSet(new java.util.HashSet<String>());

    static boolean isAi(Object media) {
        if (!(media instanceof Media)) return false;
        String id = mediaId(media);
        if (id != null && AI_SEEN.contains(id)) return true;
        boolean ai = isAiNow(media);
        if (ai && id != null) AI_SEEN.add(id);
        return ai;
    }

    private static boolean isAiNow(Object media) {
        for (String name : MEDIA_AI.split(",")) {
            try {
                Object v = media.getClass().getMethod(name).invoke(media);
                if (v == null) continue;
                if (v instanceof Boolean) {
                    if ((Boolean) v) return true;
                    continue;
                }
                // Metodo de deteccion: objeto con un texto ("NONE" en casi todas). Puede llegar
                // con otra clase: si no se puede leer el texto, no cuenta.
                String text = detectionText(v);
                if (text != null) {
                    if (!NO_AI.matcher(text).matches()) return true;
                    continue;
                }
                if (name.equals(MEDIA_AI.split(",")[0])) return true; // etiqueta "Informacion sobre IA"
            } catch (Throwable ignored) {
            }
        }
        return false;
    }

    private static final Pattern NO_AI = Pattern.compile("(?i)\\s*(|none|unknown|unset|not_detected|no_detection|null)\\s*");

    /** Texto del metodo de deteccion de IA: campo unico o getter sin parametros que devuelve String. */
    private static String detectionText(Object o) {
        String t = singleString(o);
        if (t != null) return t;
        for (java.lang.reflect.Method m : o.getClass().getMethods()) {
            if (m.getParameterTypes().length != 0 || m.getReturnType() != String.class) continue;
            String n = m.getName();
            if (n.equals("toString") || n.startsWith("get")) continue;
            try {
                Object r = m.invoke(o);
                if (r instanceof String && DETECTION.matcher((String) r).matches()) return (String) r;
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    /** Forma de los valores de deteccion (NONE, C2PA_METADATA, SELF_DISCLOSURE_FLOW...). */
    private static final Pattern DETECTION = Pattern.compile("[A-Z0-9_]{3,40}");

    /** Texto de un objeto con un unico campo String (p. ej. el metodo de deteccion de IA). */
    private static String singleString(Object o) {
        String found = null;
        int strings = 0;
        for (Field f : o.getClass().getDeclaredFields()) { // solo la clase (la base guarda el nombre del tipo)
            if (f.getType() != String.class || Modifier.isStatic(f.getModifiers())) continue;
            f.setAccessible(true);
            strings++;
            try {
                found = (String) f.get(o);
            } catch (Throwable ignored) {
            }
        }
        return strings == 1 ? (found == null ? "" : found) : null;
    }

    /**
     * Reel de IA no permitido por su seleccion ("Reels generados con IA": interruptor y
     * categorias). Manda sobre el resto de ajustes, en cualquier sitio.
     */
    static boolean aiBlocked(Object media) {
        // Carrusel: su miniatura (la primera foto) cuenta como IA si lo es esa foto o si el
        // carrusel lleva la etiqueta; al abrirlo, cada foto se decide sola.
        if (isCarousel(media)) {
            Object first = carouselFirst(media);
            if (!isAi(media) && (first == null || !isAi(first))) return false;
        } else if (!isAi(media)) {
            return false;
        }
        if (!Settings.tabEnabled(Settings.AI)) return true;
        java.util.Set<String> sel = Settings.selection(Settings.AI);
        for (String c : categories(media)) if (sel.contains(c)) return false;
        return true;
    }

    /** Anuncio: ProductType AD o contenido patrocinado insertado ("injected"). */
    static boolean isAd(Object media) {
        if (String.valueOf(Blocker.describe(media)).startsWith("AD/")) return true;
        try {
            return media instanceof Media && media.getClass().getMethod(MEDIA_INJECTED).invoke(media) != null;
        } catch (Throwable t) {
            return false;
        }
    }

    /** Video de una publicacion (16:9 en el feed), no un reel de producto CLIPS ni un anuncio. */
    static boolean isPostVideo(Object media) {
        try {
            return media instanceof Media && isReel(media) && !Blocker.isClipsProduct(media) && !isAd(media);
        } catch (Throwable t) {
            return false;
        }
    }

    /** Tras cambiar los ajustes: se vuelven a decidir las celdas ya enlazadas. */
    static void refresh() {
        for (View v : new ArrayList<>(PENDING.keySet())) {
            if (v != null) evaluate(v);
        }
    }

    private static void evaluate(View item) {
        if (FEED_COVERED.containsKey(item)) {
            cover(item, true); // la decide feedScan
            return;
        }
        Object media = PENDING.get(item);
        if (media == null) {
            cover(item, false);
            return;
        }
        boolean reel = Boolean.TRUE.equals(REEL.get(item));
        boolean holderOnly = HOLDER_ONLY.containsKey(item);
        boolean block;
        String home = null;
        if (item.isAttachedToWindow()) {
            Fragment f = fragmentOf(item);
            String section = sectionOf(f);
            // En la lupa y en las pestanas de reposts todo se abre en el visor de reels: se
            // tapa cualquier publicacion (tambien imagenes), no solo los videos.
            boolean all = EXPLORE.equals(section) || Settings.REPOSTS.equals(section) || Settings.OTHER_REPOSTS.equals(section);
            block = (reel || all) && !Settings.allowed(section) && !VIEWER.equals(section);
            if (MULTI.containsKey(item) && !all) block = false;
            // Pestana Reels: cada reel segun su seleccion (para ti / amigos).
            String tabKey = VIEWER.equals(section) ? reelsTabKey(f) : null;
            if (tabKey != null) tabKey = tabModeFromHeader(item.getRootView(), tabKey);
            if (tabKey != null && !tabKey.equals(lastTabMode)) {
                // Cambio de modo: se vuelve a intentar.
                exhaustedMode = null;
                skipsInARow = 0;
            }
            if (tabKey != null) lastTabMode = tabKey;
            if (tabKey != null && media instanceof Media && (!Settings.tabEnabled(tabKey) || !selectionAllows(media, tabKey))) {
                block = true;
            }
            if (tabKey != null) {
                TAB_PAGES.put(item, block);
                if (!Settings.tabEnabled(tabKey) || Settings.selection(tabKey).isEmpty() || exhausted(tabKey)) {
                    LOCKED_PAGES.put(item, Boolean.TRUE);
                }
                else LOCKED_PAGES.remove(item);
                watchTouches(item);
                watchTabAudio(item);
            }
            // Pantallas que no son ninguna seccion ni un feed de inicio (p. ej. "Quien ha visto
            // tu historia"): no se tapa nada; abrir un reel desde ahi lo decide el visor.
            home = section == null ? homeFeedOf(f) : null;
            if (section == null && home == null) block = false;
            // Reels que el feed (Para ti / Siguiendo) ha dejado pasar segun su seleccion.
            if (block && reel && home != null && media instanceof Media && feedReelAllowed(media, home)) {
                block = false;
            }
            // Tu publicacion recien subida en un feed: la fila de subida no se tapa; el video
            // de la publicacion lo tapa feedScan (sus filas no llevan el Media accesible).
            if (block && home != null && media instanceof Media && categories(media).contains(Settings.CAT_ME)) {
                block = false;
                watchFeed(item);
            }
            // Celdas vistas solo desde su ViewHolder (otros adaptadores) en los feeds de inicio:
            // solo las anchas (publicaciones), no p. ej. los avatares de historias. En las
            // secciones (cuadriculas de perfiles, reposts...) se tapan todas.
            if (holderOnly && home != null && item.getWidth() < item.getRootView().getWidth() / 2) block = false;
            if (Settings.DM.equals(section) && reel) {
                // En un chat: los reels que envias van al lado "final" (derecha en LTR).
                Boolean sent = sentSide(item);
                if (sent != null) DM_BUBBLES.put(item, sent);
                block = sent == null || !Settings.allowed(sent ? Settings.DM_SENT : Settings.DM);
                watchTouches(item);
            }
            // Reels generados con IA no permitidos: bloqueados en cualquier seccion, feed o visor.
            if ((section != null || home != null) && aiBlocked(media)) {
                block = true;
                if (VIEWER.equals(section)) {
                    TAB_PAGES.put(item, true); // silencio y salto
                    watchTabAudio(item);
                }
            }
        } else {
            // Hasta que la celda esta en pantalla no se sabe en que seccion esta:
            // mientras tanto se tapa si es un reel (al adjuntarse se vuelve a decidir).
            block = reel && !holderOnly && !MULTI.containsKey(item);
        }
        if (holderOnly && item.getWidth() == 0) block = false; // se decide al tener tamano
        // Anuncio no permitido en un feed (p. ej. bloque de varios anuncios en carrusel):
        // se quita la fila entera del feed en vez de taparlo.
        if (block && home != null && media instanceof Media && isAd(media)
                && !Settings.selection(home).contains(Settings.CAT_ADS) && collapseFeedRow(item)) {
            cover(item, false);
            return;
        }
        expandFeedRow(item); // fila reciclada para otra publicacion
        cover(item, block);
        if (block) watchTouches(item);
    }

    private static void expandFeedRow(View v) {
        if (COLLAPSED.isEmpty()) return;
        View root = v.getRootView();
        for (Object p = v; p instanceof View; p = ((View) p).getParent()) {
            Object parent = ((View) p).getParent();
            if (parent instanceof RecyclerView && ((View) parent).getHeight() > root.getHeight() * 0.6f) {
                if (!SCAN_COLLAPSED.containsKey(p)) expand((View) p);
                return;
            }
        }
    }

    /** Colapsa la fila del feed (hija de la lista vertical principal) que contiene `v`. */
    private static boolean collapseFeedRow(View v) {
        View root = v.getRootView();
        for (Object p = v; p instanceof View; p = ((View) p).getParent()) {
            Object parent = ((View) p).getParent();
            if (parent instanceof RecyclerView && ((View) parent).getHeight() > root.getHeight() * 0.6f) {
                return true;
            }
        }
        return false;
    }

    private static void hook(final View item) {
        if (HOOKED.containsKey(item)) return;
        HOOKED.put(item, Boolean.TRUE);
        item.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() {
            @Override
            public void onViewAttachedToWindow(View v) {
                evaluate(v);
            }

            @Override
            public void onViewDetachedFromWindow(View v) {
            }
        });
        item.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View v, int l, int t, int r, int b, int ol, int ot, int or, int ob) {
                Drawable d = COVERS.get(v);
                if (d != null) d.setBounds(0, 0, r - l, b - t);
                if (HOLDER_ONLY.containsKey(v) && PENDING.containsKey(v) && (l != ol || r != or || ol == or)) {
                    evaluate(v);
                }
            }
        });
    }

    private static final WeakHashMap<View, Drawable> COVERS = new WeakHashMap<>();

    /** Tapa la celda con el aviso (ViewOverlay: se dibuja encima de todo, tambien del video). */
    private static void cover(View item, boolean on) {
        Drawable d = COVERS.get(item);
        if (on) {
            BLOCKED.put(item, Boolean.TRUE);
            if (d == null) {
                d = new Cover(item.getContext());
                COVERS.put(item, d);
                item.getOverlay().add(d);
            }
            d.setBounds(0, 0, item.getWidth(), item.getHeight());
            item.invalidate();
        } else {
            BLOCKED.remove(item);
            if (d != null) {
                item.getOverlay().remove(d);
                COVERS.remove(item);
                item.invalidate();
            }
        }
    }

    /**
     * Aviso pintado sobre una celda: la misma plantilla que la pantalla STOP (degradado,
     * senal con borde blanco, titulo y mensaje) escalada al tamano de la celda.
     */
    private static final class Cover extends Drawable {
        private final Paint bg = new Paint();
        private final Paint fill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint border = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint stop = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final TextPaint title = new TextPaint(Paint.ANTI_ALIAS_FLAG);
        private final TextPaint msg = new TextPaint(Paint.ANTI_ALIAS_FLAG);
        private final android.graphics.Path path = new android.graphics.Path();
        private final String[] s = BlockScreen.strings();
        private final float density;
        private int lastW = -1, lastH = -1;
        private StaticLayout titleLayout, msgLayout;

        private final Paint pillBg = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint pill = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final int screenH;

        Cover(Context ctx) {
            screenH = ctx.getResources().getDisplayMetrics().heightPixels;
            pill.setColor(Color.BLACK);
            pill.setTextAlign(Paint.Align.CENTER);
            pill.setTypeface(Typeface.DEFAULT_BOLD);
            fill.setColor(0xFFE53935);
            border.setColor(Color.WHITE);
            border.setStyle(Paint.Style.STROKE);
            stop.setColor(Color.WHITE);
            stop.setTextAlign(Paint.Align.CENTER);
            stop.setTypeface(Typeface.create(Typeface.DEFAULT, Typeface.BOLD));
            title.setColor(Color.WHITE);
            title.setTypeface(Typeface.DEFAULT_BOLD);
            msg.setColor(0xB3FFFFFF);
            density = ctx.getResources().getDisplayMetrics().density;
        }

        private StaticLayout layout(String text, TextPaint p, int width) {
            return StaticLayout.Builder.obtain(text, 0, text.length(), p, Math.max(1, width))
                    .setAlignment(Layout.Alignment.ALIGN_CENTER).setMaxLines(3)
                    .setEllipsize(android.text.TextUtils.TruncateAt.END).build();
        }

        @Override
        public void draw(Canvas c) {
            Rect b = getBounds();
            if (b.isEmpty()) return;
            int w = b.width(), h = b.height();
            if (w != lastW || h != lastH) {
                lastW = w;
                lastH = h;
                bg.setShader(new LinearGradient(0, b.top, 0, b.bottom,
                        new int[] {0xFF1B1035, 0xFF0B0B12, 0xFF000000}, null, Shader.TileMode.CLAMP));
                int textW = (int) (w * 0.86f);
                title.setTextSize(Math.max(10 * density, Math.min(w / 11f, 28 * density)));
                msg.setTextSize(Math.max(8 * density, Math.min(w / 17f, 17 * density)));
                titleLayout = layout(s[0], title, textW);
                msgLayout = layout(s[1], msg, textW);
            }
            c.drawRect(b, bg);

            float r = Math.min(Math.min(w, h) * 0.2f, 75 * density);
            float gap = r * 0.35f;
            boolean withTitle = 2 * r + gap + titleLayout.getHeight() < h * 0.9f;
            boolean withMsg = withTitle && 2 * r + 2 * gap + titleLayout.getHeight() + msgLayout.getHeight() < h * 0.9f;
            float total = 2 * r + (withTitle ? gap + titleLayout.getHeight() : 0)
                    + (withMsg ? gap * 0.5f + msgLayout.getHeight() : 0);
            float cx = b.left + w / 2f;
            float top = b.top + (h - total) / 2f;
            float cy = top + r;

            float stroke = r * 0.07f;
            octagon(cx, cy, r - stroke / 2f);
            c.drawPath(path, fill);
            border.setStrokeWidth(stroke);
            octagon(cx, cy, r - stroke * 1.6f);
            c.drawPath(path, border);
            stop.setTextSize(r * 0.52f);
            Paint.FontMetrics fm = stop.getFontMetrics();
            c.drawText("STOP", cx, cy - (fm.ascent + fm.descent) / 2f, stop);

            float y = top + 2 * r + gap;
            if (withTitle) {
                c.save();
                c.translate(cx - titleLayout.getWidth() / 2f, y);
                titleLayout.draw(c);
                c.restore();
                y += titleLayout.getHeight() + gap * 0.5f;
            }
            if (withMsg) {
                c.save();
                c.translate(cx - msgLayout.getWidth() / 2f, y);
                msgLayout.draw(c);
                c.restore();
                y += msgLayout.getHeight();
            }
            // Tapado a pantalla (p. ej. pestana Reels): boton "Volver" como en la pantalla STOP.
            backRect.setEmpty();
            if (withMsg && h > screenH * 0.6f) {
                pill.setTextSize(16 * density);
                float tw = pill.measureText(s[2]);
                float bw = tw + 72 * density, bh = 48 * density;
                float by = y + 40 * density;
                backRect.set(cx - bw / 2f, by, cx + bw / 2f, by + bh);
                pillBg.setColor(Color.WHITE);
                c.drawRoundRect(backRect, bh / 2f, bh / 2f, pillBg);
                Paint.FontMetrics fm2 = pill.getFontMetrics();
                c.drawText(s[2], cx, backRect.centerY() - (fm2.ascent + fm2.descent) / 2f, pill);
            }
        }

        /** Boton "Volver" dibujado (coordenadas de la vista), vacio si no hay. */
        final android.graphics.RectF backRect = new android.graphics.RectF();

        private void octagon(float cx, float cy, float r) {
            path.reset();
            for (int i = 0; i < 8; i++) {
                double a = Math.toRadians(22.5 + 45 * i);
                float x = cx + (float) (r * Math.cos(a));
                float y = cy + (float) (r * Math.sin(a));
                if (i == 0) path.moveTo(x, y); else path.lineTo(x, y);
            }
            path.close();
        }

        @Override
        public void setAlpha(int alpha) {
        }

        @Override
        public void setColorFilter(ColorFilter cf) {
        }

        @Override
        public int getOpacity() {
            return PixelFormat.OPAQUE;
        }
    }

    // ------------------------------------------ Toques sobre celdas tapadas

    private static final WeakHashMap<Window, Boolean> WATCHED = new WeakHashMap<>();

    static Activity activityOf(Context c) {
        while (c instanceof ContextWrapper) {
            if (c instanceof Activity) return (Activity) c;
            c = ((ContextWrapper) c).getBaseContext();
        }
        return null;
    }

    private static void watchTouches(View item) {
        Activity a = activityOf(item.getContext());
        if (a == null) return;
        Window w = a.getWindow();
        if (w == null || WATCHED.containsKey(w)) return;
        Window.Callback cb = w.getCallback();
        if (cb == null) return;
        WATCHED.put(w, Boolean.TRUE);
        w.setCallback(new TouchFilter(cb, a));
    }

    /**
     * Celda tapada que recibiria un toque en (x, y): se baja por el arbol de vistas
     * eligiendo en cada nivel el hijo visible de mas arriba que contiene el punto (como
     * el reparto real de toques), asi una cabecera encima de la cuadricula no cuenta.
     */
    static View blockedAt(View root, float x, float y) {
        return viewAt(root, x, y, BLOCKED);
    }

    /** true si (x, y) cae en el boton "Volver" de algun tapado visible. */
    static boolean coverBackAt(float x, float y) {
        int[] loc = new int[2];
        for (Map.Entry<View, Drawable> e : new ArrayList<>(COVERS.entrySet())) {
            View v = e.getKey();
            if (v == null || !v.isShown() || !(e.getValue() instanceof Cover)) continue;
            android.graphics.RectF b = ((Cover) e.getValue()).backRect;
            if (b.isEmpty()) continue;
            v.getLocationOnScreen(loc);
            if (b.contains(x - loc[0], y - loc[1])) return true;
        }
        return false;
    }

    /** Vista de `set` visible en pantalla cuyo rectangulo contiene (x, y). */
    static View containing(float x, float y, Map<View, ?> set) {
        int[] loc = new int[2];
        for (View v : new ArrayList<>(set.keySet())) {
            if (v == null || !v.isShown()) continue;
            v.getLocationOnScreen(loc);
            if (x >= loc[0] && x < loc[0] + v.getWidth() && y >= loc[1] && y < loc[1] + v.getHeight()) return v;
        }
        return null;
    }

    /** Vista de `set` (o que contiene a una de `set`) que recibiria un toque en (x, y). */
    static View viewAt(View root, float x, float y, Map<View, ?> set) {
        if (set.isEmpty()) return null;
        int[] loc = new int[2];
        View cur = root;
        while (cur != null) {
            if (set.containsKey(cur)) return cur;
            if (!(cur instanceof ViewGroup)) return null;
            ViewGroup g = (ViewGroup) cur;
            // Igual que ViewGroup: de mas arriba a mas abajo (Z y luego orden de dibujo).
            View next = null;
            for (int i = g.getChildCount() - 1; i >= 0; i--) {
                View c = g.getChildAt(i);
                if (c.getVisibility() != View.VISIBLE || c.getAlpha() == 0f) continue;
                if (next != null && c.getZ() <= next.getZ()) continue;
                c.getLocationOnScreen(loc);
                if (x >= loc[0] && x < loc[0] + c.getWidth() * c.getScaleX()
                        && y >= loc[1] && y < loc[1] + c.getHeight() * c.getScaleY()) {
                    next = c;
                }
            }
            cur = next;
        }
        return null;
    }

    /**
     * Envuelve el Window.Callback de la actividad: un toque (o pulsacion larga) que empieza
     * en una celda tapada se cancela; arrastrar sigue funcionando para hacer scroll.
     */
    private static final class TouchFilter implements Window.Callback {
        private final Window.Callback d;
        private final Activity activity;
        private final int slop;
        private boolean tracking, moved, cancelled;
        private SingleReel viewer;
        private boolean backHit;
        private boolean lockedSwipe, lockedCancelled;
        private float lx, ly;
        private boolean viewerFired;
        private float vx, vy;
        private float downX, downY;
        private final Runnable longPress = new Runnable() {
            @Override
            public void run() {
                // Pulsacion larga sobre un reel tapado: Instagram abriria una vista previa
                // que lo reproduce; se cancela.
                if (tracking && !moved && !cancelled) cancelGesture();
            }
        };

        TouchFilter(Window.Callback d, Activity a) {
            this.d = d;
            this.activity = a;
            this.slop = ViewConfiguration.get(a).getScaledTouchSlop();
        }

        private void cancelGesture() {
            cancelled = true;
            long now = SystemClock.uptimeMillis();
            MotionEvent c = MotionEvent.obtain(now, now, MotionEvent.ACTION_CANCEL, downX, downY, 0);
            try {
                d.dispatchTouchEvent(c);
            } finally {
                c.recycle();
            }
        }

        @Override
        public boolean dispatchTouchEvent(MotionEvent ev) {
            int action = ev.getActionMasked();
            // Visor de un reel permitido: cualquier deslizamiento vertical = STOP.
            // Toque en el "Volver" dibujado sobre un reel tapado: atras.
            if (action == MotionEvent.ACTION_DOWN) {
                backHit = coverBackAt(ev.getRawX(), ev.getRawY());
                if (backHit) return true;
            } else if (backHit) {
                if (action == MotionEvent.ACTION_UP) {
                    backHit = false;
                    try {
                        activity.onBackPressed();
                    } catch (Throwable t) {
                        Log.e(TAG, "back", t);
                    }
                } else if (action == MotionEvent.ACTION_CANCEL) {
                    backHit = false;
                }
                return true;
            }
            // Modo de la pestana Reels bloqueado: no se puede deslizar (el encabezado si funciona).
            if (action == MotionEvent.ACTION_DOWN) {
                // Por posicion: encima de la pagina hay capas de Instagram (botones, texto)
                // que no estan dentro de ella.
                lockedSwipe = !LOCKED_PAGES.isEmpty() && containing(ev.getRawX(), ev.getRawY(), LOCKED_PAGES) != null;
                lx = ev.getRawX();
                ly = ev.getRawY();
                lockedCancelled = false;
            } else if (lockedSwipe) {
                if (lockedCancelled) return true;
                if (action == MotionEvent.ACTION_MOVE && Math.abs(ev.getRawY() - ly) > slop
                        && Math.abs(ev.getRawY() - ly) > Math.abs(ev.getRawX() - lx)) {
                    lockedCancelled = true;
                    downX = lx;
                    downY = ly;
                    cancelGesture();
                    return true;
                }
            }
            if (action == MotionEvent.ACTION_DOWN) {
                // Por posicion (las capas de Instagram encima del visor no estan dentro de el).
                viewer = VIEWERS.isEmpty() ? null : VIEWERS.get(containing(ev.getRawX(), ev.getRawY(), VIEWERS));
                viewerFired = false;
                vx = ev.getRawX();
                vy = ev.getRawY();
            } else if (viewer != null) {
                if (viewerFired) return true;
                float dx = Math.abs(ev.getRawX() - vx), dy = Math.abs(ev.getRawY() - vy);
                if (action == MotionEvent.ACTION_MOVE && dy > 2 * slop && dy > dx) {
                    viewerFired = true;
                    downX = vx;
                    downY = vy;
                    cancelGesture();
                    viewer.fire();
                    return true;
                }
            }
            if (action == MotionEvent.ACTION_DOWN) {
                MAIN.removeCallbacks(longPress);
                tracking = false;
                moved = false;
                cancelled = false;
                View root = activity.getWindow().getDecorView();
                View cell = viewAt(root, ev.getRawX(), ev.getRawY(), PENDING);
                if (cell != null) {
                    lastTapMedia = PENDING.get(cell);
                    lastTapMediaTime = SystemClock.uptimeMillis();
                }
                View bubble = containing(ev.getRawX(), ev.getRawY(), DM_BUBBLES);
                if (bubble != null) {
                    lastTapSent = DM_BUBBLES.get(bubble);
                    lastTapTime = SystemClock.uptimeMillis();
                }
                if (blockedAt(root, ev.getRawX(), ev.getRawY()) != null) {
                    tracking = true;
                    downX = ev.getRawX();
                    downY = ev.getRawY();
                    MAIN.postDelayed(longPress, Math.max(100, ViewConfiguration.getLongPressTimeout() - 100));
                }
            } else if (tracking) {
                if (cancelled) {
                    if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) tracking = false;
                    return true;
                }
                if (!moved && (Math.abs(ev.getRawX() - downX) > slop || Math.abs(ev.getRawY() - downY) > slop)) {
                    moved = true;
                    MAIN.removeCallbacks(longPress);
                }
                if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                    tracking = false;
                    MAIN.removeCallbacks(longPress);
                }
            }
            return d.dispatchTouchEvent(ev);
        }

        @Override
        public boolean dispatchKeyEvent(KeyEvent e) {
            return d.dispatchKeyEvent(e);
        }

        @Override
        public boolean dispatchKeyShortcutEvent(KeyEvent e) {
            return d.dispatchKeyShortcutEvent(e);
        }

        @Override
        public boolean dispatchTrackballEvent(MotionEvent e) {
            return d.dispatchTrackballEvent(e);
        }

        @Override
        public boolean dispatchGenericMotionEvent(MotionEvent e) {
            return d.dispatchGenericMotionEvent(e);
        }

        @Override
        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent e) {
            return d.dispatchPopulateAccessibilityEvent(e);
        }

        @Override
        public View onCreatePanelView(int featureId) {
            return d.onCreatePanelView(featureId);
        }

        @Override
        public boolean onCreatePanelMenu(int featureId, Menu menu) {
            return d.onCreatePanelMenu(featureId, menu);
        }

        @Override
        public boolean onPreparePanel(int featureId, View view, Menu menu) {
            return d.onPreparePanel(featureId, view, menu);
        }

        @Override
        public boolean onMenuOpened(int featureId, Menu menu) {
            return d.onMenuOpened(featureId, menu);
        }

        @Override
        public boolean onMenuItemSelected(int featureId, MenuItem item) {
            return d.onMenuItemSelected(featureId, item);
        }

        @Override
        public void onWindowAttributesChanged(WindowManager.LayoutParams attrs) {
            d.onWindowAttributesChanged(attrs);
        }

        @Override
        public void onContentChanged() {
            d.onContentChanged();
        }

        @Override
        public void onWindowFocusChanged(boolean hasFocus) {
            d.onWindowFocusChanged(hasFocus);
        }

        @Override
        public void onAttachedToWindow() {
            d.onAttachedToWindow();
        }

        @Override
        public void onDetachedFromWindow() {
            d.onDetachedFromWindow();
        }

        @Override
        public void onPanelClosed(int featureId, Menu menu) {
            d.onPanelClosed(featureId, menu);
        }

        @Override
        public boolean onSearchRequested() {
            return d.onSearchRequested();
        }

        @Override
        public boolean onSearchRequested(SearchEvent e) {
            return d.onSearchRequested(e);
        }

        @Override
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return d.onWindowStartingActionMode(callback);
        }

        @Override
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int type) {
            return d.onWindowStartingActionMode(callback, type);
        }

        @Override
        public void onActionModeStarted(ActionMode mode) {
            d.onActionModeStarted(mode);
        }

        @Override
        public void onActionModeFinished(ActionMode mode) {
            d.onActionModeFinished(mode);
        }

        @Override
        public void onProvideKeyboardShortcuts(List<android.view.KeyboardShortcutGroup> data, Menu menu, int deviceId) {
            d.onProvideKeyboardShortcuts(data, menu, deviceId);
        }

        @Override
        public void onPointerCaptureChanged(boolean hasCapture) {
            d.onPointerCaptureChanged(hasCapture);
        }
    }

    // ------------------------------------------------------ Visor de reels

    /** Origen del visor ("SAVE_COLLECTION", "DIRECT_...", ...) segun su ClipsViewerConfig. */
    static String viewerSource(Bundle args) {
        if (args == null) return null;
        try {
            for (String k : args.keySet()) {
                Object v = args.get(k);
                if (v == null) continue;
                String s = String.valueOf(v);
                if (!s.startsWith("ClipsViewerConfig(")) continue;
                Matcher m = VIEWER_SOURCE.matcher(s);
                if (m.find()) return m.group(1);
            }
        } catch (Throwable t) {
            Log.e(TAG, "viewerSource", t);
        }
        return null;
    }

    static String sectionOfSource(String src) {
        if (src == null) return null;
        String s = src.toUpperCase(java.util.Locale.ROOT);
        // Visor abierto desde un feed de inicio (Para ti / Siguiendo / Favoritos).
        if (s.startsWith("FEED_TIMELINE") || s.startsWith("REEL_FEED_TIMELINE") || s.contains("NEWSFEED")
                || isFeedAdSource(s)) {
            return HOME_FEED;
        }
        // Pestana Reels (claqueta, siempre activa): se filtra reel a reel.
        if (s.startsWith("CLIPS_TAB") || s.contains("FRIENDS_LANE") || s.contains("FRIEND_LANE")) return REELS_TAB;
        if (EXPLORE_SOURCE.matcher(s).find()) return EXPLORE;
        if (s.contains("DIRECT")) return Settings.DM;
        if (s.contains("SAVE")) return Settings.SAVED;
        if (s.contains("SELF_REPOSTS")) return Settings.REPOSTS;
        if (s.contains("REPOSTS_GRID")) return Settings.OTHER_REPOSTS;
        if (s.contains("SELF_PROFILE")) return Settings.OWN;
        if (s.contains("PROFILE")) return Settings.OTHER_PROFILES;
        return null;
    }

    /** true si el visor de reels que se va a abrir con estos argumentos esta permitido. */
    public static boolean viewerAllowed(Bundle args) {
        String src = viewerSource(args);
        String section = sectionOfSource(src);
        boolean ok;
        if (Settings.DM.equals(section)) {
            // Reel abierto desde un chat: segun la burbuja que se acaba de tocar.
            Boolean sent = SystemClock.uptimeMillis() - lastTapTime < 10000 ? lastTapSent : null;
            ok = sent == null ? Settings.allowed(Settings.DM) && Settings.allowed(Settings.DM_SENT)
                    : Settings.allowed(sent ? Settings.DM_SENT : Settings.DM);
        } else if (HOME_FEED.equals(section)) {
            String key = String.valueOf(src).contains("FOLLOWING") ? Settings.FEED_FOLLOWING : Settings.FEED_FOR_YOU;
            Object m = SystemClock.uptimeMillis() - lastTapMediaTime < 10000 ? lastTapMedia : null;
            if (m != null) ok = selectionAllows(m, key);
            else if (isFeedAdSource(String.valueOf(src))) ok = Settings.selection(key).contains(Settings.CAT_ADS);
            else ok = !Settings.selection(key).isEmpty();
        } else if (REELS_TAB.equals(section)) {
            String key = tabKeyOfSource(src);
            ok = Settings.tabEnabled(key) && !Settings.selection(key).isEmpty();
        } else {
            ok = Settings.allowed(section);
        }
        if (ok && SystemClock.uptimeMillis() - lastTapMediaTime < 10000 && aiBlocked(lastTapMedia)) ok = false;
        return ok;
    }

    /** Pestana Reels (claqueta): si "Pestana Reels" o "Reels con interaccion de amigos". */
    public static boolean reelsTab() {
        boolean ok = true; // la claqueta siempre esta; su contenido se filtra

        return ok;
    }

    /** Factoria por nombre (ModalActivity): true si hay que mostrar BlockedFragment. */
    public static boolean blockNamed(String name, Bundle args) {
        return Blocker.isBlocked(name) && !viewerAllowed(args);
    }

    private static final WeakHashMap<View, Boolean> GUARDED = new WeakHashMap<>();

    /** Visores permitidos abiertos (vista raiz -> vigilante). */
    private static final WeakHashMap<View, SingleReel> VIEWERS = new WeakHashMap<>();

    /** Fragment reanudado: si es el visor de reels (permitido), solo se ve el reel abierto. */
    public static void resumed(Fragment f) {
        try {
            if (f == null) return;
            trackFeed(f);
            if (!Blocker.isBlocked(f.getClass().getName())) return;
            // Los reels de MD y los abiertos desde el feed se ven de uno en uno; guardados, reposts y los tuyos
            // se pueden recorrer (el visor solo contiene esos).
            String sec = sectionOfSource(viewerSource(f.getArguments()));
            if (REELS_TAB.equals(sec)) {
                // Al volver a entrar en la pestana Reels se vuelve a intentar.
                exhaustedMode = null;
                skipsInARow = 0;
            }
            if (!Settings.DM.equals(sec) && !HOME_FEED.equals(sec)) return;
            View v = f.getView();
            if (v == null || VIEWERS.containsKey(v)) return;
            GUARDED.put(v, Boolean.TRUE);
            new SingleReel(f, v).start();
        } catch (Throwable t) {
            Log.e(TAG, "resumed", t);
        }
    }

    /**
     * Vigila el "pager" vertical del visor (la RecyclerView mas grande). Cuando el usuario
     * lo desplaza hacia otro reel se muestra STOP y se cierra el visor.
     */
    private static final class SingleReel implements ViewTreeObserver.OnScrollChangedListener {
        private final Fragment fragment;
        private final View root;
        private ViewGroup pager;
        private View anchor;
        private int anchorTop;
        private boolean fired;

        SingleReel(Fragment f, View root) {
            this.fragment = f;
            this.root = root;
        }

        void start() {
            root.getViewTreeObserver().addOnScrollChangedListener(this);
            VIEWERS.put(root, this);
            watchTouches(root);
            // El visor se coloca solo en el reel inicial al abrir: se espera a que se asiente.
            for (final long d : new long[] {150, 500, 1000}) {
                MAIN.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        if (!fired) settle(d >= 1000);
                    }
                }, d);
            }
        }

        private void settle(boolean withAnchor) {
            ViewGroup found = findPager(root);
            if (found == null) return;
            pager = found;
            // El paginador solo recibe el gesto cuando lo intercepta para arrastrar: ahi
            // se consume (no se mueve) y se cierra con STOP. Funciona en cualquier ventana.
            pager.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent e) {
                    if (e.getActionMasked() == MotionEvent.ACTION_MOVE && !fired) {
                        fire();
                    }
                    return true;
                }
            });
            // La referencia de posicion, cuando el visor ya se ha colocado en el reel inicial.
            if (!withAnchor) return;
            anchor = null;
            int best = Integer.MAX_VALUE;
            for (int i = 0; i < pager.getChildCount(); i++) {
                View c = pager.getChildAt(i);
                int d = Math.abs(c.getTop());
                if (d < best) {
                    best = d;
                    anchor = c;
                }
            }
            if (anchor != null) anchorTop = anchor.getTop();
        }

        private ViewGroup findPager(View v) {
            ViewGroup best = null;
            int minH = (int) (root.getHeight() * 0.6f);
            List<View> stack = new ArrayList<>();
            stack.add(v);
            while (!stack.isEmpty()) {
                View cur = stack.remove(stack.size() - 1);
                if (cur instanceof RecyclerView && cur.isShown() && cur.getHeight() >= minH) {
                    if (best == null || cur.getHeight() * cur.getWidth() > best.getHeight() * best.getWidth()) {
                        best = (ViewGroup) cur;
                    }
                }
                if (cur instanceof ViewGroup) {
                    ViewGroup g = (ViewGroup) cur;
                    for (int i = 0; i < g.getChildCount(); i++) stack.add(g.getChildAt(i));
                }
            }
            return best;
        }

        @Override
        public void onScrollChanged() {
            if (fired || pager == null || anchor == null) return;
            if (!fragment.isResumed()) return;
            boolean gone = anchor.getParent() != pager;
            int dy = gone ? Integer.MAX_VALUE : Math.abs(anchor.getTop() - anchorTop);
            if (gone || dy > pager.getHeight() / 5) {
                fire();
            }
        }

        /** Cierra el visor (deja de sonar) y muestra STOP encima. */
        void fire() {
            if (fired) return;
            fired = true;
            root.getViewTreeObserver().removeOnScrollChangedListener(this);
            VIEWERS.remove(root);
            root.setVisibility(View.INVISIBLE);
            Activity a = fragment.getActivity();
            if (a == null || a.isFinishing()) return;
            try {
                a.onBackPressed();
            } catch (Throwable t) {
                Log.e(TAG, "back", t);
            }
            BlockScreen.overlay(a);
        }
    }

    /**
     * Primer Media de un elemento del visor de clips (recorrido en anchura: el Media del
     * propio reel esta mas arriba que los relacionados).
     */
    static Object firstMedia(Object o, int depth) {
        if (o instanceof Media) return o;
        List<Object> level = new ArrayList<>();
        level.add(o);
        Map<Object, Boolean> seen = new java.util.IdentityHashMap<>();
        for (int d = 0; d < depth && !level.isEmpty(); d++) {
            List<Object> next = new ArrayList<>();
            for (Object cur : level) {
                if (cur == null || seen.put(cur, Boolean.TRUE) != null) continue;
                String n = cur.getClass().getName();
                if (n.startsWith("java.") || n.startsWith("android.") || cur instanceof View || cur instanceof Context) continue;
                for (Field f : fields(cur.getClass())) {
                    if (f.getType().isPrimitive()) continue;
                    Object v;
                    try {
                        v = f.get(cur);
                    } catch (Throwable t) {
                        continue;
                    }
                    if (v instanceof Media) return v;
                    if (v != null) next.add(v);
                }
            }
            level = next;
        }
        return null;
    }

    /** Ids (String) de los reels quitados en la ultima carga: se quitan tambien de su lista de ids. */
    private static final java.util.Set<String> removedIds = new java.util.HashSet<>();

    private static void rememberRemovedIds(Object item, Object media) {
        String id = mediaId(media);
        if (id != null) {
            removedIds.add(id);
            removedIds.add(id.substring(0, id.indexOf('_') > 0 ? id.indexOf('_') : id.length()));
        }
        try {
            for (Field f : fields(item.getClass())) {
                Object v = f.get(item);
                if (v instanceof String && ((String) v).length() > 5) removedIds.add((String) v);
            }
        } catch (Throwable ignored) {
        }
    }

    /** Lista de ids de la carga: sin los de los reels quitados en filterClips. */
    public static List filterClipIds(List ids) {
        if (ids == null || ids.isEmpty() || removedIds.isEmpty()) return ids;
        List<Object> out = new ArrayList<>(ids.size());
        int removed = 0;
        for (Object o : (Collection<?>) ids) {
            if (o instanceof String && removedIds.contains(o)) removed++; else out.add(o);
        }
        removedIds.clear();
        return removed == 0 ? ids : out;
    }

    /** Ultimo modo de la pestana Reels leido del encabezado. */
    private static volatile String lastTabMode = Settings.TAB_FOR_YOU;

    /**
     * Elementos nuevos de un visor de clips: en la pestana Reels se quitan los que el modo
     * activo no permite (si alguno se escapa, se tapa y se silencia al verse).
     */
    public static List filterClips(Object controller, List in) {
        removedIds.clear();
        if (in == null || in.isEmpty()) return in;
        try {
            String src = null;
            for (Field f : fields(controller.getClass())) {
                if (f.getType().getName().endsWith("ClipsViewerSource")) {
                    Object v = f.get(controller);
                    if (v != null) src = String.valueOf(v);
                }
            }
            if (!REELS_TAB.equals(sectionOfSource(src))) return in;
            String u = String.valueOf(src).toUpperCase(java.util.Locale.ROOT);
            String key = u.contains("FRIEND") || u.contains("FOLLOW") ? tabKeyOfSource(src) : lastTabMode;
            boolean enabled = Settings.tabEnabled(key);
            List<Object> out = new ArrayList<>(in.size());
            int removed = 0;
            for (Object o : (Collection<?>) in) {
                Object m = firstMedia(o, 3);
                boolean drop = m != null && (!enabled || !selectionAllows(m, key));
                if (drop) {
                    removed++;
                    rememberRemovedIds(o, m);
                } else {
                    out.add(o);
                }
            }
            if (removed == 0) return in;
            return out;
        } catch (Throwable t) {
            Log.e(TAG, "filterClips", t);
            return in;
        }
    }


    // ------------------------------------------- Ajustes (settings2)

    /** Ruta de navegacion propia de la fila "Reels" de los ajustes. */
    public static final String SETTINGS_ROUTE = "igsinreels_reels";
    private static final String TEMPLATE_ROW = "FAVORITES";
    private static final String OUR_ROW = "REELS_SECOND";

    /**
     * Las definiciones de la pantalla de ajustes (filas y secciones) pasan por aqui.
     * La fila REELS_SECOND (en "Como usas Instagram", oculta salvo para algunos
     * usuarios) se sustituye por "Reels": copia de la de Favoritos con otro titulo,
     * icono y ruta.
     */
    public static Object settingsDef(Object def) {
        try {
            if (!(def instanceof Map)) return def;
            Map<Object, Object> map = (Map<Object, Object>) def;
            Object template = byName(map, TEMPLATE_ROW);
            // "Quemar los barcos": el apartado ya no aparece en el menu.
            if (template != null && !Settings.burned()) addRow(map, template);
        } catch (Throwable t) {
            Log.e(TAG, "settingsDef", t);
        }
        return def;
    }

    private static Object byName(Map<Object, Object> map, String name) {
        for (Map.Entry<Object, Object> e : map.entrySet()) {
            if (e.getKey() instanceof Enum && ((Enum<?>) e.getKey()).name().equals(name)) return e.getValue();
        }
        return null;
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    private static Enum<?> ourKey(Class<?> keyClass) {
        return Enum.valueOf((Class) keyClass, OUR_ROW);
    }

    private static void addRow(Map<Object, Object> map, Object template) throws Exception {
        List<Field> fs = fields(template.getClass());
        Object[] values = new Object[fs.size()];
        Enum<?> key = null;
        for (int i = 0; i < fs.size(); i++) {
            Field f = fs.get(i);
            Object v = f.get(template);
            if (v instanceof Enum) {
                key = ourKey(v.getClass());
                v = key;
            } else if (v != null && v.getClass().getName().endsWith("FbtLiteralValue")) {
                v = null; // texto de detalle de Favoritos
            } else if (v != null && hasStringField(v)) {
                // destino: misma clase de ruta con nuestra ruta
                v = v.getClass().getConstructor(String.class, boolean.class).newInstance(SETTINGS_ROUTE, true);
            } else if (v != null) {
                Object inner = constValue(v);
                if (inner instanceof Integer) {
                    v = newConst(v.getClass(), reelsIcon(((Integer) inner)));
                } else if (inner != null && inner.getClass().getName().endsWith(".FbtModel")) {
                    v = newConst(v.getClass(), literalFbt(inner.getClass(), BlockScreenTitle.get()));
                }
            }
            values[i] = v;
        }
        if (key == null) return;
        // El orden de los parametros del constructor no tiene por que ser el de los
        // campos: se crea con valores no nulos cualesquiera y luego se asigna cada campo.
        java.lang.reflect.Constructor<?> ctor = null;
        for (java.lang.reflect.Constructor<?> c : template.getClass().getDeclaredConstructors()) {
            if (c.getParameterTypes().length == fs.size()) ctor = c;
        }
        if (ctor == null) return;
        Class<?>[] ps = ctor.getParameterTypes();
        Object[] args = new Object[ps.length];
        for (int i = 0; i < ps.length; i++) {
            if (ps[i] == boolean.class) {
                args[i] = Boolean.FALSE;
                continue;
            }
            for (int j = 0; j < fs.size(); j++) {
                if (values[j] != null && ps[i].isInstance(values[j])) {
                    args[i] = values[j];
                    break;
                }
            }
        }
        ctor.setAccessible(true);
        Object row = ctor.newInstance(args);
        for (int i = 0; i < fs.size(); i++) fs.get(i).set(row, values[i]);
        map.put(key, row);
    }

    private static boolean hasStringField(Object v) {
        for (Field f : fields(v.getClass())) if (f.getType() == String.class) return true;
        return false;
    }

    /** Valor envuelto en una constante del DSL (clase con un unico campo Object). */
    private static Object constValue(Object v) throws IllegalAccessException {
        List<Field> fs = fields(v.getClass());
        if (fs.size() != 1 || fs.get(0).getType() != Object.class) return null;
        return fs.get(0).get(v);
    }

    private static Object newConst(Class<?> c, Object value) throws Exception {
        java.lang.reflect.Constructor<?> k = c.getDeclaredConstructor(Object.class);
        k.setAccessible(true);
        return k.newInstance(value);
    }

    private static Object literalFbt(Class<?> fbtModel, String text) throws Exception {
        Class<?> literal = Class.forName(fbtModel.getName() + "Source$Literal", true, fbtModel.getClassLoader());
        Object src = literal.getConstructor(String.class).newInstance(text);
        for (java.lang.reflect.Constructor<?> k : fbtModel.getConstructors()) {
            if (k.getParameterTypes().length == 2) return k.newInstance(src, null);
        }
        throw new IllegalStateException("FbtModel");
    }

    private static int reelsIcon(int fallback) {
        try {
            Context c = Settings.app();
            int id = c == null ? 0 : c.getResources().getIdentifier("instagram_reels_pano_outline_24", "drawable", c.getPackageName());
            return id != 0 ? id : fallback;
        } catch (Throwable t) {
            return fallback;
        }
    }

    /** Titulo de la fila: "Reels". */
    private static final class BlockScreenTitle {
        static String get() {
            return "Reels";
        }
    }

    /** Navegacion de los ajustes: true si la ruta es la nuestra (ya gestionada). */
    public static boolean settingsRoute(String route, Activity a) {
        if (!SETTINGS_ROUTE.equals(route) || a == null) return false;
        if (Settings.burned()) return true;
        Settings.show(a, new Runnable() {
            @Override
            public void run() {
                refresh();
            }
        });
        return true;
    }

    // ------------------------------------------- Lista de publicaciones

    /** Fragment creado. */
    public static void created(Fragment f) {
        if (f == null) return;
        if (f.getActivity() != null) Settings.init(f.getActivity());
        if (myId == null && f.getArguments() != null) {
            // "IgSessionManager.SESSION_TOKEN_KEY" = "<hash>:<tu id de usuario>"
            Object token = f.getArguments().get("IgSessionManager.SESSION_TOKEN_KEY");
            if (token instanceof String && ((String) token).contains(":")) {
                myId = ((String) token).substring(((String) token).lastIndexOf(':') + 1);
            }
        }
    }

    // ------------------------------------- Reels en el feed (Para ti / Siguiendo)

    private static String myId;
    /** Feed que se esta viendo: "foryou" (Para ti), "following" (Siguiendo) o null. */
    private static volatile String feedMode = "foryou";

    private static void trackFeed(Fragment f) {
        String n = f.getClass().getName();
        if (("," + HOME_CLASSES + ",").contains("," + n + ",")) {
            feedMode = Settings.FEED_FOR_YOU;
            if (f.getView() != null) watchFeed(f.getView());
        } else if (CONTEXTUAL_FEED.equals(n)) {
            feedMode = homeFeedKey(f.getArguments());
            if (f.getView() != null) watchFeed(f.getView()); // tambien listas de perfiles (IA)
        } else if (sectionOf(f) != null) {
            feedMode = null;
        }
    }

    /** Feed de inicio al que pertenece un fragment (Para ti, Siguiendo, Favoritos), o null. */
    static String homeFeedOf(Fragment f) {
        for (; f != null; f = f.getParentFragment()) {
            String n = f.getClass().getName();
            if (("," + HOME_CLASSES + ",").contains("," + n + ",")) return Settings.FEED_FOR_YOU;
            if (CONTEXTUAL_FEED.equals(n)) return homeFeedKey(f.getArguments());
        }
        return null;
    }

    /** Feeds de inicio alternativos: Siguiendo y Favoritos (este, como "Para ti"). */
    private static String homeFeedKey(Bundle args) {
        String mode = args == null ? "" : String.valueOf(args.get(ARG_FEED_MODE));
        if ("Following_Feed".equalsIgnoreCase(mode)) return Settings.FEED_FOLLOWING;
        if ("Favorites_Feed".equalsIgnoreCase(mode)) return Settings.FEED_FOR_YOU;
        return null;
    }

    /**
     * Categorias de un reel: publicidad, tuyo, de gente que sigues, de gente que te
     * sigue, de amigos (os seguis mutuamente) u otros (sin relacion).
     */
    static java.util.Set<String> categories(Object media) {
        java.util.Set<String> out = new java.util.HashSet<>();
        try {
            if (isAd(media)) {
                out.add(Settings.CAT_ADS);
                return out;
            }
            String id = mediaId(media);
            String owner = id == null ? null : id.substring(id.indexOf('_') + 1);
            if (owner != null && owner.equals(myId)) {
                out.add(Settings.CAT_ME);
                return out;
            }
            Object user = media.getClass().getMethod(MEDIA_AUTHOR).invoke(media);
            if (user == null) {
                out.add(Settings.CAT_OTHERS);
                return out;
            }
            Object status = user.getClass().getMethod(FOLLOW_STATUS).invoke(user);
            String st = String.valueOf(status).toUpperCase(java.util.Locale.ROOT);
            boolean iFollow = st.endsWith("FOLLOWING") && !st.contains("NOT");
            boolean followsMe = Boolean.TRUE.equals(user.getClass().getMethod(FOLLOWED_BY).invoke(user))
                    || Boolean.TRUE.equals(user.getClass().getMethod(FOLLOWS_ME).invoke(user));
            if (iFollow) out.add(Settings.CAT_FOLLOWING);
            if (followsMe) out.add(Settings.CAT_FOLLOWERS);
            if (iFollow && followsMe) out.add(Settings.CAT_FRIENDS);
            if (!iFollow && !followsMe) out.add(Settings.CAT_OTHERS);
        } catch (Throwable t) {
            Log.e(TAG, "categories", t);
        }
        return out;
    }

    // ------------------------------------ Tus publicaciones en los feeds (vista)

    private static final WeakHashMap<ViewTreeObserver, Boolean> FEED_WATCHED = new WeakHashMap<>();
    private static final WeakHashMap<View, Boolean> FEED_COVERED = new WeakHashMap<>();
    private static long feedScanAt;

    private static void watchFeed(View item) {
        final View root = item.getRootView();
        ViewTreeObserver vto = root.getViewTreeObserver();
        if (FEED_WATCHED.containsKey(vto)) return;
        FEED_WATCHED.put(vto, Boolean.TRUE);
        vto.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                if (SystemClock.uptimeMillis() - feedScanAt > 300) {
                    feedScanAt = SystemClock.uptimeMillis();
                    feedScan(root);
                }
                return true;
            }
        });
    }

    /**
     * Feeds (Para ti / Siguiendo / Favoritos): tapa (y silencia) la fila de video de las
     * publicaciones que el cuadro del feed no permite; solo la publicidad se quita del todo.
     * El Media sale del arbol de Litho de la fila.
     */
    static void feedScan(View root) {
        String mode = feedMode;
        List<View> stack = new ArrayList<>();
        stack.add(root);
        while (!stack.isEmpty()) {
            View v = stack.remove(stack.size() - 1);
            if (!v.isShown()) continue;
            if (v instanceof RecyclerView) scanRows((ViewGroup) v, mode); // y se sigue bajando (listas anidadas)
            if (v instanceof ViewGroup) {
                ViewGroup g = (ViewGroup) v;
                for (int i = 0; i < g.getChildCount(); i++) stack.add(g.getChildAt(i));
            }
        }
    }

    /** Media de cada fila del feed dibujada con Litho (cacheado un momento: las filas se reciclan). */
    private static final WeakHashMap<View, Object[]> ROW_MEDIA = new WeakHashMap<>();

    private static Object rowMedia(View row) {
        Object[] c = ROW_MEDIA.get(row);
        long now = SystemClock.uptimeMillis();
        if (c != null && now - (Long) c[1] < 1000) return c[0];
        Object m = row.getClass().getName().contains("Litho") ? findMediaInView(row, 4) : null;
        ROW_MEDIA.put(row, new Object[] {m, now});
        return m;
    }

    /** Filas colapsadas por feedScan (las de bloques de anuncios las colapsa evaluate). */
    private static final WeakHashMap<View, Boolean> SCAN_COLLAPSED = new WeakHashMap<>();

    /** Filas de anuncios colapsadas (anuncios que no pasan por el parser) -> altura original. */
    private static final WeakHashMap<View, Integer> COLLAPSED = new WeakHashMap<>();

    /**
     * Fila de la lista a altura 0: oculta sin dejar hueco (una fila GONE conserva su
     * altura en una RecyclerView). true si se acaba de colapsar.
     */
    private static boolean collapse(View row) {
        if (COLLAPSED.containsKey(row)) return false;
        ViewGroup.LayoutParams lp = row.getLayoutParams();
        if (lp == null) return false;
        COLLAPSED.put(row, lp.height);
        lp.height = 0;
        row.setLayoutParams(lp);
        row.setVisibility(View.INVISIBLE);
        return true;
    }

    /** Deshace collapse (la fila se ha reciclado para otra publicacion). */
    private static void expand(View row) {
        Integer h = COLLAPSED.remove(row);
        if (h == null) return;
        ViewGroup.LayoutParams lp = row.getLayoutParams();
        if (lp != null) {
            lp.height = h;
            row.setLayoutParams(lp);
        }
        row.setVisibility(View.VISIBLE);
    }

    private static void scanRows(ViewGroup rv, String mode) {
        // Una publicacion ocupa varias filas con el mismo Media (video, botones, texto): solo
        // se tapa la mas alta (la de la foto/video).
        Map<Object, View> tallest = new java.util.IdentityHashMap<>();
        for (int i = 0; i < rv.getChildCount(); i++) {
            View row = rv.getChildAt(i);
            Object m = rowMedia(row);
            if (m == null) continue;
            View t = tallest.get(m);
            if (t == null || row.getHeight() > t.getHeight()) tallest.put(m, row);
        }
        for (int i = 0; i < rv.getChildCount(); i++) {
            View row = rv.getChildAt(i);
            Object media = rowMedia(row);
            boolean hideAd = mode != null && media != null && isAd(media) && !Settings.selection(mode).contains(Settings.CAT_ADS);
            if (hideAd) {
                if (collapse(row)) {
                    SCAN_COLLAPSED.put(row, Boolean.TRUE);
                }
                continue;
            } else if (SCAN_COLLAPSED.remove(row) != null) {
                expand(row);
            }
            boolean cover = media != null && row.getHeight() > 300 && tallest.get(media) == row
                    && ((mode != null && isReel(media) && !feedReelAllowed(media, mode))
                    || aiBlocked(media)); // IA: la publicacion entera (tambien carruseles)
            if (cover && !FEED_COVERED.containsKey(row)) {
                FEED_COVERED.put(row, Boolean.TRUE);
                hook(row);
                cover(row, true);
                PENDING.put(row, media);
                watchTouches(row);
                watchTabAudio(row);
            } else if (!cover && FEED_COVERED.remove(row) != null) {
                cover(row, false);
                PENDING.remove(row);
            } else if (cover) {
                PENDING.put(row, media);
            }
        }
    }



    /** Media en los campos de una vista (p. ej. el arbol de componentes de un LithoView). */
    static Object findMediaInView(View v, int depth) {
        Object[] found = new Object[1];
        Map<Object, Boolean> seen = new java.util.IdentityHashMap<>();
        seen.put(v, Boolean.TRUE);
        try {
            for (Class<?> c = v.getClass(); c != null && c != View.class; c = c.getSuperclass()) {
                for (Field f : c.getDeclaredFields()) {
                    if (Modifier.isStatic(f.getModifiers()) || f.getType().isPrimitive()) continue;
                    f.setAccessible(true);
                    Object val = f.get(v);
                    if (val == null || val instanceof View) continue;
                    if (!search(val, depth - 1, found, seen)) return null;
                }
            }
        } catch (Throwable t) {
            return null;
        }
        return found[0];
    }


    /** Reel permitido segun la seleccion multiple `key` (Pestana Reels / feeds). */
    static boolean selectionAllows(Object media, String key) {
        if (aiBlocked(media)) {
            return false;
        }
        java.util.Set<String> sel = Settings.selection(key);
        java.util.Set<String> cats;
        if (Settings.TAB_FRIENDS.equals(key) || Settings.TAB_FOLLOWING.equals(key)) {
            // Esos modos ya solo muestran reels con interaccion de amigos / de gente que
            // sigues (el autor puede ser cualquiera): cuenta el modo, salvo los anuncios.
            cats = new java.util.HashSet<>();
            cats.add(isAd(media) ? Settings.CAT_ADS
                    : Settings.TAB_FRIENDS.equals(key) ? Settings.CAT_FRIENDS : Settings.CAT_FOLLOWING);
        } else {
            cats = categories(media);
        }
        boolean ok = false;
        for (String c : cats) if (sel.contains(c)) ok = true;
        return ok;
    }

    static boolean feedReelAllowed(Object media, String feed) {
        return selectionAllows(media, feed);
    }

    /**
     * Parser del feed de inicio: true si el elemento se queda. Reels y videos (tambien
     * los 16:9, que se publican como reels) segun el cuadro del feed; las fotos se quedan.
     */
    public static boolean keepFeedReel(Object media) {
        String mode = feedMode;
        if (mode == null) return true;
        // Publicidad (tambien la que no es video): se quita si no esta marcada. El resto no
        // permitido se tapa (feedScan) y se silencia.
        if (isAd(media)) return Settings.selection(mode).contains(Settings.CAT_ADS);
        return true;
    }

    /**
     * Lista de publicaciones (ContextualFeed): sin reels, salvo que la seccion lo permita
     * (guardados, perfiles...). El adaptador se usa tambien en otras pantallas (p. ej.
     * la cuadricula de reels guardados): ahi no se toca.
     */
    public static List filterFeed(Object adapter, List in) {
        if (in == null || in.isEmpty()) return in;
        try {
            Fragment f = ownerFragment(adapter);
            if (f == null || !CONTEXTUAL_FEED.equals(f.getClass().getName())) return in;
            String home = homeFeedKey(f.getArguments());
            if (home != null) return filterHomeFeed(in, home);
            String section = isSavedFeed(f.getArguments()) ? Settings.SAVED : feedSection(f);
            if (Settings.allowed(section)) return in;
            List<Object> out = new ArrayList<>(in.size());
            int removed = 0;
            Bundle args = f.getArguments();
            String initial = args == null ? null : args.getString(ARG_FEED_INITIAL);
            for (Object o : (Collection<?>) in) {
                Object m = findMedia(o);
                if (m != null && isReel(m)) {
                    removed++;
                    if (initial != null && initial.equals(mediaId(m))) stopFeed(f);
                    continue;
                }
                out.add(o);
            }
            if (removed == 0) return in;
            return out;
        } catch (Throwable t) {
            Log.e(TAG, "filterFeed", t);
            return in;
        }
    }

    private static final String ARG_FEED_INITIAL = "ContextualFeedFragment.ARGUMENT_MEDIA_INITIAL_POSITION";
    private static final WeakHashMap<Fragment, Boolean> STOPPED = new WeakHashMap<>();

    /** Se abrio la lista desde un reel bloqueado: STOP encima y se cierra la lista. */
    private static void stopFeed(final Fragment f) {
        if (STOPPED.containsKey(f)) return;
        STOPPED.put(f, Boolean.TRUE);
        MAIN.post(new Runnable() {
            @Override
            public void run() {
                Activity a = f.getActivity();
                if (a == null || a.isFinishing()) return;
                try {
                    a.onBackPressed();
                } catch (Throwable t) {
                    Log.e(TAG, "back", t);
                }
                BlockScreen.overlay(a);
            }
        });
    }

    /** Feeds Siguiendo / Favoritos: reels y videos segun su seleccion. */
    private static List filterHomeFeed(List in, String key) {
        List<Object> out = new ArrayList<>(in.size());
        int removed = 0;
        for (Object o : (Collection<?>) in) {
            Object m = findMedia(o);
            boolean drop = m != null && isAd(m) && !Settings.selection(key).contains(Settings.CAT_ADS);
            if (drop) removed++; else out.add(o);
        }
        if (removed == 0) return in;
        return out;
    }

    /** Seccion de una ContextualFeed que no es de guardados: perfil propio u otro. */
    private static String feedSection(Fragment f) {
        Bundle args = f.getArguments();
        String mode = args == null ? "" : String.valueOf(args.get(ARG_FEED_MODE)) + " "
                + String.valueOf(args.get("ContextualFeedFragment.ARGUMENT_MODULE_NAME"));
        String m = mode.toLowerCase(java.util.Locale.ROOT);
        if (m.contains("self")) return Settings.OWN;
        if (m.contains("user") || m.contains("profile")) return Settings.OTHER_PROFILES;
        return null;
    }

    /** Fragment de un objeto (campo Fragment, o el de una vista suya). */
    private static Fragment ownerFragment(Object o) throws IllegalAccessException {
        if (o == null) return null;
        for (Field f : fields(o.getClass())) {
            Object v = f.get(o);
            if (v instanceof Fragment) return (Fragment) v;
        }
        for (Field f : fields(o.getClass())) {
            Object v = f.get(o);
            if (v instanceof View) {
                Fragment fr = fragmentOf((View) v);
                if (fr != null) return fr;
            }
        }
        return null;
    }

    private Gate() {}
}

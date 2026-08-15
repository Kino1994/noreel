package com.igsinreels;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.graphics.drawable.GradientDrawable;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.Locale;

/**
 * Apartado "Reels": que reels se permiten ver (uno a uno, sin scroll).
 * Se abre desde Configuracion y actividad > Como usas Instagram > Reels.
 */
public final class Settings {
    public static final String SEARCH = "search";
    /** Reels generados con IA: seleccion con interruptor, por encima del resto de ajustes. */
    public static final String AI = "ai";
    public static final String DM = "dm";
    public static final String DM_SENT = "dm_sent";
    public static final String SAVED = "saved";
    public static final String REPOSTS = "reposts";
    public static final String OWN = "own";
    public static final String OTHER_PROFILES = "other_profiles";
    public static final String OTHER_REPOSTS = "other_reposts";

    // Selecciones multiples: Pestana Reels (para ti / amigos) y feeds de inicio
    // (Para ti / Siguiendo). Cada reel se permite si su categoria esta marcada.
    public static final String TAB_FOR_YOU = "tab_foryou";
    public static final String TAB_FRIENDS = "tab_friends";
    public static final String TAB_FOLLOWING = "tab_following";
    public static final String FEED_FOR_YOU = "feed_foryou";
    public static final String FEED_FOLLOWING = "feed_following";
    public static final String CAT_FOLLOWING = "following";
    public static final String CAT_FOLLOWERS = "followers";
    public static final String CAT_FRIENDS = "friends";
    public static final String CAT_ME = "me";
    public static final String CAT_ADS = "ads";
    public static final String CAT_OTHERS = "others";
    private static final String[] FOR_YOU_OPTIONS = {CAT_FOLLOWING, CAT_FOLLOWERS, CAT_OTHERS, CAT_ME, CAT_ADS};
    private static final String[] FRIENDS_OPTIONS = {CAT_FRIENDS, CAT_ADS};
    private static final String[] FOLLOWING_OPTIONS = {CAT_FOLLOWING, CAT_ADS};

    static String[] options(String key) {
        if (TAB_FOLLOWING.equals(key) || FEED_FOLLOWING.equals(key)) return FOLLOWING_OPTIONS;
        return TAB_FRIENDS.equals(key) ? FRIENDS_OPTIONS : FOR_YOU_OPTIONS;
    }

    static boolean isSelection(String key) {
        return TAB_FOR_YOU.equals(key) || TAB_FOLLOWING.equals(key) || TAB_FRIENDS.equals(key)
                || FEED_FOR_YOU.equals(key) || FEED_FOLLOWING.equals(key) || AI.equals(key);
    }

    /**
     * Modo de la pestana Reels activo (interruptor). Apagado = STOP permanente en ese
     * modo, aunque tenga opciones marcadas.
     */
    public static boolean tabEnabled(String key) {
        if (app == null) init(currentApplication());
        if (app == null) return fromFile(key + "_on");
        try {
            return app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(key + "_on", DEFAULT);
        } catch (Throwable t) {
            return DEFAULT;
        }
    }

    /** Selecciones con interruptor en la cabecera (modos de la pestana Reels y la de IA). */
    static boolean isTab(String key) {
        return TAB_FOR_YOU.equals(key) || TAB_FOLLOWING.equals(key) || TAB_FRIENDS.equals(key) || AI.equals(key);
    }

    /** Opciones marcadas (por defecto, todas). */
    public static java.util.Set<String> selection(String key) {
        java.util.Set<String> all = new java.util.HashSet<>(java.util.Arrays.asList(options(key)));
        if (app == null) init(currentApplication());
        if (app == null) {
            // Al arrancar (precarga de la pestana Reels) aun no hay Context: se lee el XML.
            java.util.Set<String> v = setFromFile(key);
            if (v == null) return all;
            v.retainAll(all);
            return v;
        }
        try {
            java.util.Set<String> v = app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getStringSet(key, null);
            if (v == null) return all;
            java.util.Set<String> out = new java.util.HashSet<>(v);
            out.retainAll(all); // opciones que ya no existen (p. ej. "Amigos" antes en Siguiendo)
            return out;
        } catch (Throwable t) {
            return all;
        }
    }

    private static String optionLabel(String c) {
        String[] l = optionLabels();
        String[] ids = {CAT_FOLLOWING, CAT_FOLLOWERS, CAT_ME, CAT_ADS, CAT_FRIENDS, null, CAT_OTHERS};
        for (int i = 0; i < ids.length; i++) if (c.equals(ids[i])) return l[i];
        return c;
    }

    // {Gente que sigo, Gente que me sigue, Yo, Publicidad, Amigos, "%d seleccionados", Otros, Siguiendo}
    private static String[] optionLabels() {
        switch (Locale.getDefault().getLanguage()) {
            case "es": return new String[] {"Gente que sigo", "Gente que me sigue", "Yo", "Publicidad", "Amigos", "%d seleccionados", "Otros", "Siguiendo"};
            case "ca": return new String[] {"Gent que segueixo", "Gent que em segueix", "Jo", "Publicitat", "Amics", "%d seleccionats", "Altres", "Seguint"};
            case "pt": return new String[] {"Pessoas que sigo", "Pessoas que me seguem", "Eu", "Publicidade", "Amigos", "%d selecionados", "Outros", "A seguir"};
            case "fr": return new String[] {"Comptes que je suis", "Comptes qui me suivent", "Moi", "Publicité", "Amis", "%d sélectionnés", "Autres", "Abonnements"};
            case "it": return new String[] {"Persone che seguo", "Persone che mi seguono", "Io", "Pubblicità", "Amici", "%d selezionati", "Altri", "Seguiti"};
            case "de": return new String[] {"Leute, denen ich folge", "Leute, die mir folgen", "Ich", "Werbung", "Freunde", "%d ausgewählt", "Andere", "Gefolgt"};
            default: return new String[] {"People I follow", "People who follow me", "Me", "Ads", "Friends", "%d selected", "Others", "Following"};
        }
    }

    /** Orden del apartado: de lo general a lo concreto. */
    private static final String[] KEYS = {TAB_FOR_YOU, TAB_FOLLOWING, TAB_FRIENDS, FEED_FOR_YOU, FEED_FOLLOWING, AI, SEARCH, DM,
            DM_SENT, OWN, REPOSTS, SAVED, OTHER_PROFILES, OTHER_REPOSTS};

    private static final String PREFS = "igsinreels";
    private static final boolean DEFAULT = true;
    private static Context app;

    /**
     * Al arrancar (la lista de pestanas se calcula antes de tener un Context) se lee
     * directamente el XML de las preferencias.
     */
    private static boolean fromFile(String key) {
        try {
            String pkg = new String(java.nio.file.Files.readAllBytes(java.nio.file.Paths.get("/proc/self/cmdline"))).trim();
            int nul = pkg.indexOf('\0');
            if (nul >= 0) pkg = pkg.substring(0, nul);
            int user = android.os.Process.myUid() / 100000;
            java.io.File f = new java.io.File("/data/user/" + user + "/" + pkg + "/shared_prefs/" + PREFS + ".xml");
            if (!f.exists()) return DEFAULT;
            String xml = new String(java.nio.file.Files.readAllBytes(f.toPath()), "UTF-8");
            java.util.regex.Matcher m = java.util.regex.Pattern
                    .compile("<boolean name=\"" + key + "\" value=\"(true|false)\"").matcher(xml);
            return m.find() ? Boolean.parseBoolean(m.group(1)) : DEFAULT;
        } catch (Throwable t) {
            return DEFAULT;
        }
    }

    /** Conjunto de strings guardado en el XML de preferencias, o null si no esta. */
    private static java.util.Set<String> setFromFile(String key) {
        try {
            String xml = prefsXml();
            if (xml == null) return null;
            java.util.regex.Matcher m = java.util.regex.Pattern
                    .compile("<set name=\"" + key + "\"\\s*(/>|>(.*?)</set>)", java.util.regex.Pattern.DOTALL).matcher(xml);
            if (!m.find()) return null;
            java.util.Set<String> out = new java.util.HashSet<>();
            if (m.group(2) != null) {
                java.util.regex.Matcher e = java.util.regex.Pattern.compile("<string>([^<]*)</string>").matcher(m.group(2));
                while (e.find()) out.add(e.group(1));
            }
            return out;
        } catch (Throwable t) {
            return null;
        }
    }

    private static String prefsXml() throws java.io.IOException {
        String pkg = new String(java.nio.file.Files.readAllBytes(java.nio.file.Paths.get("/proc/self/cmdline"))).trim();
        int nul = pkg.indexOf('\0');
        if (nul >= 0) pkg = pkg.substring(0, nul);
        int user = android.os.Process.myUid() / 100000;
        java.io.File f = new java.io.File("/data/user/" + user + "/" + pkg + "/shared_prefs/" + PREFS + ".xml");
        return f.exists() ? new String(java.nio.file.Files.readAllBytes(f.toPath()), "UTF-8") : null;
    }

    /** Contexto de la app aunque aun no se haya visto ninguna vista (lista de pestanas). */
    private static Context currentApplication() {
        try {
            return (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
        } catch (Throwable t) {
            return null;
        }
    }

    static Context app() {
        return app;
    }

    static void init(Context ctx) {
        if (app == null && ctx != null) app = ctx.getApplicationContext();
    }

    /** Todo permitido por defecto: cada uno apaga lo que no quiere ver. */
    public static boolean allowed(String key) {
        if (Gate.EXPLORE.equals(key)) key = SEARCH; // la lupa y los resultados de busqueda
        if (app == null) init(currentApplication());
        if (key == null) return false;
        if (app == null) return fromFile(key);
        try {
            return app.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(key, DEFAULT);
        } catch (Throwable t) {
            return false;
        }
    }

    // {titulo, descripcion, cerrar, ...una etiqueta por cada clave de KEYS}
    private static String[] strings() {
        switch (Locale.getDefault().getLanguage()) {
            case "es": return new String[] {"Reels",
                    "Apaga lo que no quieras ver: saldrá la pantalla STOP. Los reels de MD se ven de uno en uno.", "Cerrar",
                    "Pestaña Reels: para ti", "Pestaña Reels: siguiendo", "Pestaña Reels: amigos", "Publicaciones: para ti", "Publicaciones: siguiendo", "Contenido generado con IA", "Reels en la búsqueda",
                    "Reels que te envían por MD", "Reels que envías por MD", "Reels que publicas", "Mis reposts",
                    "Reels guardados", "Reels de otros perfiles", "Reposts de otros perfiles"};
            case "ca": return new String[] {"Reels",
                    "Apaga el que no vulguis veure: sortirà la pantalla STOP. Els reels de MD es veuen d'un en un.", "Tancar",
                    "Pestanya Reels: per a tu", "Pestanya Reels: seguint", "Pestanya Reels: amics", "Publicacions: per a tu", "Publicacions: seguint", "Contingut generat amb IA", "Reels a la cerca",
                    "Reels que t'envien per MD", "Reels que envies per MD", "Reels que publiques", "Els meus reposts",
                    "Reels desats", "Reels d'altres perfils", "Reposts d'altres perfils"};
            case "pt": return new String[] {"Reels",
                    "Desliga o que não queres ver: aparece o ecrã STOP. Os reels de DM veem-se um a um.", "Fechar",
                    "Separador Reels: para ti", "Separador Reels: a seguir", "Separador Reels: amigos", "Publicações: para ti", "Publicações: a seguir", "Conteúdo gerado com IA", "Reels na pesquisa",
                    "Reels que te enviam por DM", "Reels que envias por DM", "Reels que publicas", "Os meus reposts",
                    "Reels guardados", "Reels de outros perfis", "Reposts de outros perfis"};
            case "fr": return new String[] {"Reels",
                    "Désactive ce que tu ne veux pas voir : l'écran STOP apparaîtra. Les reels des MP se voient un par un.", "Fermer",
                    "Onglet Reels : pour toi", "Onglet Reels : abonnements", "Onglet Reels : amis", "Publications : pour toi", "Publications : abonnements", "Contenu généré par IA", "Reels dans la recherche",
                    "Reels reçus en MP", "Reels envoyés en MP", "Reels que tu publies", "Mes republications",
                    "Reels enregistrés", "Reels d'autres profils", "Republications d'autres profils"};
            case "it": return new String[] {"Reels",
                    "Spegni ciò che non vuoi vedere: comparirà la schermata STOP. I reels in DM si vedono uno alla volta.", "Chiudi",
                    "Scheda Reels: per te", "Scheda Reels: seguiti", "Scheda Reels: amici", "Post: per te", "Post: seguiti", "Contenuti generati con IA", "Reels nella ricerca",
                    "Reels ricevuti in DM", "Reels inviati in DM", "Reels che pubblichi", "I miei repost",
                    "Reels salvati", "Reels di altri profili", "Repost di altri profili"};
            case "de": return new String[] {"Reels",
                    "Schalte aus, was du nicht sehen willst: dann erscheint STOP. DM-Reels nur einzeln.", "Schließen",
                    "Reels-Tab: für dich", "Reels-Tab: gefolgt", "Reels-Tab: Freunde", "Beiträge: für dich", "Beiträge: gefolgt", "KI-generierte Inhalte", "Reels in der Suche",
                    "Empfangene Reels (DM)", "Gesendete Reels (DM)", "Reels, die du postest", "Meine Reposts",
                    "Gespeicherte Reels", "Reels anderer Profile", "Reposts anderer Profile"};
            default: return new String[] {"Reels",
                    "Turn off what you don't want to see: you'll get the STOP screen. DM reels play one at a time.", "Close",
                    "Reels tab: for you", "Reels tab: following", "Reels tab: friends", "Posts: for you", "Posts: following", "AI-generated content", "Reels in search",
                    "Reels sent to you in DMs", "Reels you send in DMs", "Reels you post", "My reposts",
                    "Saved reels", "Reels on other profiles", "Reposts on other profiles"};
        }
    }

    // ---------------------------------------------------- Quemar los barcos

    private static final String BURNED_FILE = "igsinreels_burned";

    /**
     * Apartado eliminado del menu ("Quemar los barcos"). La marca vive en la cache de la
     * app: borrar la cache, los datos o reinstalar la deshace; la configuracion se queda.
     */
    public static boolean burned() {
        if (app == null) init(currentApplication());
        return app != null && new java.io.File(app.getCacheDir(), BURNED_FILE).exists();
    }

    // {boton, titulo, aviso, confirmar, cancelar}
    private static String[] burnStrings() {
        switch (Locale.getDefault().getLanguage()) {
            case "es": return new String[] {"Quemar los barcos", "Quemar los barcos",
                    "La configuración de Reels se quedará exactamente como está ahora y este apartado desaparecerá del menú. "
                    + "No hay vuelta atrás, salvo que borres la caché o todos los datos de Instagram, o la reinstales.",
                    "Quemar", "Cancelar"};
            case "ca": return new String[] {"Cremar els vaixells", "Cremar els vaixells",
                    "La configuració de Reels es quedarà tal com està ara i aquest apartat desapareixerà del menú. "
                    + "No hi ha marxa enrere, tret que esborris la memòria cau o totes les dades d'Instagram, o la reinstal·lis.",
                    "Cremar", "Cancel·lar"};
            case "pt": return new String[] {"Queimar os barcos", "Queimar os barcos",
                    "A configuração de Reels fica exatamente como está agora e esta secção desaparece do menu. "
                    + "Não há volta atrás, a menos que limpes a cache ou todos os dados do Instagram, ou o reinstales.",
                    "Queimar", "Cancelar"};
            case "fr": return new String[] {"Brûler les bateaux", "Brûler les bateaux",
                    "La configuration des Reels restera telle qu'elle est maintenant et cette section disparaîtra du menu. "
                    + "Pas de retour en arrière, sauf si tu vides le cache ou toutes les données d'Instagram, ou si tu le réinstalles.",
                    "Brûler", "Annuler"};
            case "it": return new String[] {"Bruciare le barche", "Bruciare le barche",
                    "La configurazione dei Reels resterà esattamente com'è ora e questa sezione sparirà dal menu. "
                    + "Non si torna indietro, a meno che non svuoti la cache o tutti i dati di Instagram, o lo reinstalli.",
                    "Brucia", "Annulla"};
            case "de": return new String[] {"Die Schiffe verbrennen", "Die Schiffe verbrennen",
                    "Die Reels-Einstellungen bleiben genau so, wie sie jetzt sind, und dieser Bereich verschwindet aus dem Menü. "
                    + "Kein Zurück, außer du leerst den Cache oder alle Daten von Instagram oder installierst es neu.",
                    "Verbrennen", "Abbrechen"};
            default: return new String[] {"Burn the boats", "Burn the boats",
                    "Your Reels settings will stay exactly as they are now and this section will disappear from the menu. "
                    + "There is no way back unless you clear Instagram's cache or all its data, or reinstall it.",
                    "Burn", "Cancel"};
        }
    }

    private static void confirmBurn(final Activity a, final Dialog page) {
        final String[] b = burnStrings();
        final AlertDialog dlg = new AlertDialog.Builder(a)
                .setTitle(b[1])
                .setMessage(b[2])
                .setNegativeButton(b[4], null)
                .setPositiveButton(b[3] + " (10)", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        try {
                            new java.io.File(a.getCacheDir(), BURNED_FILE).createNewFile();
                        } catch (Throwable t) {
                            return;
                        }
                        page.dismiss();
                        // El menu de ajustes se construye una vez por proceso: se reinicia la app.
                        android.content.Intent i = a.getPackageManager().getLaunchIntentForPackage(a.getPackageName());
                        if (i != null) {
                            i.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK | android.content.Intent.FLAG_ACTIVITY_CLEAR_TASK);
                            a.startActivity(i);
                        }
                        android.os.Process.killProcess(android.os.Process.myPid());
                    }
                })
                .create();
        dlg.show();
        final android.widget.Button ok = dlg.getButton(AlertDialog.BUTTON_POSITIVE);
        ok.setEnabled(false);
        final android.os.Handler h = new android.os.Handler(android.os.Looper.getMainLooper());
        h.postDelayed(new Runnable() {
            int left = 10;

            @Override
            public void run() {
                if (!dlg.isShowing()) return;
                left--;
                if (left > 0) {
                    ok.setText(b[3] + " (" + left + ")");
                    h.postDelayed(this, 1000);
                } else {
                    ok.setText(b[3]);
                    ok.setEnabled(true);
                }
            }
        }, 1000);
    }

    /** Pantalla completa "Reels", con el aspecto de las demas pantallas de ajustes. */
    public static void show(final Activity a, final Runnable onClose) {
        init(a);
        final SharedPreferences prefs = a.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        String[] s = strings();
        final boolean dark = (a.getResources().getConfiguration().uiMode & Configuration.UI_MODE_NIGHT_MASK)
                == Configuration.UI_MODE_NIGHT_YES;
        final int bg = dark ? Color.BLACK : Color.WHITE;
        final int fg = dark ? Color.WHITE : Color.BLACK;
        final int sub = dark ? 0xFFA8A8A8 : 0xFF737373;

        final Dialog d = new Dialog(a, dark ? android.R.style.Theme_DeviceDefault_NoActionBar
                : android.R.style.Theme_DeviceDefault_Light_NoActionBar);
        LinearLayout page = new LinearLayout(a);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setBackgroundColor(bg);
        page.setFitsSystemWindows(true);

        // Cabecera: flecha atras + titulo, como "Configuracion y actividad".
        LinearLayout bar = new LinearLayout(a);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(BlockScreen.dp(a, 4), 0, BlockScreen.dp(a, 16), 0);
        TextView back = new TextView(a);
        back.setText("\u2190");
        back.setTextColor(fg);
        back.setTextSize(TypedValue.COMPLEX_UNIT_SP, 26);
        back.setGravity(Gravity.CENTER);
        back.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                d.dismiss();
            }
        });
        bar.addView(back, new LinearLayout.LayoutParams(BlockScreen.dp(a, 48), BlockScreen.dp(a, 48)));
        TextView title = new TextView(a);
        title.setText(s[0]);
        title.setTextColor(fg);
        title.setTextSize(TypedValue.COMPLEX_UNIT_SP, 20);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(-2, -2);
        tlp.leftMargin = BlockScreen.dp(a, 12);
        bar.addView(title, tlp);
        page.addView(bar, new LinearLayout.LayoutParams(-1, BlockScreen.dp(a, 56)));

        ScrollView scroll = new ScrollView(a);
        LinearLayout col = new LinearLayout(a);
        col.setOrientation(LinearLayout.VERTICAL);
        scroll.addView(col);
        page.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1f));

        TextView desc = new TextView(a);
        desc.setText(s[1]);
        desc.setTextColor(sub);
        desc.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
        int pad = BlockScreen.dp(a, 16);
        desc.setPadding(pad, BlockScreen.dp(a, 8), pad, BlockScreen.dp(a, 8));
        col.addView(desc);

        for (int i = 0; i < KEYS.length; i++) {
            final String key = KEYS[i];
            LinearLayout row = new LinearLayout(a);
            row.setOrientation(LinearLayout.HORIZONTAL);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setPadding(pad, 0, pad, 0);
            row.setMinimumHeight(BlockScreen.dp(a, 56));
            TextView label = new TextView(a);
            label.setText(s[3 + i]);
            label.setTextColor(fg);
            label.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
            row.addView(label, new LinearLayout.LayoutParams(0, -2, 1f));
            if (isSelection(key)) {
                // Seleccion multiple: etiqueta y debajo un cuadro "N seleccionados" que se
                // despliega con una casilla por opcion.
                row.setOrientation(LinearLayout.VERTICAL);
                row.setGravity(Gravity.NO_GRAVITY);
                row.setPadding(pad, BlockScreen.dp(a, 12), pad, BlockScreen.dp(a, 8));
                label.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
                col.addView(row, new LinearLayout.LayoutParams(-1, -2));
                final LinearLayout box = new LinearLayout(a);
                box.setOrientation(LinearLayout.VERTICAL);
                GradientDrawable frame = new GradientDrawable();
                frame.setColor(dark ? 0xFF121212 : Color.WHITE);
                frame.setStroke(BlockScreen.dp(a, 1), dark ? 0xFF363636 : 0xFFDBDBDB);
                frame.setCornerRadius(BlockScreen.dp(a, 10));
                box.setBackground(frame);
                LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(-1, -2);
                blp.topMargin = BlockScreen.dp(a, 8);
                row.addView(box, blp);
                final TextView summary = new TextView(a);
                summary.setTextColor(fg);
                summary.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
                summary.setPadding(BlockScreen.dp(a, 14), BlockScreen.dp(a, 12), BlockScreen.dp(a, 14), BlockScreen.dp(a, 12));
                box.addView(summary, new LinearLayout.LayoutParams(-1, -2));
                final java.util.List<CheckBox> boxes = new java.util.ArrayList<>();
                final boolean[] enabled = {!isTab(key) || prefs.getBoolean(key + "_on", DEFAULT)};
                final LinearLayout list = new LinearLayout(a);
                list.setOrientation(LinearLayout.VERTICAL);
                list.setVisibility(View.GONE);
                box.addView(list, new LinearLayout.LayoutParams(-1, -2));
                final java.util.Set<String> sel = selection(key);
                final String fmt = optionLabels()[5];
                final Runnable update = new Runnable() {
                    @Override
                    public void run() {
                        summary.setText(String.format(fmt, sel.size()) + (list.getVisibility() == View.VISIBLE ? "  \u25B4" : "  \u25BE"));
                    }
                };
                final boolean followingList = options(key) == FOLLOWING_OPTIONS;
                for (final String opt : options(key)) {
                    final CheckBox cb = new CheckBox(a);
                    cb.setText(followingList && CAT_FOLLOWING.equals(opt) ? optionLabels()[7] : optionLabel(opt));
                    cb.setTextColor(fg);
                    cb.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
                    cb.setChecked(sel.contains(opt));
                    cb.setButtonTintList(android.content.res.ColorStateList.valueOf(dark ? Color.WHITE : Color.BLACK));
                    cb.setPadding(BlockScreen.dp(a, 6), BlockScreen.dp(a, 10), 0, BlockScreen.dp(a, 10));
                    cb.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {
                        @Override
                        public void onCheckedChanged(android.widget.CompoundButton b, boolean on) {
                            if (on) sel.add(opt); else sel.remove(opt);
                            prefs.edit().putStringSet(key, new java.util.HashSet<>(sel)).apply();
                            update.run();
                        }
                    });
                    LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(-1, -2);
                    clp.leftMargin = BlockScreen.dp(a, 8);
                    list.addView(cb, clp);
                    boxes.add(cb);
                }
                summary.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (!enabled[0]) return;
                        list.setVisibility(list.getVisibility() == View.VISIBLE ? View.GONE : View.VISIBLE);
                        update.run();
                    }
                });
                update.run();
                if (isTab(key)) {
                    // Cabecera con interruptor, como el resto; apagado = cuadro en gris.
                    row.removeView(label);
                    LinearLayout header = new LinearLayout(a);
                    header.setOrientation(LinearLayout.HORIZONTAL);
                    header.setGravity(Gravity.CENTER_VERTICAL);
                    header.addView(label, new LinearLayout.LayoutParams(0, -2, 1f));
                    final Toggle t = new Toggle(a, dark, enabled[0]);
                    header.addView(t, new LinearLayout.LayoutParams(BlockScreen.dp(a, 48), BlockScreen.dp(a, 28)));
                    row.addView(header, 0, new LinearLayout.LayoutParams(-1, BlockScreen.dp(a, 40)));
                    final Runnable apply = new Runnable() {
                        @Override
                        public void run() {
                            box.setAlpha(enabled[0] ? 1f : 0.35f);
                            for (CheckBox cb : boxes) cb.setEnabled(enabled[0]);
                            if (!enabled[0]) list.setVisibility(View.GONE);
                            update.run();
                        }
                    };
                    header.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            enabled[0] = !enabled[0];
                            t.setOn(enabled[0]);
                            prefs.edit().putBoolean(key + "_on", enabled[0]).apply();
                            apply.run();
                        }
                    });
                    apply.run();
                }
                continue;
            }
            final Toggle t = new Toggle(a, dark, prefs.getBoolean(key, DEFAULT));
            row.addView(t, new LinearLayout.LayoutParams(BlockScreen.dp(a, 48), BlockScreen.dp(a, 28)));
            row.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    t.setOn(!t.on);
                    prefs.edit().putBoolean(key, t.on).apply();
                }
            });
            col.addView(row, new LinearLayout.LayoutParams(-1, -2));
        }

        // Al final: "Quemar los barcos".
        TextView burn = new TextView(a);
        burn.setText(burnStrings()[0]);
        burn.setTextColor(0xFFED4956);
        burn.setTextSize(TypedValue.COMPLEX_UNIT_SP, 16);
        burn.setTypeface(Typeface.DEFAULT_BOLD);
        burn.setPadding(pad, BlockScreen.dp(a, 24), pad, BlockScreen.dp(a, 32));
        burn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                confirmBurn(a, d);
            }
        });
        col.addView(burn, new LinearLayout.LayoutParams(-1, -2));

        d.setContentView(page);
        Window w = d.getWindow();
        if (w != null) {
            w.setLayout(-1, -1);
            w.setStatusBarColor(bg);
            w.setNavigationBarColor(bg);
            if (!dark) w.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
        }
        d.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface dialog) {
                if (onClose != null) onClose.run();
            }
        });
        d.show();
    }

    /** Interruptor dibujado como los de Instagram: pista negra (blanca en oscuro) si esta activo. */
    private static final class Toggle extends View {
        boolean on;
        private final boolean dark;
        private final Paint track = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint thumb = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final android.graphics.RectF r = new android.graphics.RectF();

        Toggle(Context c, boolean dark, boolean on) {
            super(c);
            this.dark = dark;
            this.on = on;
        }

        void setOn(boolean v) {
            on = v;
            invalidate();
        }

        @Override
        protected void onDraw(Canvas c) {
            float w = getWidth(), h = getHeight(), rad = h / 2f;
            track.setColor(on ? (dark ? Color.WHITE : Color.BLACK) : (dark ? 0xFF363636 : 0xFFDBDBDB));
            r.set(0, 0, w, h);
            c.drawRoundRect(r, rad, rad, track);
            thumb.setColor(on && dark ? Color.BLACK : Color.WHITE);
            float tr = rad - h * 0.1f;
            c.drawCircle(on ? w - rad : rad, rad, tr, thumb);
        }
    }

    private Settings() {}
}

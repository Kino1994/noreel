.class public final Lcom/igsinreels/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igsinreels/Settings$Toggle;
    }
.end annotation


# static fields
.field public static final AI:Ljava/lang/String; = "ai"

.field private static final BURNED_FILE:Ljava/lang/String; = "igsinreels_burned"

.field public static final CAT_ADS:Ljava/lang/String; = "ads"

.field public static final CAT_FOLLOWERS:Ljava/lang/String; = "followers"

.field public static final CAT_FOLLOWING:Ljava/lang/String; = "following"

.field public static final CAT_FRIENDS:Ljava/lang/String; = "friends"

.field public static final CAT_ME:Ljava/lang/String; = "me"

.field public static final CAT_OTHERS:Ljava/lang/String; = "others"

.field private static final DEFAULT:Z = true

.field public static final DM:Ljava/lang/String; = "dm"

.field public static final DM_SENT:Ljava/lang/String; = "dm_sent"

.field public static final FEED_FOLLOWING:Ljava/lang/String; = "feed_following"

.field public static final FEED_FOR_YOU:Ljava/lang/String; = "feed_foryou"

.field private static final FOLLOWING_OPTIONS:[Ljava/lang/String;

.field private static final FOR_YOU_OPTIONS:[Ljava/lang/String;

.field private static final FRIENDS_OPTIONS:[Ljava/lang/String;

.field private static final KEYS:[Ljava/lang/String;

.field public static final OTHER_PROFILES:Ljava/lang/String; = "other_profiles"

.field public static final OTHER_REPOSTS:Ljava/lang/String; = "other_reposts"

.field public static final OWN:Ljava/lang/String; = "own"

.field private static final PREFS:Ljava/lang/String; = "igsinreels"

.field public static final REPOSTS:Ljava/lang/String; = "reposts"

.field public static final SAVED:Ljava/lang/String; = "saved"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final TAB_FOLLOWING:Ljava/lang/String; = "tab_following"

.field public static final TAB_FOR_YOU:Ljava/lang/String; = "tab_foryou"

.field public static final TAB_FRIENDS:Ljava/lang/String; = "tab_friends"

.field private static app:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$smconfirmBurn(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/igsinreels/Settings;->confirmBurn(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 15

    const-string v0, "following"

    const-string v1, "followers"

    const-string v2, "others"

    const-string v3, "me"

    const-string v4, "ads"

    .line 55
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igsinreels/Settings;->FOR_YOU_OPTIONS:[Ljava/lang/String;

    const-string v1, "friends"

    .line 56
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igsinreels/Settings;->FRIENDS_OPTIONS:[Ljava/lang/String;

    .line 57
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Settings;->FOLLOWING_OPTIONS:[Ljava/lang/String;

    const-string v1, "tab_foryou"

    const-string v2, "tab_following"

    const-string v3, "tab_friends"

    const-string v4, "feed_foryou"

    const-string v5, "feed_following"

    const-string v6, "ai"

    const-string v7, "search"

    const-string v8, "dm"

    const-string v9, "dm_sent"

    const-string v10, "own"

    const-string v11, "reposts"

    const-string v12, "saved"

    const-string v13, "other_profiles"

    const-string v14, "other_reposts"

    .line 131
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Settings;->KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowed(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "explore"

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "search"

    .line 207
    :cond_a
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/igsinreels/Settings;->currentApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    :cond_15
    const/4 v0, 0x0

    if-nez p0, :cond_19

    return v0

    .line 209
    :cond_19
    sget-object v1, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v1, :cond_22

    invoke-static {p0}, Lcom/igsinreels/Settings;->fromFile(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_22
    :try_start_22
    const-string v2, "igsinreels"

    .line 211
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2e

    return p0

    :catchall_2e
    return v0
.end method

.method static app()Landroid/content/Context;
    .registers 1

    .line 197
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    return-object v0
.end method

.method private static burnStrings()[Ljava/lang/String;
    .registers 4

    .line 273
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_b2

    goto :goto_55

    :sswitch_14
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_55

    :cond_1d
    const/4 v2, 0x5

    goto :goto_55

    :sswitch_1f
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_55

    :cond_28
    const/4 v2, 0x4

    goto :goto_55

    :sswitch_2a
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_55

    :cond_33
    const/4 v2, 0x3

    goto :goto_55

    :sswitch_35
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_55

    :cond_3e
    const/4 v2, 0x2

    goto :goto_55

    :sswitch_40
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_55

    :cond_49
    const/4 v2, 0x1

    goto :goto_55

    :sswitch_4b
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    const-string v0, "Cancelar"

    packed-switch v2, :pswitch_data_cc

    const-string v0, "Burn"

    const-string v1, "Cancel"

    const-string v2, "Burn the boats"

    const-string v3, "Your Reels settings will stay exactly as they are now and this section will disappear from the menu. There is no way back unless you clear Instagram\'s cache or all its data, or reinstall it."

    .line 298
    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_67
    const-string v1, "A configura\u00e7\u00e3o de Reels fica exatamente como est\u00e1 agora e esta sec\u00e7\u00e3o desaparece do menu. N\u00e3o h\u00e1 volta atr\u00e1s, a menos que limpes a cache ou todos os dados do Instagram, ou o reinstales."

    const-string v2, "Queimar"

    const-string v3, "Queimar os barcos"

    .line 282
    filled-new-array {v3, v3, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_72
    const-string v0, "Brucia"

    const-string v1, "Annulla"

    const-string v2, "Bruciare le barche"

    const-string v3, "La configurazione dei Reels rester\u00e0 esattamente com\'\u00e8 ora e questa sezione sparir\u00e0 dal menu. Non si torna indietro, a meno che non svuoti la cache o tutti i dati di Instagram, o lo reinstalli."

    .line 290
    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7f
    const-string v0, "Br\u00fbler"

    const-string v1, "Annuler"

    const-string v2, "Br\u00fbler les bateaux"

    const-string v3, "La configuration des Reels restera telle qu\'elle est maintenant et cette section dispara\u00eetra du menu. Pas de retour en arri\u00e8re, sauf si tu vides le cache ou toutes les donn\u00e9es d\'Instagram, ou si tu le r\u00e9installes."

    .line 286
    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8c
    const-string v1, "La configuraci\u00f3n de Reels se quedar\u00e1 exactamente como est\u00e1 ahora y este apartado desaparecer\u00e1 del men\u00fa. No hay vuelta atr\u00e1s, salvo que borres la cach\u00e9 o todos los datos de Instagram, o la reinstales."

    const-string v2, "Quemar"

    const-string v3, "Quemar los barcos"

    .line 274
    filled-new-array {v3, v3, v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_97
    const-string v0, "Verbrennen"

    const-string v1, "Abbrechen"

    const-string v2, "Die Schiffe verbrennen"

    const-string v3, "Die Reels-Einstellungen bleiben genau so, wie sie jetzt sind, und dieser Bereich verschwindet aus dem Men\u00fc. Kein Zur\u00fcck, au\u00dfer du leerst den Cache oder alle Daten von Instagram oder installierst es neu."

    .line 294
    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a4
    const-string v0, "Cremar"

    const-string v1, "Cancel\u00b7lar"

    const-string v2, "Cremar els vaixells"

    const-string v3, "La configuraci\u00f3 de Reels es quedar\u00e0 tal com est\u00e0 ara i aquest apartat desapareixer\u00e0 del men\u00fa. No hi ha marxa enrere, tret que esborris la mem\u00f2ria cau o totes les dades d\'Instagram, o la reinstal\u00b7lis."

    .line 278
    filled-new-array {v2, v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_b2
    .sparse-switch
        0xc5e -> :sswitch_4b
        0xc81 -> :sswitch_40
        0xcae -> :sswitch_35
        0xccc -> :sswitch_2a
        0xd2b -> :sswitch_1f
        0xe04 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_97
        :pswitch_8c
        :pswitch_7f
        :pswitch_72
        :pswitch_67
    .end packed-switch
.end method

.method public static burned()Z
    .registers 3

    .line 267
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/igsinreels/Settings;->currentApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    .line 268
    :cond_b
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-eqz v0, :cond_24

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "igsinreels_burned"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method private static confirmBurn(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 6

    .line 306
    invoke-static {}, Lcom/igsinreels/Settings;->burnStrings()[Ljava/lang/String;

    move-result-object v0

    .line 307
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 308
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 309
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v2, v0, v2

    const/4 v3, 0x0

    .line 310
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (10)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/igsinreels/Settings$1;

    invoke-direct {v3, p0, p1}, Lcom/igsinreels/Settings$1;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    .line 311
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p1, -0x1

    .line 331
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 333
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 334
    new-instance v2, Lcom/igsinreels/Settings$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/igsinreels/Settings$2;-><init>(Landroid/app/AlertDialog;Landroid/widget/Button;[Ljava/lang/String;Landroid/os/Handler;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static currentApplication()Landroid/content/Context;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 190
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    return-object v1

    :catchall_19
    return-object v0
.end method

.method private static fromFile(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "<boolean name=\""

    const-string v1, "/data/user/"

    const/4 v2, 0x1

    .line 144
    :try_start_5
    new-instance v3, Ljava/lang/String;

    const-string v4, "/proc/self/cmdline"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_25

    .line 146
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_25
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const v5, 0x186a0

    div-int/2addr v4, v5

    .line 148
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/igsinreels.xml"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_52

    return v2

    .line 150
    :cond_52
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" value=\"(true|false)\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_88

    :catchall_88
    :cond_88
    return v2
.end method

.method static init(Landroid/content/Context;)V
    .registers 2

    .line 201
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    :cond_c
    return-void
.end method

.method static isSelection(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "tab_foryou"

    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "tab_following"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "tab_friends"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "feed_foryou"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "feed_following"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ai"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, 0x1

    :goto_34
    return p0
.end method

.method static isTab(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "tab_foryou"

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "tab_following"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "tab_friends"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "ai"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private static optionLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 111
    invoke-static {}, Lcom/igsinreels/Settings;->optionLabels()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "following"

    const-string v2, "followers"

    const-string v3, "me"

    const-string v4, "ads"

    const-string v5, "friends"

    const/4 v6, 0x0

    const-string v7, "others"

    .line 112
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    const/4 v3, 0x7

    if-ge v2, v3, :cond_27

    .line 113
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    aget-object p0, v0, v2

    return-object p0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    return-object p0
.end method

.method private static optionLabels()[Ljava/lang/String;
    .registers 11

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_ec

    goto :goto_55

    :sswitch_14
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_55

    :cond_1d
    const/4 v2, 0x5

    goto :goto_55

    :sswitch_1f
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_55

    :cond_28
    const/4 v2, 0x4

    goto :goto_55

    :sswitch_2a
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_55

    :cond_33
    const/4 v2, 0x3

    goto :goto_55

    :sswitch_35
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_55

    :cond_3e
    const/4 v2, 0x2

    goto :goto_55

    :sswitch_40
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_55

    :cond_49
    const/4 v2, 0x1

    goto :goto_55

    :sswitch_4b
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    packed-switch v2, :pswitch_data_106

    const-string v3, "People I follow"

    const-string v4, "People who follow me"

    const-string v5, "Me"

    const-string v6, "Ads"

    const-string v7, "Friends"

    const-string v8, "%d selected"

    const-string v9, "Others"

    const-string v10, "Following"

    .line 126
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6d
    const-string v1, "Pessoas que sigo"

    const-string v2, "Pessoas que me seguem"

    const-string v3, "Eu"

    const-string v4, "Publicidade"

    const-string v5, "Amigos"

    const-string v6, "%d selecionados"

    const-string v7, "Outros"

    const-string v8, "A seguir"

    .line 122
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_82
    const-string v1, "Persone che seguo"

    const-string v2, "Persone che mi seguono"

    const-string v3, "Io"

    const-string v4, "Pubblicit\u00e0"

    const-string v5, "Amici"

    const-string v6, "%d selezionati"

    const-string v7, "Altri"

    const-string v8, "Seguiti"

    .line 124
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_97
    const-string v1, "Comptes que je suis"

    const-string v2, "Comptes qui me suivent"

    const-string v3, "Moi"

    const-string v4, "Publicit\u00e9"

    const-string v5, "Amis"

    const-string v6, "%d s\u00e9lectionn\u00e9s"

    const-string v7, "Autres"

    const-string v8, "Abonnements"

    .line 123
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_ac
    const-string v1, "Gente que sigo"

    const-string v2, "Gente que me sigue"

    const-string v3, "Yo"

    const-string v4, "Publicidad"

    const-string v5, "Amigos"

    const-string v6, "%d seleccionados"

    const-string v7, "Otros"

    const-string v8, "Siguiendo"

    .line 120
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c1
    const-string v1, "Leute, denen ich folge"

    const-string v2, "Leute, die mir folgen"

    const-string v3, "Ich"

    const-string v4, "Werbung"

    const-string v5, "Freunde"

    const-string v6, "%d ausgew\u00e4hlt"

    const-string v7, "Andere"

    const-string v8, "Gefolgt"

    .line 125
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_d6
    const-string v1, "Gent que segueixo"

    const-string v2, "Gent que em segueix"

    const-string v3, "Jo"

    const-string v4, "Publicitat"

    const-string v5, "Amics"

    const-string v6, "%d seleccionats"

    const-string v7, "Altres"

    const-string v8, "Seguint"

    .line 121
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_ec
    .sparse-switch
        0xc5e -> :sswitch_4b
        0xc81 -> :sswitch_40
        0xcae -> :sswitch_35
        0xccc -> :sswitch_2a
        0xd2b -> :sswitch_1f
        0xe04 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_c1
        :pswitch_ac
        :pswitch_97
        :pswitch_82
        :pswitch_6d
    .end packed-switch
.end method

.method static options(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    const-string v0, "tab_following"

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "feed_following"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1f

    :cond_11
    const-string v0, "tab_friends"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/igsinreels/Settings;->FRIENDS_OPTIONS:[Ljava/lang/String;

    goto :goto_1e

    :cond_1c
    sget-object p0, Lcom/igsinreels/Settings;->FOR_YOU_OPTIONS:[Ljava/lang/String;

    :goto_1e
    return-object p0

    .line 60
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/igsinreels/Settings;->FOLLOWING_OPTIONS:[Ljava/lang/String;

    return-object p0
.end method

.method private static prefsXml()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "/proc/self/cmdline"

    invoke-static {v3, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_20

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_20
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const v2, 0x186a0

    div-int/2addr v1, v2

    .line 183
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/user/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/shared_prefs/igsinreels.xml"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    return-object v0
.end method

.method public static selection(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/igsinreels/Settings;->options(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 91
    sget-object v1, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v1, :cond_18

    invoke-static {}, Lcom/igsinreels/Settings;->currentApplication()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    .line 92
    :cond_18
    sget-object v1, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v1, :cond_27

    .line 94
    invoke-static {p0}, Lcom/igsinreels/Settings;->setFromFile(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_23

    return-object v0

    .line 96
    :cond_23
    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_27
    :try_start_27
    const-string v2, "igsinreels"

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_36

    return-object v0

    .line 102
    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3f

    return-object v1

    :catchall_3f
    return-object v0
.end method

.method private static setFromFile(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<set name=\""

    const/4 v1, 0x0

    .line 162
    :try_start_3
    invoke-static {}, Lcom/igsinreels/Settings;->prefsXml()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    return-object v1

    .line 164
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"\\s*(/>|>(.*?)</set>)"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    .line 165
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_2c

    return-object v1

    .line 167
    :cond_2c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x2

    .line 168
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    const-string v3, "<string>([^<]*)</string>"

    .line 169
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 170
    :goto_46
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_55

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_56

    goto :goto_46

    :cond_55
    return-object v0

    :catchall_56
    return-object v1
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 44

    move-object/from16 v0, p0

    .line 354
    invoke-static/range {p0 .. p0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    const-string v1, "igsinreels"

    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 356
    invoke-static {}, Lcom/igsinreels/Settings;->strings()[Ljava/lang/String;

    move-result-object v9

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    const/4 v10, 0x1

    if-ne v3, v4, :cond_23

    move v11, v10

    goto :goto_24

    :cond_23
    move v11, v2

    :goto_24
    if-eqz v11, :cond_29

    const/high16 v14, -0x1000000

    goto :goto_2a

    :cond_29
    const/4 v14, -0x1

    :goto_2a
    if-eqz v11, :cond_2e

    const/4 v15, -0x1

    goto :goto_30

    :cond_2e
    const/high16 v15, -0x1000000

    :goto_30
    if-eqz v11, :cond_36

    const v3, -0x575758

    goto :goto_39

    :cond_36
    const v3, -0x8c8c8d

    .line 363
    :goto_39
    new-instance v8, Landroid/app/Dialog;

    if-eqz v11, :cond_41

    const v4, 0x1030129

    goto :goto_44

    :cond_41
    const v4, 0x103012c

    .line 364
    :goto_44
    invoke-direct {v8, v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 365
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 367
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 368
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 371
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    .line 373
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, 0x40800000    # 4.0f

    .line 374
    invoke-static {v0, v5}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v0, v12}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v2, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 375
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u2190"

    .line 376
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41d00000    # 26.0f

    const/4 v12, 0x2

    .line 378
    invoke-virtual {v5, v12, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v6, 0x11

    .line 379
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 380
    new-instance v6, Lcom/igsinreels/Settings$3;

    invoke-direct {v6, v8}, Lcom/igsinreels/Settings$3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42400000    # 48.0f

    invoke-static {v0, v10}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-static {v0, v10}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v6, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 388
    aget-object v6, v9, v2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v12, 0x2

    .line 390
    invoke-virtual {v5, v12, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 391
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 392
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v6, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x41400000    # 12.0f

    .line 393
    invoke-static {v0, v13}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 394
    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42600000    # 56.0f

    invoke-static {v0, v10}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v13, -0x1

    invoke-direct {v5, v13, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 398
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 399
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 401
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v12, v13, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v4, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    aget-object v12, v9, v5

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v3, 0x2

    .line 406
    invoke-virtual {v4, v3, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 407
    invoke-static {v0, v3}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v5, 0x41000000    # 8.0f

    .line 408
    invoke-static {v0, v5}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v5}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v4, v13, v3, v13, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 409
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v12, v2

    .line 411
    :goto_120
    sget-object v3, Lcom/igsinreels/Settings;->KEYS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v12, v4, :cond_464

    .line 412
    aget-object v4, v3, v12

    .line 413
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    .line 415
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 416
    invoke-virtual {v3, v13, v2, v13, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/high16 v2, 0x42600000    # 56.0f

    .line 417
    invoke-static {v0, v2}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 418
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v21, v12, 0x3

    .line 419
    aget-object v2, v9, v21

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v10, 0x2

    .line 421
    invoke-virtual {v5, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 422
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    const/4 v7, -0x2

    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    invoke-static {v4}, Lcom/igsinreels/Settings;->isSelection(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_400

    const/4 v2, 0x1

    .line 426
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 427
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 428
    invoke-static {v0, v2}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v3, v13, v8, v13, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 429
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 432
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 433
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    if-eqz v11, :cond_1a6

    const v8, -0xededee

    goto :goto_1a7

    :cond_1a6
    const/4 v8, -0x1

    .line 434
    :goto_1a7
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 435
    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v10

    if-eqz v11, :cond_1b6

    const v8, -0xc9c9ca

    goto :goto_1b9

    :cond_1b6
    const v8, -0x242425

    :goto_1b9
    invoke-virtual {v7, v10, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/high16 v10, 0x41200000    # 10.0f

    .line 436
    invoke-static {v0, v10}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 437
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 438
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v10, -0x1

    invoke-direct {v7, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x41000000    # 8.0f

    .line 439
    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 440
    invoke-virtual {v3, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41700000    # 15.0f

    const/4 v8, 0x2

    .line 443
    invoke-virtual {v10, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v8, 0x41600000    # 14.0f

    .line 444
    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v7

    move-object/from16 v17, v3

    move-object/from16 v30, v9

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v0, v9}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v3

    move-object/from16 v25, v5

    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v9}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v10, v7, v3, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 445
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v7, -0x1

    invoke-direct {v3, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v7, v3, [Z

    .line 447
    invoke-static {v4}, Lcom/igsinreels/Settings;->isTab(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_on"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_236

    goto :goto_23a

    :cond_236
    const/4 v5, 0x0

    const/16 v16, 0x0

    goto :goto_23d

    :cond_23a
    :goto_23a
    move/from16 v16, v3

    const/4 v5, 0x0

    :goto_23d
    aput-boolean v16, v7, v5

    .line 448
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 449
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x8

    .line 450
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 451
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v27, v6

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    invoke-static {v4}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 453
    invoke-static {}, Lcom/igsinreels/Settings;->optionLabels()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aget-object v3, v3, v5

    .line 454
    new-instance v5, Lcom/igsinreels/Settings$4;

    invoke-direct {v5, v10, v3, v6, v9}, Lcom/igsinreels/Settings$4;-><init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/Set;Landroid/widget/LinearLayout;)V

    .line 460
    invoke-static {v4}, Lcom/igsinreels/Settings;->options(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v5

    sget-object v5, Lcom/igsinreels/Settings;->FOLLOWING_OPTIONS:[Ljava/lang/String;

    if-ne v3, v5, :cond_275

    const/16 v29, 0x1

    goto :goto_277

    :cond_275
    const/16 v29, 0x0

    .line 461
    :goto_277
    invoke-static {v4}, Lcom/igsinreels/Settings;->options(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    move/from16 v31, v14

    const/4 v14, 0x0

    :goto_27f
    if-ge v14, v3, :cond_354

    move-object/from16 v32, v7

    aget-object v7, v5, v14

    move/from16 v33, v13

    .line 462
    new-instance v13, Landroid/widget/CheckBox;

    invoke-direct {v13, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    move/from16 v34, v3

    if-eqz v29, :cond_2a1

    const-string v3, "following"

    .line 463
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a1

    invoke-static {}, Lcom/igsinreels/Settings;->optionLabels()[Ljava/lang/String;

    move-result-object v3

    const/16 v35, 0x7

    aget-object v3, v3, v35

    goto :goto_2a5

    :cond_2a1
    invoke-static {v7}, Lcom/igsinreels/Settings;->optionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2a5
    invoke-virtual {v13, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setTextColor(I)V

    move-object/from16 v19, v4

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x2

    .line 465
    invoke-virtual {v13, v4, v3}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 466
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v13, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz v11, :cond_2be

    const/4 v4, -0x1

    goto :goto_2c0

    :cond_2be
    const/high16 v4, -0x1000000

    .line 467
    :goto_2c0
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v4, 0x40c00000    # 6.0f

    .line 468
    invoke-static {v0, v4}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v4

    move/from16 v35, v15

    const/high16 v15, 0x41200000    # 10.0f

    invoke-static {v0, v15}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v3

    move-object/from16 v36, v5

    invoke-static {v0, v15}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v13, v4, v3, v15, v5}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 469
    new-instance v15, Lcom/igsinreels/Settings$5;

    move-object/from16 v5, v17

    move/from16 v17, v34

    const/high16 v24, 0x41700000    # 15.0f

    move-object v3, v15

    move-object/from16 v34, v19

    move-object v4, v6

    move-object/from16 v18, v2

    move/from16 v19, v12

    move-object/from16 v2, v25

    move-object/from16 v20, v28

    move-object/from16 v25, v36

    const/16 v28, 0x10

    move-object v12, v5

    move/from16 v36, v11

    const/high16 v11, 0x41000000    # 8.0f

    move-object v5, v7

    move-object/from16 v7, v27

    move-object/from16 v27, v6

    move-object v6, v1

    move-object/from16 v38, v7

    move-object/from16 v37, v22

    move/from16 v22, v24

    move-object/from16 v39, v32

    move-object/from16 v7, v34

    move-object/from16 v41, v8

    move-object/from16 v40, v23

    const/high16 v23, 0x41600000    # 14.0f

    move-object/from16 v8, v20

    invoke-direct/range {v3 .. v8}, Lcom/igsinreels/Settings$5;-><init>(Ljava/util/Set;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v13, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 477
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    invoke-static {v0, v11}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 479
    invoke-virtual {v9, v13, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v3, v41

    .line 480
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v8, v3

    move/from16 v3, v17

    move-object/from16 v28, v20

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    move/from16 v13, v33

    move-object/from16 v4, v34

    move/from16 v15, v35

    move/from16 v11, v36

    move-object/from16 v22, v37

    move-object/from16 v27, v38

    move-object/from16 v7, v39

    move-object/from16 v23, v40

    move-object/from16 v25, v2

    move-object/from16 v17, v12

    move-object/from16 v2, v18

    move/from16 v12, v19

    goto/16 :goto_27f

    :cond_354
    move-object/from16 v18, v2

    move-object/from16 v34, v4

    move-object/from16 v39, v7

    move-object v3, v8

    move/from16 v36, v11

    move/from16 v19, v12

    move/from16 v33, v13

    move/from16 v35, v15

    move-object/from16 v12, v17

    move-object/from16 v37, v22

    move-object/from16 v40, v23

    move-object/from16 v2, v25

    move-object/from16 v38, v27

    move-object/from16 v20, v28

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v23, 0x41600000    # 14.0f

    .line 482
    new-instance v4, Lcom/igsinreels/Settings$6;

    move-object/from16 v6, v20

    move-object/from16 v5, v39

    invoke-direct {v4, v5, v9, v6}, Lcom/igsinreels/Settings$6;-><init>([ZLandroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 491
    invoke-static/range {v34 .. v34}, Lcom/igsinreels/Settings;->isTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f4

    .line 493
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 494
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 495
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x10

    .line 496
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 497
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v7, v4, v8, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    new-instance v2, Lcom/igsinreels/Settings$Toggle;

    aget-boolean v7, v5, v4

    move/from16 v15, v36

    invoke-direct {v2, v0, v15, v7}, Lcom/igsinreels/Settings$Toggle;-><init>(Landroid/content/Context;ZZ)V

    .line 499
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v11

    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v11, -0x1

    invoke-direct {v7, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v10, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 501
    new-instance v11, Lcom/igsinreels/Settings$7;

    move-object/from16 v24, v11

    move-object/from16 v25, v18

    move-object/from16 v26, v5

    move-object/from16 v27, v3

    move-object/from16 v28, v9

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v29}, Lcom/igsinreels/Settings$7;-><init>(Landroid/widget/LinearLayout;[ZLjava/util/List;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V

    .line 510
    new-instance v9, Lcom/igsinreels/Settings$8;

    move-object v3, v9

    move-object v4, v5

    move-object v5, v2

    move-object v6, v1

    move-object/from16 v7, v34

    move-object v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/igsinreels/Settings$8;-><init>([ZLcom/igsinreels/Settings$Toggle;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_3fa

    :cond_3f4
    move/from16 v15, v36

    const/16 v13, 0x10

    const/high16 v14, 0x3f800000    # 1.0f

    :goto_3fa
    move-object/from16 v3, v38

    const/4 v4, 0x1

    const/high16 v6, 0x42400000    # 48.0f

    goto :goto_44e

    :cond_400
    move-object/from16 v34, v4

    move-object/from16 v38, v6

    move-object/from16 v30, v9

    move/from16 v19, v12

    move/from16 v33, v13

    move/from16 v31, v14

    move/from16 v35, v15

    move-object/from16 v37, v22

    move-object/from16 v40, v23

    const/16 v13, 0x10

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v23, 0x41600000    # 14.0f

    move-object v12, v3

    move v15, v11

    .line 523
    new-instance v2, Lcom/igsinreels/Settings$Toggle;

    move-object/from16 v3, v34

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v2, v0, v15, v5}, Lcom/igsinreels/Settings$Toggle;-><init>(Landroid/content/Context;ZZ)V

    .line 524
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v0, v6}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41e00000    # 28.0f

    invoke-static {v0, v8}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    new-instance v5, Lcom/igsinreels/Settings$9;

    invoke-direct {v5, v2, v1, v3}, Lcom/igsinreels/Settings$9;-><init>(Lcom/igsinreels/Settings$Toggle;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v3, v38

    invoke-virtual {v3, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_44e
    add-int/lit8 v12, v19, 0x1

    move-object v6, v3

    move v10, v14

    move v11, v15

    move-object/from16 v9, v30

    move/from16 v14, v31

    move/from16 v13, v33

    move/from16 v15, v35

    move-object/from16 v7, v37

    move-object/from16 v8, v40

    const/4 v2, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    goto/16 :goto_120

    :cond_464
    move-object v3, v6

    move-object/from16 v37, v7

    move-object/from16 v40, v8

    move v15, v11

    move/from16 v33, v13

    move/from16 v31, v14

    .line 536
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-static {}, Lcom/igsinreels/Settings;->burnStrings()[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x12b6aa

    .line 538
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v4, 0x2

    .line 539
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 540
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41c00000    # 24.0f

    .line 541
    invoke-static {v0, v2}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v0, v4}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v4

    move/from16 v5, v33

    invoke-virtual {v1, v5, v2, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 542
    new-instance v2, Lcom/igsinreels/Settings$10;

    move-object/from16 v4, v40

    invoke-direct {v2, v0, v4}, Lcom/igsinreels/Settings$10;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v5, -0x1

    invoke-direct {v0, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v37

    .line 550
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 551
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4d4

    .line 553
    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setLayout(II)V

    move/from16 v12, v31

    .line 554
    invoke-virtual {v0, v12}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 555
    invoke-virtual {v0, v12}, Landroid/view/Window;->setNavigationBarColor(I)V

    if-nez v15, :cond_4d4

    .line 556
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 558
    :cond_4d4
    new-instance v0, Lcom/igsinreels/Settings$11;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/igsinreels/Settings$11;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 564
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static strings()[Ljava/lang/String;
    .registers 20

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_16a

    goto :goto_55

    :sswitch_14
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_55

    :cond_1d
    const/4 v2, 0x5

    goto :goto_55

    :sswitch_1f
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_55

    :cond_28
    const/4 v2, 0x4

    goto :goto_55

    :sswitch_2a
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_55

    :cond_33
    const/4 v2, 0x3

    goto :goto_55

    :sswitch_35
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_55

    :cond_3e
    const/4 v2, 0x2

    goto :goto_55

    :sswitch_40
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_55

    :cond_49
    const/4 v2, 0x1

    goto :goto_55

    :sswitch_4b
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :goto_55
    packed-switch v2, :pswitch_data_184

    const-string v3, "Reels"

    const-string v4, "Turn off what you don\'t want to see: you\'ll get the STOP screen. DM reels play one at a time."

    const-string v5, "Close"

    const-string v6, "Reels tab: for you"

    const-string v7, "Reels tab: following"

    const-string v8, "Reels tab: friends"

    const-string v9, "Posts: for you"

    const-string v10, "Posts: following"

    const-string v11, "AI-generated content"

    const-string v12, "Reels in search"

    const-string v13, "Reels sent to you in DMs"

    const-string v14, "Reels you send in DMs"

    const-string v15, "Reels you post"

    const-string v16, "My reposts"

    const-string v17, "Saved reels"

    const-string v18, "Reels on other profiles"

    const-string v19, "Reposts on other profiles"

    .line 250
    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7f
    const-string v1, "Reels"

    const-string v2, "Desliga o que n\u00e3o queres ver: aparece o ecr\u00e3 STOP. Os reels de DM veem-se um a um."

    const-string v3, "Fechar"

    const-string v4, "Separador Reels: para ti"

    const-string v5, "Separador Reels: a seguir"

    const-string v6, "Separador Reels: amigos"

    const-string v7, "Publica\u00e7\u00f5es: para ti"

    const-string v8, "Publica\u00e7\u00f5es: a seguir"

    const-string v9, "Conte\u00fado gerado com IA"

    const-string v10, "Reels na pesquisa"

    const-string v11, "Reels que te enviam por DM"

    const-string v12, "Reels que envias por DM"

    const-string v13, "Reels que publicas"

    const-string v14, "Os meus reposts"

    const-string v15, "Reels guardados"

    const-string v16, "Reels de outros perfis"

    const-string v17, "Reposts de outros perfis"

    .line 230
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a6
    const-string v1, "Reels"

    const-string v2, "Spegni ci\u00f2 che non vuoi vedere: comparir\u00e0 la schermata STOP. I reels in DM si vedono uno alla volta."

    const-string v3, "Chiudi"

    const-string v4, "Scheda Reels: per te"

    const-string v5, "Scheda Reels: seguiti"

    const-string v6, "Scheda Reels: amici"

    const-string v7, "Post: per te"

    const-string v8, "Post: seguiti"

    const-string v9, "Contenuti generati con IA"

    const-string v10, "Reels nella ricerca"

    const-string v11, "Reels ricevuti in DM"

    const-string v12, "Reels inviati in DM"

    const-string v13, "Reels che pubblichi"

    const-string v14, "I miei repost"

    const-string v15, "Reels salvati"

    const-string v16, "Reels di altri profili"

    const-string v17, "Repost di altri profili"

    .line 240
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_cd
    const-string v1, "Reels"

    const-string v2, "D\u00e9sactive ce que tu ne veux pas voir : l\'\u00e9cran STOP appara\u00eetra. Les reels des MP se voient un par un."

    const-string v3, "Fermer"

    const-string v4, "Onglet Reels : pour toi"

    const-string v5, "Onglet Reels : abonnements"

    const-string v6, "Onglet Reels : amis"

    const-string v7, "Publications : pour toi"

    const-string v8, "Publications : abonnements"

    const-string v9, "Contenu g\u00e9n\u00e9r\u00e9 par IA"

    const-string v10, "Reels dans la recherche"

    const-string v11, "Reels re\u00e7us en MP"

    const-string v12, "Reels envoy\u00e9s en MP"

    const-string v13, "Reels que tu publies"

    const-string v14, "Mes republications"

    const-string v15, "Reels enregistr\u00e9s"

    const-string v16, "Reels d\'autres profils"

    const-string v17, "Republications d\'autres profils"

    .line 235
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_f4
    const-string v1, "Reels"

    const-string v2, "Apaga lo que no quieras ver: saldr\u00e1 la pantalla STOP. Los reels de MD se ven de uno en uno."

    const-string v3, "Cerrar"

    const-string v4, "Pesta\u00f1a Reels: para ti"

    const-string v5, "Pesta\u00f1a Reels: siguiendo"

    const-string v6, "Pesta\u00f1a Reels: amigos"

    const-string v7, "Publicaciones: para ti"

    const-string v8, "Publicaciones: siguiendo"

    const-string v9, "Contenido generado con IA"

    const-string v10, "Reels en la b\u00fasqueda"

    const-string v11, "Reels que te env\u00edan por MD"

    const-string v12, "Reels que env\u00edas por MD"

    const-string v13, "Reels que publicas"

    const-string v14, "Mis reposts"

    const-string v15, "Reels guardados"

    const-string v16, "Reels de otros perfiles"

    const-string v17, "Reposts de otros perfiles"

    .line 220
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_11b
    const-string v1, "Reels"

    const-string v2, "Schalte aus, was du nicht sehen willst: dann erscheint STOP. DM-Reels nur einzeln."

    const-string v3, "Schlie\u00dfen"

    const-string v4, "Reels-Tab: f\u00fcr dich"

    const-string v5, "Reels-Tab: gefolgt"

    const-string v6, "Reels-Tab: Freunde"

    const-string v7, "Beitr\u00e4ge: f\u00fcr dich"

    const-string v8, "Beitr\u00e4ge: gefolgt"

    const-string v9, "KI-generierte Inhalte"

    const-string v10, "Reels in der Suche"

    const-string v11, "Empfangene Reels (DM)"

    const-string v12, "Gesendete Reels (DM)"

    const-string v13, "Reels, die du postest"

    const-string v14, "Meine Reposts"

    const-string v15, "Gespeicherte Reels"

    const-string v16, "Reels anderer Profile"

    const-string v17, "Reposts anderer Profile"

    .line 245
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_142
    const-string v1, "Reels"

    const-string v2, "Apaga el que no vulguis veure: sortir\u00e0 la pantalla STOP. Els reels de MD es veuen d\'un en un."

    const-string v3, "Tancar"

    const-string v4, "Pestanya Reels: per a tu"

    const-string v5, "Pestanya Reels: seguint"

    const-string v6, "Pestanya Reels: amics"

    const-string v7, "Publicacions: per a tu"

    const-string v8, "Publicacions: seguint"

    const-string v9, "Contingut generat amb IA"

    const-string v10, "Reels a la cerca"

    const-string v11, "Reels que t\'envien per MD"

    const-string v12, "Reels que envies per MD"

    const-string v13, "Reels que publiques"

    const-string v14, "Els meus reposts"

    const-string v15, "Reels desats"

    const-string v16, "Reels d\'altres perfils"

    const-string v17, "Reposts d\'altres perfils"

    .line 225
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_16a
    .sparse-switch
        0xc5e -> :sswitch_4b
        0xc81 -> :sswitch_40
        0xcae -> :sswitch_35
        0xccc -> :sswitch_2a
        0xd2b -> :sswitch_1f
        0xe04 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_142
        :pswitch_11b
        :pswitch_f4
        :pswitch_cd
        :pswitch_a6
        :pswitch_7f
    .end packed-switch
.end method

.method public static tabEnabled(Ljava/lang/String;)Z
    .registers 6

    .line 74
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    if-nez v0, :cond_b

    invoke-static {}, Lcom/igsinreels/Settings;->currentApplication()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    .line 75
    :cond_b
    sget-object v0, Lcom/igsinreels/Settings;->app:Landroid/content/Context;

    const-string v1, "_on"

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Settings;->fromFile(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    const/4 v2, 0x1

    :try_start_26
    const-string v3, "igsinreels"

    const/4 v4, 0x0

    .line 77
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_41

    return p0

    :catchall_41
    return v2
.end method

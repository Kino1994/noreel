.class public final Lcom/igsinreels/Gate;
.super Ljava/lang/Object;
.source "Gate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igsinreels/Gate$Cover;,
        Lcom/igsinreels/Gate$TouchFilter;,
        Lcom/igsinreels/Gate$SingleReel;,
        Lcom/igsinreels/Gate$BlockScreenTitle;
    }
.end annotation


# static fields
.field private static final AI_SEEN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARG_FEED_INITIAL:Ljava/lang/String; = "ContextualFeedFragment.ARGUMENT_MEDIA_INITIAL_POSITION"

.field private static final ARG_FEED_MODE:Ljava/lang/String; = "ContextualFeedFragment.ARGUMENT_CONTEXTUAL_FEED_MODE"

.field private static final AUDIO_WATCHED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/ViewTreeObserver;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCKED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLLAPSED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTEXTUAL_FEED:Ljava/lang/String; = "instagram.features.feed.contextualfeed.ContextualFeedFragment"

.field private static final COVERS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final DETECTION:Ljava/util/regex/Pattern;

.field private static final DM_BUBBLES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static DM_CLASSES:Ljava/lang/String; = "__DM_CLASSES__"

.field static final EXPLORE:Ljava/lang/String; = "explore"

.field private static EXPLORE_CLASSES:Ljava/lang/String; = "__EXPLORE_CLASSES__"

.field private static final EXPLORE_SOURCE:Ljava/util/regex/Pattern;

.field private static final FEED_COVERED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FEED_WATCHED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/ViewTreeObserver;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static FOLLOWED_BY:Ljava/lang/String; = "__FOLLOWED_BY__"

.field private static final FOLLOWING_LABEL:Ljava/util/regex/Pattern;

.field private static FOLLOWS_ME:Ljava/lang/String; = "__FOLLOWS_ME__"

.field private static FOLLOW_STATUS:Ljava/lang/String; = "__FOLLOW_STATUS__"

.field private static final GUARDED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HEADER_VIEWS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOLDER_ONLY:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static HOME_CLASSES:Ljava/lang/String; = "__HOME_CLASSES__"

.field static final HOME_FEED:Ljava/lang/String; = "home_feed"

.field private static final HOOKED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCKED_PAGES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAIN:Landroid/os/Handler;

.field private static final MAX_SKIPS:I = 0xa

.field private static MAX_VISITED:I = 0x0

.field private static MEDIA_AI:Ljava/lang/String; = "__MEDIA_AI__"

.field private static MEDIA_AUTHOR:Ljava/lang/String; = "__MEDIA_AUTHOR__"

.field private static MEDIA_CAROUSEL:Ljava/lang/String; = "__MEDIA_CAROUSEL__"

.field private static final MEDIA_ID:Ljava/util/regex/Pattern;

.field private static MEDIA_INJECTED:Ljava/lang/String; = "__MEDIA_INJECTED__"

.field private static final MULTI:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_AI:Ljava/util/regex/Pattern;

.field private static final OUR_ROW:Ljava/lang/String; = "REELS_SECOND"

.field private static final PENDING:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final REEL:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final REELS_TAB:Ljava/lang/String; = "reels_tab"

.field private static REPOST_CLASSES:Ljava/lang/String; = "__REPOST_CLASSES__"

.field private static final ROW_MEDIA:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static SAVED_CLASSES:Ljava/lang/String; = "__SAVED_CLASSES__"

.field private static final SCAN_COLLAPSED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static SELF_CLASSES:Ljava/lang/String; = "__SELF_CLASSES__"

.field public static final SETTINGS_ROUTE:Ljava/lang/String; = "igsinreels_reels"

.field private static final STOPPED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAB_PAGES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IGSR"

.field private static final TEMPLATE_ROW:Ljava/lang/String; = "FAVORITES"

.field private static final USER_PROFILE:Ljava/lang/String; = "com.instagram.profile.fragment.UserDetailFragment"

.field static final VIEWER:Ljava/lang/String; = "viewer"

.field private static final VIEWERS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/igsinreels/Gate$SingleReel;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIEWER_SOURCE:Ljava/util/regex/Pattern;

.field private static final WATCHED:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/Window;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final XMA_REEL:Ljava/util/regex/Pattern;

.field private static dirRef:Landroid/view/View;

.field private static dirRefTop:I

.field private static exhaustedMode:Ljava/lang/String;

.field private static volatile feedMode:Ljava/lang/String;

.field private static feedScanAt:J

.field private static focus:Landroid/media/AudioFocusRequest;

.field private static fragmentTagId:I

.field private static headerScan:J

.field private static idPath:[Ljava/lang/reflect/Field;

.field private static lastBound:Landroid/view/View;

.field private static volatile lastTabMode:Ljava/lang/String;

.field private static lastTapMedia:Ljava/lang/Object;

.field private static lastTapMediaTime:J

.field private static lastTapSent:Ljava/lang/Boolean;

.field private static lastTapTime:J

.field private static muted:Z

.field private static myId:Ljava/lang/String;

.field private static final removedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static scrollDir:I

.field private static final skipCheck:Ljava/lang/Runnable;

.field private static skipsInARow:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetCOVERS()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->COVERS:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDM_BUBBLES()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->DM_BUBBLES:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetHOLDER_ONLY()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLOCKED_PAGES()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->LOCKED_PAGES:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetMAIN()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetPENDING()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAB_PAGES()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->TAB_PAGES:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVIEWERS()Ljava/util/WeakHashMap;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->VIEWERS:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetexhaustedMode()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->exhaustedMode:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfeedScanAt()J
    .registers 2

    sget-wide v0, Lcom/igsinreels/Gate;->feedScanAt:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$sfgetlastTabMode()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->lastTabMode:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmuted()Z
    .registers 1

    sget-boolean v0, Lcom/igsinreels/Gate;->muted:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetscrollDir()I
    .registers 1

    sget v0, Lcom/igsinreels/Gate;->scrollDir:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetskipCheck()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Lcom/igsinreels/Gate;->skipCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetskipsInARow()I
    .registers 1

    sget v0, Lcom/igsinreels/Gate;->skipsInARow:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputexhaustedMode(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/igsinreels/Gate;->exhaustedMode:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfeedScanAt(J)V
    .registers 2

    sput-wide p0, Lcom/igsinreels/Gate;->feedScanAt:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlastTapMedia(Ljava/lang/Object;)V
    .registers 1

    sput-object p0, Lcom/igsinreels/Gate;->lastTapMedia:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlastTapMediaTime(J)V
    .registers 2

    sput-wide p0, Lcom/igsinreels/Gate;->lastTapMediaTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlastTapSent(Ljava/lang/Boolean;)V
    .registers 1

    sput-object p0, Lcom/igsinreels/Gate;->lastTapSent:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputlastTapTime(J)V
    .registers 2

    sput-wide p0, Lcom/igsinreels/Gate;->lastTapTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputskipsInARow(I)V
    .registers 1

    sput p0, Lcom/igsinreels/Gate;->skipsInARow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smevaluate(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/igsinreels/Gate;->evaluate(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smexhausted(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/igsinreels/Gate;->exhausted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smtrackScrollDirection()V
    .registers 0

    invoke-static {}, Lcom/igsinreels/Gate;->trackScrollDirection()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwatchTouches(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/igsinreels/Gate;->watchTouches(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string v0, "clipsViewerSource=([A-Za-z_]+)"

    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->VIEWER_SOURCE:Ljava/util/regex/Pattern;

    const-string v0, "\\d{6,}_\\d+"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->MEDIA_ID:Ljava/util/regex/Pattern;

    const-string v0, "(?i)EXPLORE|SEARCH|SERP|KEYWORD|HASHTAG"

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->EXPLORE_SOURCE:Ljava/util/regex/Pattern;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/igsinreels/Gate;->MAIN:Landroid/os/Handler;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->FIELDS:Ljava/util/Map;

    const/16 v0, 0x190

    .line 136
    sput v0, Lcom/igsinreels/Gate;->MAX_VISITED:I

    .line 260
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->LOCKED_PAGES:Ljava/util/WeakHashMap;

    .line 263
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->TAB_PAGES:Ljava/util/WeakHashMap;

    .line 276
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->HEADER_VIEWS:Ljava/util/WeakHashMap;

    const-string v0, "(?i)(Siguiendo|Following|Seguint|A seguir|Seguindo|Abonnements|Seguiti|Gefolgt|Abonniert)\\s*\\W*"

    .line 336
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->FOLLOWING_LABEL:Ljava/util/regex/Pattern;

    .line 393
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->AUDIO_WATCHED:Ljava/util/WeakHashMap;

    const/4 v0, 0x1

    .line 433
    sput v0, Lcom/igsinreels/Gate;->scrollDir:I

    .line 468
    new-instance v0, Lcom/igsinreels/Gate$4;

    invoke-direct {v0}, Lcom/igsinreels/Gate$4;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->skipCheck:Ljava/lang/Runnable;

    .line 585
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    .line 586
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->BLOCKED:Ljava/util/WeakHashMap;

    .line 587
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->HOOKED:Ljava/util/WeakHashMap;

    .line 628
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    const-string v0, "(?i)xma_clips?|xma_reels?|CLIPS?_SHARE|REELS?_SHARE"

    .line 631
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->XMA_REEL:Ljava/util/regex/Pattern;

    .line 794
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->REEL:Ljava/util/WeakHashMap;

    .line 796
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->MULTI:Ljava/util/WeakHashMap;

    .line 799
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->DM_BUBBLES:Ljava/util/WeakHashMap;

    .line 834
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->AI_SEEN:Ljava/util/Set;

    const-string v0, "(?i)\\s*(|none|unknown|unset|not_detected|no_detection|null)\\s*"

    .line 868
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->NO_AI:Ljava/util/regex/Pattern;

    const-string v0, "[A-Z0-9_]{3,40}"

    .line 888
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->DETECTION:Ljava/util/regex/Pattern;

    .line 1094
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->COVERS:Ljava/util/WeakHashMap;

    .line 1260
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->WATCHED:Ljava/util/WeakHashMap;

    .line 1679
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->GUARDED:Ljava/util/WeakHashMap;

    .line 1682
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->VIEWERS:Ljava/util/WeakHashMap;

    .line 1852
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    const-string v0, "tab_foryou"

    .line 1882
    sput-object v0, Lcom/igsinreels/Gate;->lastTabMode:Ljava/lang/String;

    const-string v0, "foryou"

    .line 2091
    sput-object v0, Lcom/igsinreels/Gate;->feedMode:Ljava/lang/String;

    .line 2163
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->FEED_WATCHED:Ljava/util/WeakHashMap;

    .line 2164
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->FEED_COVERED:Ljava/util/WeakHashMap;

    .line 2205
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->ROW_MEDIA:Ljava/util/WeakHashMap;

    .line 2217
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->SCAN_COLLAPSED:Ljava/util/WeakHashMap;

    .line 2220
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->COLLAPSED:Ljava/util/WeakHashMap;

    .line 2389
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/igsinreels/Gate;->STOPPED:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activityOf(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2

    .line 1263
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_12

    .line 1264
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 1265
    :cond_b
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method private static addRow(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1963
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 1964
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    .line 1966
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_ba

    .line 1967
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 1968
    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1969
    instance-of v8, v6, Ljava/lang/Enum;

    if-eqz v8, :cond_32

    .line 1970
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/igsinreels/Gate;->ourKey(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_b4

    :cond_32
    if-eqz v6, :cond_46

    .line 1972
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "FbtLiteralValue"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_46

    move-object v6, v2

    goto :goto_b4

    :cond_46
    if-eqz v6, :cond_6d

    .line 1974
    invoke-static {v6}, Lcom/igsinreels/Gate;->hasStringField(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 1976
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v8, Ljava/lang/String;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v8, v9}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const-string v8, "igsinreels_reels"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_b4

    :cond_6d
    if-eqz v6, :cond_b4

    .line 1978
    invoke-static {v6}, Lcom/igsinreels/Gate;->constValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1979
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_8e

    .line 1980
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/igsinreels/Gate;->reelsIcon(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/igsinreels/Gate;->newConst(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_b4

    :cond_8e
    if-eqz v7, :cond_b4

    .line 1981
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".FbtModel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 1982
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/igsinreels/Gate$BlockScreenTitle;->get()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/igsinreels/Gate;->literalFbt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/igsinreels/Gate;->newConst(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1985
    :cond_b4
    :goto_b4
    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_ba
    if-nez v5, :cond_bd

    return-void

    .line 1991
    :cond_bd
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    array-length v4, p1

    move v6, v3

    :goto_c7
    if-ge v6, v4, :cond_da

    aget-object v8, p1, v6

    .line 1992
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ne v9, v10, :cond_d7

    move-object v2, v8

    :cond_d7
    add-int/lit8 v6, v6, 0x1

    goto :goto_c7

    :cond_da
    if-nez v2, :cond_dd

    return-void

    .line 1995
    :cond_dd
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 1996
    array-length v4, p1

    new-array v4, v4, [Ljava/lang/Object;

    move v6, v3

    .line 1997
    :goto_e5
    array-length v8, p1

    if-ge v6, v8, :cond_111

    .line 1998
    aget-object v8, p1, v6

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_f3

    .line 1999
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v4, v6

    goto :goto_10e

    :cond_f3
    move v8, v3

    .line 2002
    :goto_f4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_10e

    .line 2003
    aget-object v9, v1, v8

    if-eqz v9, :cond_10b

    aget-object v10, p1, v6

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 2004
    aget-object v8, v1, v8

    aput-object v8, v4, v6

    goto :goto_10e

    :cond_10b
    add-int/lit8 v8, v8, 0x1

    goto :goto_f4

    :cond_10e
    :goto_10e
    add-int/lit8 v6, v6, 0x1

    goto :goto_e5

    .line 2009
    :cond_111
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2010
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2011
    :goto_118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_12c

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    aget-object v4, v1, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_118

    .line 2012
    :cond_12c
    invoke-interface {p0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static aiBlocked(Ljava/lang/Object;)Z
    .registers 5

    .line 913
    invoke-static {p0}, Lcom/igsinreels/Gate;->isCarousel(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 914
    invoke-static {p0}, Lcom/igsinreels/Gate;->carouselFirst(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 915
    invoke-static {p0}, Lcom/igsinreels/Gate;->isAi(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz v0, :cond_19

    invoke-static {v0}, Lcom/igsinreels/Gate;->isAi(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_19
    return v1

    .line 916
    :cond_1a
    invoke-static {p0}, Lcom/igsinreels/Gate;->isAi(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    return v1

    :cond_21
    const-string v0, "ai"

    .line 919
    invoke-static {v0}, Lcom/igsinreels/Settings;->tabEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2b

    return v3

    .line 920
    :cond_2b
    invoke-static {v0}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 921
    invoke-static {p0}, Lcom/igsinreels/Gate;->categories(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    return v1

    :cond_4a
    return v3
.end method

.method public static autoClose(Landroid/os/Bundle;)Z
    .registers 2

    .line 390
    invoke-static {p0}, Lcom/igsinreels/Gate;->viewerSource(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->sectionOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "reels_tab"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blockNamed(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 2

    .line 1676
    invoke-static {p0}, Lcom/igsinreels/Blocker;->isBlocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/igsinreels/Gate;->viewerAllowed(Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static blockedAt(Landroid/view/View;FF)Landroid/view/View;
    .registers 4

    .line 1287
    sget-object v0, Lcom/igsinreels/Gate;->BLOCKED:Ljava/util/WeakHashMap;

    invoke-static {p0, p1, p2, v0}, Lcom/igsinreels/Gate;->viewAt(Landroid/view/View;FFLjava/util/Map;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static bound(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .line 760
    sput-object p0, Lcom/igsinreels/Gate;->lastBound:Landroid/view/View;

    .line 761
    sget-object v0, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    .line 762
    invoke-static {p0, p1, v0}, Lcom/igsinreels/Gate;->bound(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method private static bound(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 768
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    .line 769
    invoke-static {p1, p2}, Lcom/igsinreels/Gate;->findMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 770
    sget-object v1, Lcom/igsinreels/Gate;->MULTI:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1c

    .line 773
    invoke-static {p0, p1, p2}, Lcom/igsinreels/Gate;->boundRow(Landroid/view/View;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-void

    :cond_1c
    if-nez v0, :cond_2f

    const/4 v0, 0x3

    if-gt p2, v0, :cond_26

    .line 777
    invoke-static {p1, v0}, Lcom/igsinreels/Gate;->firstMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    move-object v0, p1

    if-eqz v0, :cond_2f

    .line 778
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    if-nez v0, :cond_3b

    .line 781
    sget-object p1, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 782
    invoke-static {p0, p1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    return-void

    .line 785
    :cond_3b
    sget-object p1, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object p1, Lcom/igsinreels/Gate;->REEL:Ljava/util/WeakHashMap;

    invoke-static {v0}, Lcom/igsinreels/Gate;->isReel(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    invoke-static {p0}, Lcom/igsinreels/Gate;->hook(Landroid/view/View;)V

    .line 788
    invoke-static {p0}, Lcom/igsinreels/Gate;->evaluate(Landroid/view/View;)V
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_54

    goto :goto_5c

    :catchall_54
    move-exception p0

    const-string p1, "IGSR"

    const-string p2, "bound"

    .line 790
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5c
    return-void
.end method

.method public static boundContent(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    if-eqz p0, :cond_56

    if-nez p1, :cond_5

    goto :goto_56

    .line 637
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    .line 638
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/igsinreels/Gate;->hasReelMarker(Ljava/lang/Object;ILjava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_29

    const/4 v0, 0x3

    .line 640
    invoke-static {p1, v0}, Lcom/igsinreels/Gate;->findMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 641
    invoke-static {v0}, Lcom/igsinreels/Gate;->isReel(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    move v0, v1

    :cond_29
    :goto_29
    if-nez v0, :cond_34

    .line 644
    sget-object p1, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    return-void

    .line 648
    :cond_34
    sget-object v0, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    sget-object p1, Lcom/igsinreels/Gate;->REEL:Ljava/util/WeakHashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    sget-object p1, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-static {p0}, Lcom/igsinreels/Gate;->hook(Landroid/view/View;)V

    .line 652
    invoke-static {p0}, Lcom/igsinreels/Gate;->evaluate(Landroid/view/View;)V
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4e

    goto :goto_56

    :catchall_4e
    move-exception p0

    const-string p1, "IGSR"

    const-string v0, "boundContent"

    .line 654
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_56
    :goto_56
    return-void
.end method

.method public static boundHolder(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 598
    :cond_3
    sget-object v0, Lcom/igsinreels/Gate;->lastBound:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    .line 599
    sput-object v1, Lcom/igsinreels/Gate;->lastBound:Landroid/view/View;

    return-void

    .line 602
    :cond_b
    sput-object v1, Lcom/igsinreels/Gate;->lastBound:Landroid/view/View;

    .line 603
    sget-object v0, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x5

    .line 604
    invoke-static {p0, p1, v0}, Lcom/igsinreels/Gate;->bound(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method private static boundRow(Landroid/view/View;Ljava/lang/Object;I)Z
    .registers 10

    .line 680
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 681
    :cond_6
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 682
    :goto_9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_9

    .line 683
    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    .line 684
    :goto_25
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_35

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 685
    :cond_35
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_3d

    return v1

    .line 687
    :cond_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p1, p2, v0, v5}, Lcom/igsinreels/Gate;->mediaList(Ljava/lang/Object;IILjava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 689
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v5, v0

    .line 691
    :goto_51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_76

    if-eqz p1, :cond_62

    .line 692
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/igsinreels/Gate;->firstMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6c

    :cond_62
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/igsinreels/Gate;->tileMedia(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v6

    :goto_6c
    if-eqz v6, :cond_70

    add-int/lit8 v5, v5, 0x1

    .line 694
    :cond_70
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_76
    if-nez v5, :cond_79

    return v1

    :cond_79
    move p1, v1

    .line 697
    :goto_7a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_ba

    .line 698
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 699
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_95

    .line 701
    sget-object v4, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-static {v0, v1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    goto :goto_b7

    .line 705
    :cond_95
    sget-object v5, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v5, Lcom/igsinreels/Gate;->REEL:Ljava/util/WeakHashMap;

    invoke-static {v4}, Lcom/igsinreels/Gate;->isReel(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v4, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v4, Lcom/igsinreels/Gate;->MULTI:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {v0}, Lcom/igsinreels/Gate;->hook(Landroid/view/View;)V

    .line 710
    invoke-static {v0}, Lcom/igsinreels/Gate;->evaluate(Landroid/view/View;)V

    :goto_b7
    add-int/lit8 p1, p1, 0x1

    goto :goto_7a

    .line 712
    :cond_ba
    sget-object p1, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    return v3
.end method

.method private static byName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1951
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1952
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Enum;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method static carouselFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    .line 825
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/igsinreels/Gate;->MEDIA_CAROUSEL:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 826
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_27

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_27

    :catchall_27
    :cond_27
    return-object v0
.end method

.method static categories(Ljava/lang/Object;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2129
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2131
    :try_start_5
    invoke-static {p0}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string p0, "ads"

    .line 2132
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2135
    :cond_11
    invoke-static {p0}, Lcom/igsinreels/Gate;->mediaId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    goto :goto_25

    :cond_1a
    const/16 v3, 0x5f

    .line 2136
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_25
    if-eqz v1, :cond_35

    .line 2137
    sget-object v3, Lcom/igsinreels/Gate;->myId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string p0, "me"

    .line 2138
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2141
    :cond_35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Lcom/igsinreels/Gate;->MEDIA_AUTHOR:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_d4

    const-string v1, "others"

    if-nez p0, :cond_50

    .line 2143
    :try_start_4c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 2146
    :cond_50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v5, Lcom/igsinreels/Gate;->FOLLOW_STATUS:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2147
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FOLLOWING"

    .line 2148
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    const-string v5, "NOT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7e

    move v3, v2

    goto :goto_7f

    :cond_7e
    move v3, v4

    .line 2149
    :goto_7f
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/igsinreels/Gate;->FOLLOWED_BY:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Lcom/igsinreels/Gate;->FOLLOWS_ME:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b4

    goto :goto_b5

    :cond_b4
    move v2, v4

    :cond_b5
    :goto_b5
    if-eqz v3, :cond_bc

    const-string p0, "following"

    .line 2151
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_bc
    if-eqz v2, :cond_c3

    const-string p0, "followers"

    .line 2152
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c3
    if-eqz v3, :cond_cc

    if-eqz v2, :cond_cc

    const-string p0, "friends"

    .line 2153
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_cc
    if-nez v3, :cond_dc

    if-nez v2, :cond_dc

    .line 2154
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_d3
    .catchall {:try_start_4c .. :try_end_d3} :catchall_d4

    goto :goto_dc

    :catchall_d4
    move-exception p0

    const-string v1, "IGSR"

    const-string v2, "categories"

    .line 2156
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_dc
    :goto_dc
    return-object v0
.end method

.method static checkTabAudio(Landroid/view/View;)V
    .registers 8

    .line 507
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/igsinreels/Gate;->TAB_PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 510
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 512
    :cond_3b
    sget-object v2, Lcom/igsinreels/Gate;->FEED_COVERED:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 513
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_4a
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_4a

    .line 514
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_60

    goto :goto_4a

    .line 515
    :cond_60
    invoke-virtual {v4, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v6, v4, :cond_4a

    move v3, v5

    goto :goto_4a

    .line 517
    :cond_74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_83

    return-void

    :cond_83
    const/4 v1, 0x3

    if-eqz v3, :cond_ac

    .line 519
    sget-object v4, Lcom/igsinreels/Gate;->focus:Landroid/media/AudioFocusRequest;

    if-nez v4, :cond_ac

    .line 520
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v5}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v3}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v3

    sput-object v3, Lcom/igsinreels/Gate;->focus:Landroid/media/AudioFocusRequest;

    .line 521
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    const/16 v3, -0x64

    .line 523
    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 524
    sput-boolean v5, Lcom/igsinreels/Gate;->muted:Z

    .line 526
    sget-object v0, Lcom/igsinreels/Gate;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/igsinreels/Gate$5;

    invoke-direct {v1, p0}, Lcom/igsinreels/Gate$5;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c3

    :cond_ac
    if-nez v3, :cond_c3

    .line 534
    sget-object p0, Lcom/igsinreels/Gate;->focus:Landroid/media/AudioFocusRequest;

    if-eqz p0, :cond_c3

    .line 535
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 p0, 0x0

    .line 536
    sput-object p0, Lcom/igsinreels/Gate;->focus:Landroid/media/AudioFocusRequest;

    .line 537
    sget-boolean p0, Lcom/igsinreels/Gate;->muted:Z

    if-eqz p0, :cond_c3

    const/16 p0, 0x64

    .line 538
    invoke-virtual {v0, v1, p0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 539
    sput-boolean v2, Lcom/igsinreels/Gate;->muted:Z

    :cond_c3
    :goto_c3
    return-void
.end method

.method private static collapse(Landroid/view/View;)Z
    .registers 5

    .line 2227
    sget-object v0, Lcom/igsinreels/Gate;->COLLAPSED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 2228
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_11

    return v2

    .line 2230
    :cond_11
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2232
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x4

    .line 2233
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private static collapseFeedRow(Landroid/view/View;)Z
    .registers 5

    .line 1059
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1060
    :goto_4
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_2d

    .line 1061
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1062
    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_28

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_28

    const/4 p0, 0x1

    return p0

    .line 1060
    :cond_28
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_4

    :cond_2d
    const/4 p0, 0x0

    return p0
.end method

.method private static constValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2023
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_1f

    goto :goto_2a

    .line 2024
    :cond_1f
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method static containing(FFLjava/util/Map;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1307
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_10
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_10

    .line 1308
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_10

    .line 1309
    :cond_25
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v3, v2

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_10

    .line 1310
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-gez v2, :cond_10

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_10

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_10

    return-object v1

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static cover(Landroid/view/View;Z)V
    .registers 5

    .line 1098
    sget-object v0, Lcom/igsinreels/Gate;->COVERS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_36

    .line 1100
    sget-object p1, Lcom/igsinreels/Gate;->BLOCKED:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_26

    .line 1102
    new-instance v1, Lcom/igsinreels/Gate$Cover;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/igsinreels/Gate$Cover;-><init>(Landroid/content/Context;)V

    .line 1103
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 1106
    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4a

    .line 1109
    :cond_36
    sget-object p1, Lcom/igsinreels/Gate;->BLOCKED:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4a

    .line 1111
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 1112
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method static coverBackAt(FF)Z
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1293
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/igsinreels/Gate;->COVERS:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1294
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_12

    .line 1295
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/igsinreels/Gate$Cover;

    if-nez v5, :cond_36

    goto :goto_12

    .line 1296
    :cond_36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igsinreels/Gate$Cover;

    iget-object v2, v2, Lcom/igsinreels/Gate$Cover;->backRect:Landroid/graphics/RectF;

    .line 1297
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_12

    .line 1298
    :cond_45
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v3

    int-to-float v3, v3

    sub-float v3, p0, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 1299
    invoke-virtual {v2, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_12

    return v4

    :cond_5a
    return v3
.end method

.method public static created(Landroidx/fragment/app/Fragment;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 2077
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Settings;->init(Landroid/content/Context;)V

    .line 2078
    :cond_10
    sget-object v0, Lcom/igsinreels/Gate;->myId:Ljava/lang/String;

    if-nez v0, :cond_40

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2080
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "IgSessionManager.SESSION_TOKEN_KEY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 2081
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_40

    check-cast p0, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x3a

    .line 2082
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/igsinreels/Gate;->myId:Ljava/lang/String;

    :cond_40
    return-void
.end method

.method private static detectionText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    .line 872
    invoke-static {p0}, Lcom/igsinreels/Gate;->singleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 874
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_5a

    aget-object v4, v0, v3

    .line 875
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_57

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    if-eq v5, v6, :cond_26

    goto :goto_57

    .line 876
    :cond_26
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toString"

    .line 877
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    goto :goto_57

    :cond_3b
    :try_start_3b
    new-array v5, v2, [Ljava/lang/Object;

    .line 879
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 880
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_57

    sget-object v5, Lcom/igsinreels/Gate;->DETECTION:Ljava/util/regex/Pattern;

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_57

    check-cast v4, Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_57

    return-object v4

    :catchall_57
    :cond_57
    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static dump(Ljava/lang/Object;IILjava/lang/StringBuilder;Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_b9

    if-gt p1, p2, :cond_b9

    .line 608
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b9

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_16

    goto/16 :goto_b9

    .line 609
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_22
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 612
    :try_start_2e
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_22

    if-eqz v2, :cond_22

    .line 616
    instance-of v3, v2, Landroid/view/View;

    if-nez v3, :cond_22

    instance-of v3, v2, Landroid/content/Context;

    if-eqz v3, :cond_3d

    goto :goto_22

    .line 617
    :cond_3d
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_51

    instance-of v4, v2, Ljava/lang/Number;

    if-nez v4, :cond_51

    instance-of v4, v2, Ljava/lang/Boolean;

    if-nez v4, :cond_51

    instance-of v4, v2, Ljava/lang/Enum;

    if-eqz v4, :cond_4e

    goto :goto_51

    :cond_4e
    const-string v4, ""

    goto :goto_55

    :cond_51
    :goto_51
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 618
    :goto_55
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x50

    if-le v5, v7, :cond_62

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 619
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_67
    if-ge v6, p1, :cond_71

    const-string v7, "  "

    .line 620
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 621
    :cond_71
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_22

    const-string v3, "java.lang."

    .line 623
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "Session"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    add-int/lit8 v1, p1, 0x1

    invoke-static {v2, v1, p2, p3, p4}, Lcom/igsinreels/Gate;->dump(Ljava/lang/Object;IILjava/lang/StringBuilder;Ljava/util/Map;)V

    goto/16 :goto_22

    :cond_b9
    :goto_b9
    return-void
.end method

.method private static evaluate(Landroid/view/View;)V
    .registers 14

    .line 952
    sget-object v0, Lcom/igsinreels/Gate;->FEED_COVERED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 953
    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    return-void

    .line 956
    :cond_d
    sget-object v0, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 958
    invoke-static {p0, v2}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    return-void

    .line 961
    :cond_1a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/igsinreels/Gate;->REEL:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 962
    sget-object v4, Lcom/igsinreels/Gate;->HOLDER_ONLY:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 965
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_17c

    .line 966
    invoke-static {p0}, Lcom/igsinreels/Gate;->fragmentOf(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 967
    invoke-static {v5}, Lcom/igsinreels/Gate;->sectionOf(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "explore"

    .line 970
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_56

    const-string v8, "reposts"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_56

    const-string v8, "other_reposts"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_54

    goto :goto_56

    :cond_54
    move v8, v2

    goto :goto_57

    :cond_56
    :goto_56
    move v8, v1

    :goto_57
    const-string v9, "viewer"

    if-nez v3, :cond_5d

    if-eqz v8, :cond_6b

    .line 971
    :cond_5d
    invoke-static {v7}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6b

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6b

    move v10, v1

    goto :goto_6c

    :cond_6b
    move v10, v2

    .line 972
    :goto_6c
    sget-object v11, Lcom/igsinreels/Gate;->MULTI:Ljava/util/WeakHashMap;

    invoke-virtual {v11, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    if-nez v8, :cond_77

    move v10, v2

    .line 974
    :cond_77
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_82

    invoke-static {v5}, Lcom/igsinreels/Gate;->reelsTabKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v8

    goto :goto_83

    :cond_82
    move-object v8, v6

    :goto_83
    if-eqz v8, :cond_8d

    .line 975
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/igsinreels/Gate;->tabModeFromHeader(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_8d
    if-eqz v8, :cond_9b

    .line 976
    sget-object v11, Lcom/igsinreels/Gate;->lastTabMode:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 978
    sput-object v6, Lcom/igsinreels/Gate;->exhaustedMode:Ljava/lang/String;

    .line 979
    sput v2, Lcom/igsinreels/Gate;->skipsInARow:I

    :cond_9b
    if-eqz v8, :cond_9f

    .line 981
    sput-object v8, Lcom/igsinreels/Gate;->lastTabMode:Ljava/lang/String;

    :cond_9f
    if-eqz v8, :cond_b2

    .line 982
    instance-of v11, v0, Lcom/instagram/feed/media/Media;

    if-eqz v11, :cond_b2

    invoke-static {v8}, Lcom/igsinreels/Settings;->tabEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b1

    invoke-static {v0, v8}, Lcom/igsinreels/Gate;->selectionAllows(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b2

    :cond_b1
    move v10, v1

    :cond_b2
    if-eqz v8, :cond_e7

    .line 986
    sget-object v11, Lcom/igsinreels/Gate;->TAB_PAGES:Ljava/util/WeakHashMap;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, p0, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    invoke-static {v8}, Lcom/igsinreels/Settings;->tabEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_da

    invoke-static {v8}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_da

    invoke-static {v8}, Lcom/igsinreels/Gate;->exhausted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d4

    goto :goto_da

    .line 990
    :cond_d4
    sget-object v8, Lcom/igsinreels/Gate;->LOCKED_PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    .line 988
    :cond_da
    :goto_da
    sget-object v8, Lcom/igsinreels/Gate;->LOCKED_PAGES:Ljava/util/WeakHashMap;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, p0, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    :goto_e1
    invoke-static {p0}, Lcom/igsinreels/Gate;->watchTouches(Landroid/view/View;)V

    .line 992
    invoke-static {p0}, Lcom/igsinreels/Gate;->watchTabAudio(Landroid/view/View;)V

    :cond_e7
    if-nez v7, :cond_ee

    .line 996
    invoke-static {v5}, Lcom/igsinreels/Gate;->homeFeedOf(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :cond_ee
    if-nez v7, :cond_f3

    if-nez v6, :cond_f3

    move v10, v2

    :cond_f3
    if-eqz v10, :cond_104

    if-eqz v3, :cond_104

    if-eqz v6, :cond_104

    .line 999
    instance-of v5, v0, Lcom/instagram/feed/media/Media;

    if-eqz v5, :cond_104

    invoke-static {v0, v6}, Lcom/igsinreels/Gate;->feedReelAllowed(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    move v10, v2

    :cond_104
    if-eqz v10, :cond_11c

    if-eqz v6, :cond_11c

    .line 1004
    instance-of v5, v0, Lcom/instagram/feed/media/Media;

    if-eqz v5, :cond_11c

    invoke-static {v0}, Lcom/igsinreels/Gate;->categories(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const-string v8, "me"

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11c

    .line 1006
    invoke-static {p0}, Lcom/igsinreels/Gate;->watchFeed(Landroid/view/View;)V

    move v10, v2

    :cond_11c
    if-eqz v4, :cond_131

    if-eqz v6, :cond_131

    .line 1011
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-ge v5, v8, :cond_131

    move v10, v2

    :cond_131
    const-string v5, "dm"

    .line 1012
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15d

    if-eqz v3, :cond_15d

    .line 1014
    invoke-static {p0}, Lcom/igsinreels/Gate;->sentSide(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_146

    .line 1015
    sget-object v8, Lcom/igsinreels/Gate;->DM_BUBBLES:Ljava/util/WeakHashMap;

    invoke-virtual {v8, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_146
    if-eqz v3, :cond_159

    .line 1016
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_150

    const-string v5, "dm_sent"

    :cond_150
    invoke-static {v5}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_157

    goto :goto_159

    :cond_157
    move v10, v2

    goto :goto_15a

    :cond_159
    :goto_159
    move v10, v1

    .line 1017
    :goto_15a
    invoke-static {p0}, Lcom/igsinreels/Gate;->watchTouches(Landroid/view/View;)V

    :cond_15d
    if-nez v7, :cond_161

    if-eqz v6, :cond_17a

    .line 1020
    :cond_161
    invoke-static {v0}, Lcom/igsinreels/Gate;->aiBlocked(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 1022
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18a

    .line 1023
    sget-object v3, Lcom/igsinreels/Gate;->TAB_PAGES:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    invoke-static {p0}, Lcom/igsinreels/Gate;->watchTabAudio(Landroid/view/View;)V

    goto :goto_18a

    :cond_17a
    move v1, v10

    goto :goto_18a

    :cond_17c
    if-eqz v3, :cond_189

    if-nez v4, :cond_189

    .line 1030
    sget-object v3, Lcom/igsinreels/Gate;->MULTI:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_189

    goto :goto_18a

    :cond_189
    move v1, v2

    :cond_18a
    :goto_18a
    if-eqz v4, :cond_193

    .line 1032
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-nez v3, :cond_193

    move v1, v2

    :cond_193
    if-eqz v1, :cond_1b7

    if-eqz v6, :cond_1b7

    .line 1035
    instance-of v3, v0, Lcom/instagram/feed/media/Media;

    if-eqz v3, :cond_1b7

    invoke-static {v0}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1036
    invoke-static {v6}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v3, "ads"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b7

    invoke-static {p0}, Lcom/igsinreels/Gate;->collapseFeedRow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1037
    invoke-static {p0, v2}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    return-void

    .line 1040
    :cond_1b7
    invoke-static {p0}, Lcom/igsinreels/Gate;->expandFeedRow(Landroid/view/View;)V

    .line 1041
    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    if-eqz v1, :cond_1c2

    .line 1042
    invoke-static {p0}, Lcom/igsinreels/Gate;->watchTouches(Landroid/view/View;)V

    :cond_1c2
    return-void
.end method

.method private static exhausted(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 439
    sget-object v0, Lcom/igsinreels/Gate;->exhaustedMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static expand(Landroid/view/View;)V
    .registers 3

    .line 2239
    sget-object v0, Lcom/igsinreels/Gate;->COLLAPSED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_b

    return-void

    .line 2241
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 2243
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2244
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1a
    const/4 v0, 0x0

    .line 2246
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static expandFeedRow(Landroid/view/View;)V
    .registers 6

    .line 1046
    sget-object v0, Lcom/igsinreels/Gate;->COLLAPSED:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1047
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1048
    :goto_d
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_41

    .line 1049
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 1050
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_3c

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3c

    .line 1051
    sget-object v0, Lcom/igsinreels/Gate;->SCAN_COLLAPSED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    invoke-static {v1}, Lcom/igsinreels/Gate;->expand(Landroid/view/View;)V

    :cond_3b
    return-void

    .line 1048
    :cond_3c
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_d

    :cond_41
    return-void
.end method

.method static feedReelAllowed(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2

    .line 2337
    invoke-static {p0, p1}, Lcom/igsinreels/Gate;->selectionAllows(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static feedScan(Landroid/view/View;)V
    .registers 5

    .line 2190
    sget-object v0, Lcom/igsinreels/Gate;->feedMode:Ljava/lang/String;

    .line 2191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2192
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2193
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_44

    .line 2194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 2195
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_a

    .line 2196
    :cond_23
    instance-of v2, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2d

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Lcom/igsinreels/Gate;->scanRows(Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 2197
    :cond_2d
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_a

    .line 2198
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 2199
    :goto_34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_44
    return-void
.end method

.method private static feedSection(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .registers 3

    .line 2425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    goto :goto_31

    :cond_9
    const-string v0, "ContextualFeedFragment.ARGUMENT_CONTEXTUAL_FEED_MODE"

    .line 2426
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextualFeedFragment.ARGUMENT_MODULE_NAME"

    .line 2427
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2428
    :goto_31
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "self"

    .line 2429
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "own"

    return-object p0

    :cond_42
    const-string v0, "user"

    .line 2430
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "profile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_53

    goto :goto_55

    :cond_53
    const/4 p0, 0x0

    return-object p0

    :cond_55
    :goto_55
    const-string p0, "other_profiles"

    return-object p0
.end method

.method private static fields(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/igsinreels/Gate;->FIELDS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    return-object v0

    .line 176
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    :goto_11
    if-eqz v1, :cond_3b

    .line 178
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_3b

    .line 179
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_36

    aget-object v5, v2, v4

    .line 180
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_33

    :cond_2c
    const/4 v6, 0x1

    .line 182
    :try_start_2d
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_33

    .line 186
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catchall_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 178
    :cond_36
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_11

    .line 189
    :cond_3b
    sget-object v1, Lcom/igsinreels/Gate;->FIELDS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static filterClipIds(Ljava/util/List;)Ljava/util/List;
    .registers 6

    if-eqz p0, :cond_45

    .line 1871
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    sget-object v0, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_45

    .line 1872
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1874
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1875
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_38

    sget-object v4, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_38
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1877
    :cond_3c
    sget-object v1, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    if-nez v2, :cond_44

    goto :goto_45

    :cond_44
    move-object p0, v0

    :cond_45
    :goto_45
    return-object p0
.end method

.method public static filterClips(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 10

    .line 1889
    sget-object v0, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-eqz p1, :cond_b9

    .line 1890
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_b9

    .line 1893
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 1894
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClipsViewerSource"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1895
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1896
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_43
    const-string p0, "reels_tab"

    .line 1899
    invoke-static {v1}, Lcom/igsinreels/Gate;->sectionOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    return-object p1

    .line 1900
    :cond_50
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FRIEND"

    .line 1901
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "FOLLOW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6b

    goto :goto_6e

    :cond_6b
    sget-object p0, Lcom/igsinreels/Gate;->lastTabMode:Ljava/lang/String;

    goto :goto_72

    :cond_6e
    :goto_6e
    invoke-static {v1}, Lcom/igsinreels/Gate;->tabKeyOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1902
    :goto_72
    invoke-static {p0}, Lcom/igsinreels/Settings;->tabEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1903
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1905
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    .line 1906
    invoke-static {v5, v6}, Lcom/igsinreels/Gate;->firstMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a0

    if-eqz v0, :cond_9e

    .line 1907
    invoke-static {v6, p0}, Lcom/igsinreels/Gate;->selectionAllows(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a0

    :cond_9e
    const/4 v7, 0x1

    goto :goto_a1

    :cond_a0
    move v7, v3

    :goto_a1
    if-eqz v7, :cond_a9

    add-int/lit8 v4, v4, 0x1

    .line 1910
    invoke-static {v5, v6}, Lcom/igsinreels/Gate;->rememberRemovedIds(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_85

    .line 1912
    :cond_a9
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_f .. :try_end_ac} :catchall_b1

    goto :goto_85

    :cond_ad
    if-nez v4, :cond_b0

    return-object p1

    :cond_b0
    return-object v1

    :catchall_b1
    move-exception p0

    const-string v0, "IGSR"

    const-string v1, "filterClips"

    .line 1918
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b9
    :goto_b9
    return-object p1
.end method

.method public static filterFeed(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 9

    if-eqz p1, :cond_9e

    .line 2359
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_9e

    .line 2361
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/igsinreels/Gate;->ownerFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_95

    const-string v0, "instagram.features.feed.contextualfeed.ContextualFeedFragment"

    .line 2362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_95

    .line 2363
    :cond_22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->homeFeedKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2364
    invoke-static {p1, v0}, Lcom/igsinreels/Gate;->filterHomeFeed(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2365
    :cond_31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->isSavedFeed(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "saved"

    goto :goto_42

    :cond_3e
    invoke-static {p0}, Lcom/igsinreels/Gate;->feedSection(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    .line 2366
    :goto_42
    invoke-static {v0}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    return-object p1

    .line 2367
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_5a

    const/4 v1, 0x0

    goto :goto_60

    :cond_5a
    const-string v2, "ContextualFeedFragment.ARGUMENT_MEDIA_INITIAL_POSITION"

    .line 2370
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2371
    :goto_60
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_65
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2372
    invoke-static {v4}, Lcom/igsinreels/Gate;->findMedia(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8d

    .line 2373
    invoke-static {v5}, Lcom/igsinreels/Gate;->isReel(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    add-int/lit8 v3, v3, 0x1

    if-eqz v1, :cond_65

    .line 2375
    invoke-static {v5}, Lcom/igsinreels/Gate;->mediaId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-static {p0}, Lcom/igsinreels/Gate;->stopFeed(Landroidx/fragment/app/Fragment;)V

    goto :goto_65

    .line 2378
    :cond_8d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catchall {:try_start_a .. :try_end_90} :catchall_96

    goto :goto_65

    :cond_91
    if-nez v3, :cond_94

    return-object p1

    :cond_94
    return-object v0

    :cond_95
    :goto_95
    return-object p1

    :catchall_96
    move-exception p0

    const-string v0, "IGSR"

    const-string v1, "filterFeed"

    .line 2383
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9e
    :goto_9e
    return-object p1
.end method

.method private static filterHomeFeed(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 9

    .line 2412
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2414
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 2415
    invoke-static {v4}, Lcom/igsinreels/Gate;->findMedia(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 2416
    invoke-static {v5}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-static {p1}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const-string v6, "ads"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    const/4 v5, 0x1

    goto :goto_34

    :cond_33
    move v5, v2

    :goto_34
    if-eqz v5, :cond_39

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2417
    :cond_39
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3d
    if-nez v3, :cond_40

    return-object p0

    :cond_40
    return-object v0
.end method

.method static findMedia(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x3

    .line 124
    invoke-static {p0, v0}, Lcom/igsinreels/Gate;->findMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static findMedia(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 129
    :cond_4
    instance-of v1, p0, Lcom/instagram/feed/media/Media;

    if-eqz v1, :cond_9

    return-object p0

    :cond_9
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p0, p1, v1, v2}, Lcom/igsinreels/Gate;->search(Ljava/lang/Object;I[Ljava/lang/Object;Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    const/4 p0, 0x0

    aget-object p0, v1, p0

    return-object p0
.end method

.method static findMediaInView(Landroid/view/View;I)Ljava/lang/Object;
    .registers 12

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2296
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2297
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2299
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_12
    const/4 v5, 0x0

    if-eqz v4, :cond_56

    const-class v6, Landroid/view/View;

    if-eq v4, v6, :cond_56

    .line 2300
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_1e
    if-ge v5, v7, :cond_51

    aget-object v8, v6, v5

    .line 2301
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_4e

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_37

    goto :goto_4e

    .line 2302
    :cond_37
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2303
    invoke-virtual {v8, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4e

    .line 2304
    instance-of v9, v8, Landroid/view/View;

    if-eqz v9, :cond_45

    goto :goto_4e

    :cond_45
    add-int/lit8 v9, p1, -0x1

    .line 2305
    invoke-static {v8, v9, v1, v2}, Lcom/igsinreels/Gate;->search(Ljava/lang/Object;I[Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_4e

    return-object v3

    :cond_4e
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 2299
    :cond_51
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4
    :try_end_55
    .catchall {:try_start_e .. :try_end_55} :catchall_59

    goto :goto_12

    :cond_56
    aget-object p0, v1, v5

    return-object p0

    :catchall_59
    return-object v3
.end method

.method static firstMedia(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9

    .line 1824
    instance-of v0, p0, Lcom/instagram/feed/media/Media;

    if-eqz v0, :cond_5

    return-object p0

    .line 1825
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1827
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p1, :cond_90

    .line 1828
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_90

    .line 1829
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 1831
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_39

    goto :goto_24

    .line 1832
    :cond_39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java."

    .line 1833
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_24

    instance-of v4, v3, Landroid/content/Context;

    if-eqz v4, :cond_5a

    goto :goto_24

    .line 1834
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catchall_66
    :cond_66
    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 1835
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_7d

    goto :goto_66

    .line 1838
    :cond_7d
    :try_start_7d
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_66

    .line 1842
    instance-of v6, v5, Lcom/instagram/feed/media/Media;

    if-eqz v6, :cond_86

    return-object v5

    :cond_86
    if-eqz v5, :cond_66

    .line 1843
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_13

    :cond_90
    const/4 p0, 0x0

    return-object p0
.end method

.method static fragmentOf(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .registers 6

    .line 237
    sget v0, Lcom/igsinreels/Gate;->fragmentTagId:I

    const/4 v1, -0x1

    if-nez v0, :cond_1f

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fragment_container_view_tag"

    const-string v4, "id"

    .line 238
    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/igsinreels/Gate;->fragmentTagId:I

    if-nez v0, :cond_1f

    .line 240
    sput v1, Lcom/igsinreels/Gate;->fragmentTagId:I

    .line 242
    :cond_1f
    sget v0, Lcom/igsinreels/Gate;->fragmentTagId:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_25

    return-object v2

    .line 243
    :cond_25
    :goto_25
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 244
    check-cast p0, Landroid/view/View;

    sget v0, Lcom/igsinreels/Gate;->fragmentTagId:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 245
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_38

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0

    .line 243
    :cond_38
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_25

    :cond_3d
    return-object v2
.end method

.method private static hasReelMarker(Ljava/lang/Object;ILjava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9e

    .line 659
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    sget v2, Lcom/igsinreels/Gate;->MAX_VISITED:I

    if-gt v1, v2, :cond_9e

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    goto/16 :goto_9e

    .line 660
    :cond_15
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_26

    sget-object p1, Lcom/igsinreels/Gate;->XMA_REEL:Ljava/util/regex/Pattern;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    .line 661
    :cond_26
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_3b

    sget-object p1, Lcom/igsinreels/Gate;->XMA_REEL:Ljava/util/regex/Pattern;

    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_3b
    if-gez p1, :cond_3e

    return v0

    .line 663
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 664
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "java."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "android."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "Session"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9e

    instance-of v2, p0, Landroid/view/View;

    if-nez v2, :cond_9e

    instance-of v2, p0, Landroid/content/Context;

    if-nez v2, :cond_9e

    instance-of v2, p0, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_71

    goto :goto_9e

    .line 667
    :cond_71
    invoke-static {v1}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_79
    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 668
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 669
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_90

    goto :goto_79

    .line 671
    :cond_90
    :try_start_90
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    add-int/lit8 v4, p1, -0x1

    invoke-static {v2, v4, p2}, Lcom/igsinreels/Gate;->hasReelMarker(Ljava/lang/Object;ILjava/util/Map;)Z

    move-result v2
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_79

    if-eqz v2, :cond_79

    return v3

    :cond_9e
    :goto_9e
    return v0
.end method

.method private static hasStringField(Ljava/lang/Object;)Z
    .registers 3

    .line 2016
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method static headerTabs(Landroid/view/View;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e3851ec    # 0.18f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 316
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_85

    .line 317
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 320
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3c

    goto :goto_1a

    .line 321
    :cond_3c
    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v0, v5

    if-gt v5, v3, :cond_1a

    const/4 v5, 0x0

    aget v6, v0, v5

    if-ltz v6, :cond_1a

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_4f

    goto :goto_1a

    .line 323
    :cond_4f
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_6f

    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_6f

    .line 324
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_6f

    .line 325
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_6f
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1a

    .line 328
    check-cast v4, Landroid/view/ViewGroup;

    .line 329
    :goto_75
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_85
    return-object v1
.end method

.method private static homeFeedKey(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_f

    :cond_5
    const-string v0, "ContextualFeedFragment.ARGUMENT_CONTEXTUAL_FEED_MODE"

    .line 2118
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_f
    const-string v0, "Following_Feed"

    .line 2119
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "feed_following"

    return-object p0

    :cond_1a
    const-string v0, "Favorites_Feed"

    .line 2120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "feed_foryou"

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method static homeFeedOf(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .registers 5

    :goto_0
    if-eqz p0, :cond_4b

    .line 2109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2110
    sget-object v1, Lcom/igsinreels/Gate;->HOME_CLASSES:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string p0, "feed_foryou"

    return-object p0

    :cond_35
    const-string v1, "instagram.features.feed.contextualfeed.ContextualFeedFragment"

    .line 2111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->homeFeedKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2108
    :cond_46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hook(Landroid/view/View;)V
    .registers 3

    .line 1070
    sget-object v0, Lcom/igsinreels/Gate;->HOOKED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 1071
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v0, Lcom/igsinreels/Gate$6;

    invoke-direct {v0}, Lcom/igsinreels/Gate$6;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1082
    new-instance v0, Lcom/igsinreels/Gate$7;

    invoke-direct {v0}, Lcom/igsinreels/Gate$7;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static isAd(Ljava/lang/Object;)Z
    .registers 6

    .line 927
    invoke-static {p0}, Lcom/igsinreels/Blocker;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const/4 v0, 0x0

    .line 929
    :try_start_13
    instance-of v2, p0, Lcom/instagram/feed/media/Media;

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/igsinreels/Gate;->MEDIA_INJECTED:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_2e

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v0

    :goto_2d
    return v1

    :catchall_2e
    return v0
.end method

.method static isAi(Ljava/lang/Object;)Z
    .registers 3

    .line 837
    instance-of v0, p0, Lcom/instagram/feed/media/Media;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 838
    :cond_6
    invoke-static {p0}, Lcom/igsinreels/Gate;->mediaId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 839
    sget-object v1, Lcom/igsinreels/Gate;->AI_SEEN:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p0, 0x1

    return p0

    .line 840
    :cond_16
    invoke-static {p0}, Lcom/igsinreels/Gate;->isAiNow(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    if-eqz v0, :cond_23

    .line 841
    sget-object v1, Lcom/igsinreels/Gate;->AI_SEEN:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_23
    return p0
.end method

.method private static isAiNow(Ljava/lang/Object;)Z
    .registers 10

    .line 846
    sget-object v0, Lcom/igsinreels/Gate;->MEDIA_AI:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_55

    aget-object v5, v0, v4

    .line 848
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_52

    .line 850
    :cond_22
    instance-of v7, v6, Ljava/lang/Boolean;

    const/4 v8, 0x1

    if-eqz v7, :cond_30

    .line 851
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_52

    return v8

    .line 856
    :cond_30
    invoke-static {v6}, Lcom/igsinreels/Gate;->detectionText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 858
    sget-object v5, Lcom/igsinreels/Gate;->NO_AI:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_52

    return v8

    .line 861
    :cond_43
    sget-object v6, Lcom/igsinreels/Gate;->MEDIA_AI:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4f
    .catchall {:try_start_f .. :try_end_4f} :catchall_52

    if-eqz v5, :cond_52

    return v8

    :catchall_52
    :cond_52
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_55
    return v3
.end method

.method static isCarousel(Ljava/lang/Object;)Z
    .registers 2

    .line 819
    invoke-static {p0}, Lcom/igsinreels/Blocker;->describe(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/CAROUSEL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isFeedAdSource(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "FEED_"

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "NEWSFEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_10
    const-string v0, "ADS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "_AD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "_AD_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method

.method static isPostVideo(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    .line 938
    :try_start_1
    instance-of v1, p0, Lcom/instagram/feed/media/Media;

    if-eqz v1, :cond_18

    invoke-static {p0}, Lcom/igsinreels/Gate;->isReel(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p0}, Lcom/igsinreels/Blocker;->isClipsProduct(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    if-nez p0, :cond_18

    const/4 v0, 0x1

    :catchall_18
    :cond_18
    return v0
.end method

.method static isReel(Ljava/lang/Object;)Z
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 110
    :try_start_3
    invoke-static {p0}, Lcom/igsinreels/Blocker;->isClips(Ljava/lang/Object;)Z

    move-result p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    nop

    :catchall_b
    :cond_b
    return v0
.end method

.method private static isSavedFeed(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_16

    const-string v0, "ContextualFeedFragment.ARGUMENT_CONTEXTUAL_FEED_MODE"

    .line 580
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Saved"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static keepFeedReel(Ljava/lang/Object;)Z
    .registers 3

    .line 2345
    sget-object v0, Lcom/igsinreels/Gate;->feedMode:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2349
    :cond_6
    invoke-static {p0}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {v0}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "ads"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    return v1
.end method

.method static keepHeaderVisible(Landroid/view/View;)V
    .registers 6

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igsinreels/Gate;->headerScan:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_77

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igsinreels/Gate;->headerScan:J

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-static {p0}, Lcom/igsinreels/Gate;->headerTabs(Landroid/view/View;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 289
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 291
    :cond_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_77

    .line 292
    sget-object v1, Lcom/igsinreels/Gate;->HEADER_VIEWS:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 293
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 294
    :goto_56
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4a

    if-eq v1, p0, :cond_4a

    .line 295
    sget-object v2, Lcom/igsinreels/Gate;->HEADER_VIEWS:Ljava/util/WeakHashMap;

    check-cast v1, Landroid/view/View;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_72

    goto :goto_4a

    .line 294
    :cond_72
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_56

    .line 301
    :cond_77
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/igsinreels/Gate;->HEADER_VIEWS:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_86
    :goto_86
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_86

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_9b

    goto :goto_86

    .line 303
    :cond_9b
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_a5
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 305
    :cond_b2
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_86

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_86

    :cond_bf
    return-void
.end method

.method private static literalFbt(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2034
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Source$Literal"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 2035
    const-class v1, Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2036
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_4f

    aget-object v2, p0, v1

    .line 2037
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4c

    const/4 p0, 0x0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 2039
    :cond_4f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FbtModel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static mediaId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 199
    :cond_4
    :try_start_4
    sget-object v1, Lcom/igsinreels/Gate;->idPath:[Ljava/lang/reflect/Field;

    if-nez v1, :cond_f

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->searchId(Ljava/lang/Object;I)[Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/igsinreels/Gate;->idPath:[Ljava/lang/reflect/Field;

    .line 200
    :cond_f
    sget-object v1, Lcom/igsinreels/Gate;->idPath:[Ljava/lang/reflect/Field;

    if-nez v1, :cond_14

    return-object v0

    .line 202
    :cond_14
    array-length v2, v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    if-nez p0, :cond_1d

    return-object v0

    .line 204
    :cond_1d
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 206
    :cond_24
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2b

    check-cast p0, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2b

    move-object v0, p0

    :catchall_2b
    :cond_2b
    return-object v0
.end method

.method private static mediaList(Ljava/lang/Object;IILjava/util/Map;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_a7

    if-ltz p1, :cond_a7

    .line 734
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a7

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    sget v2, Lcom/igsinreels/Gate;->MAX_VISITED:I

    if-le v1, v2, :cond_17

    goto/16 :goto_a7

    .line 735
    :cond_17
    instance-of v1, p0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_40

    .line 736
    check-cast p0, Ljava/util/List;

    .line 737
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_3f

    .line 739
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lcom/igsinreels/Gate;->firstMedia(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_28

    const/4 p2, 0x0

    move v2, p2

    goto :goto_28

    :cond_3c
    if-eqz v2, :cond_3f

    return-object p0

    :cond_3f
    return-object v0

    .line 744
    :cond_40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "java."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a7

    const-string v3, "android."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a7

    instance-of v1, p0, Landroid/view/View;

    if-nez v1, :cond_a7

    instance-of v1, p0, Landroid/content/Context;

    if-nez v1, :cond_a7

    instance-of v1, p0, Lcom/instagram/feed/media/Media;

    if-eqz v1, :cond_6f

    goto :goto_a7

    .line 747
    :cond_6f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_7b
    :cond_7b
    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 748
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_9a

    goto :goto_7b

    .line 750
    :cond_9a
    :try_start_9a
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-static {v3, v4, p2, p3}, Lcom/igsinreels/Gate;->mediaList(Ljava/lang/Object;IILjava/util/Map;)Ljava/util/List;

    move-result-object v3
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_7b

    if-eqz v3, :cond_7b

    return-object v3

    :cond_a7
    :goto_a7
    return-object v0
.end method

.method private static newConst(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2028
    const-class v0, Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v0, 0x1

    .line 2029
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2030
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static ourKey(Ljava/lang/Class;)Ljava/lang/Enum;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    const-string v0, "REELS_SECOND"

    .line 1959
    invoke-static {p0, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method private static ownerFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 2437
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 2438
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2439
    instance-of v3, v2, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_10

    check-cast v2, Landroidx/fragment/app/Fragment;

    return-object v2

    .line 2441
    :cond_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 2442
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2443
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_33

    .line 2444
    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/igsinreels/Gate;->fragmentOf(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_33

    return-object v2

    :cond_50
    return-object v0
.end method

.method private static reelsIcon(I)I
    .registers 5

    .line 2044
    :try_start_0
    invoke-static {}, Lcom/igsinreels/Settings;->app()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_18

    .line 2045
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "instagram_reels_pano_outline_24"

    const-string v3, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1b

    :goto_18
    if-eqz v0, :cond_1b

    move p0, v0

    :catchall_1b
    :cond_1b
    return p0
.end method

.method public static reelsTab()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method static reelsTabKey(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .registers 4

    :goto_0
    if-eqz p0, :cond_2f

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Blocker;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_25

    .line 269
    :cond_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->viewerSource(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reels_tab"

    .line 270
    invoke-static {v0}, Lcom/igsinreels/Gate;->sectionOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 267
    :goto_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0

    .line 271
    :cond_2a
    invoke-static {v0}, Lcom/igsinreels/Gate;->tabKeyOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method static refresh()V
    .registers 2

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_f

    .line 947
    invoke-static {v1}, Lcom/igsinreels/Gate;->evaluate(Landroid/view/View;)V

    goto :goto_f

    :cond_21
    return-void
.end method

.method private static rememberRemovedIds(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1855
    invoke-static {p1}, Lcom/igsinreels/Gate;->mediaId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 1857
    sget-object v0, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x5f

    .line 1858
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1c
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1861
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 1862
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1863
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_30

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_30

    sget-object v1, Lcom/igsinreels/Gate;->removedIds:Ljava/util/Set;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_56

    goto :goto_30

    :catchall_56
    :cond_56
    return-void
.end method

.method public static resumed(Landroidx/fragment/app/Fragment;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 1688
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/igsinreels/Gate;->trackFeed(Landroidx/fragment/app/Fragment;)V

    .line 1689
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Blocker;->isBlocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    .line 1692
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->viewerSource(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->sectionOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reels_tab"

    .line 1693
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    .line 1695
    sput-object v1, Lcom/igsinreels/Gate;->exhaustedMode:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1696
    sput v1, Lcom/igsinreels/Gate;->skipsInARow:I

    :cond_2f
    const-string v1, "dm"

    .line 1698
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "home_feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    return-void

    .line 1699
    :cond_40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 1700
    sget-object v1, Lcom/igsinreels/Gate;->VIEWERS:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_5f

    .line 1701
    :cond_4f
    sget-object v1, Lcom/igsinreels/Gate;->GUARDED:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    new-instance v1, Lcom/igsinreels/Gate$SingleReel;

    invoke-direct {v1, p0, v0}, Lcom/igsinreels/Gate$SingleReel;-><init>(Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/igsinreels/Gate$SingleReel;->start()V
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_60

    goto :goto_68

    :cond_5f
    :goto_5f
    return-void

    :catchall_60
    move-exception p0

    const-string v0, "IGSR"

    const-string v1, "resumed"

    .line 1704
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    return-void
.end method

.method private static rowMedia(Landroid/view/View;)Ljava/lang/Object;
    .registers 9

    .line 2208
    sget-object v0, Lcom/igsinreels/Gate;->ROW_MEDIA:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2209
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_23

    const/4 v4, 0x1

    .line 2210
    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_23

    const/4 p0, 0x0

    aget-object p0, v1, p0

    return-object p0

    .line 2211
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Litho"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->findMediaInView(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    .line 2212
    :goto_3a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static scanRows(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 11

    .line 2252
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2253
    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 2254
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2255
    invoke-static {v3}, Lcom/igsinreels/Gate;->rowMedia(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_18

    goto :goto_2d

    .line 2257
    :cond_18
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_2a

    .line 2258
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v6, v5, :cond_2d

    :cond_2a
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_30
    move v2, v1

    .line 2260
    :goto_31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_db

    .line 2261
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2262
    invoke-static {v3}, Lcom/igsinreels/Gate;->rowMedia(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz p1, :cond_58

    if-eqz v4, :cond_58

    .line 2263
    invoke-static {v4}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-static {p1}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    const-string v7, "ads"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    move v6, v5

    goto :goto_59

    :cond_58
    move v6, v1

    :goto_59
    if-eqz v6, :cond_6a

    .line 2265
    invoke-static {v3}, Lcom/igsinreels/Gate;->collapse(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 2266
    sget-object v4, Lcom/igsinreels/Gate;->SCAN_COLLAPSED:Ljava/util/WeakHashMap;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d7

    .line 2269
    :cond_6a
    sget-object v6, Lcom/igsinreels/Gate;->SCAN_COLLAPSED:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_75

    .line 2270
    invoke-static {v3}, Lcom/igsinreels/Gate;->expand(Landroid/view/View;)V

    :cond_75
    if-eqz v4, :cond_9b

    .line 2272
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    const/16 v7, 0x12c

    if-le v6, v7, :cond_9b

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_9b

    if-eqz p1, :cond_93

    .line 2273
    invoke-static {v4}, Lcom/igsinreels/Gate;->isReel(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-static {v4, p1}, Lcom/igsinreels/Gate;->feedReelAllowed(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 2274
    :cond_93
    invoke-static {v4}, Lcom/igsinreels/Gate;->aiBlocked(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    :cond_99
    move v6, v5

    goto :goto_9c

    :cond_9b
    move v6, v1

    :goto_9c
    if-eqz v6, :cond_bd

    .line 2275
    sget-object v7, Lcom/igsinreels/Gate;->FEED_COVERED:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_bd

    .line 2276
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v3, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    invoke-static {v3}, Lcom/igsinreels/Gate;->hook(Landroid/view/View;)V

    .line 2278
    invoke-static {v3, v5}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    .line 2279
    sget-object v5, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    invoke-static {v3}, Lcom/igsinreels/Gate;->watchTouches(Landroid/view/View;)V

    .line 2281
    invoke-static {v3}, Lcom/igsinreels/Gate;->watchTabAudio(Landroid/view/View;)V

    goto :goto_d7

    :cond_bd
    if-nez v6, :cond_d0

    .line 2282
    sget-object v5, Lcom/igsinreels/Gate;->FEED_COVERED:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d0

    .line 2283
    invoke-static {v3, v1}, Lcom/igsinreels/Gate;->cover(Landroid/view/View;Z)V

    .line 2284
    sget-object v4, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d7

    :cond_d0
    if-eqz v6, :cond_d7

    .line 2286
    sget-object v5, Lcom/igsinreels/Gate;->PENDING:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d7
    :goto_d7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_31

    :cond_db
    return-void
.end method

.method private static search(Ljava/lang/Object;I[Ljava/lang/Object;Ljava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_bb

    .line 139
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    sget v2, Lcom/igsinreels/Gate;->MAX_VISITED:I

    if-gt v1, v2, :cond_bb

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    goto/16 :goto_bb

    .line 140
    :cond_15
    instance-of v1, p0, Lcom/instagram/feed/media/Media;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 141
    aget-object p1, p2, v2

    if-eqz p1, :cond_21

    if-eq p1, p0, :cond_21

    return v2

    .line 142
    :cond_21
    aput-object p0, p2, v2

    return v0

    :cond_24
    if-gtz p1, :cond_27

    return v0

    .line 146
    :cond_27
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_48

    .line 147
    check-cast p0, Ljava/util/List;

    move v1, v2

    .line 148
    :goto_2e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_47

    const/4 v3, 0x4

    if-ge v1, v3, :cond_47

    .line 149
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    invoke-static {v3, v4, p2, p3}, Lcom/igsinreels/Gate;->search(Ljava/lang/Object;I[Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_44

    return v2

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_47
    return v0

    .line 153
    :cond_48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "java."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "kotlin."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "Collection"

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_bb

    const-string v4, "Session"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bb

    instance-of v3, p0, Landroid/view/View;

    if-nez v3, :cond_bb

    instance-of v3, p0, Landroid/content/Context;

    if-nez v3, :cond_bb

    instance-of v3, p0, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_8b

    goto :goto_bb

    .line 159
    :cond_8b
    invoke-static {v1}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_93
    :cond_93
    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 160
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_93

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_ae

    goto :goto_93

    .line 164
    :cond_ae
    :try_start_ae
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_93

    add-int/lit8 v4, p1, -0x1

    .line 168
    invoke-static {v3, v4, p2, p3}, Lcom/igsinreels/Gate;->search(Ljava/lang/Object;I[Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_93

    return v2

    :cond_bb
    :goto_bb
    return v0
.end method

.method private static searchId(Ljava/lang/Object;I)[Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 214
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_c

    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 216
    sget-object v3, Lcom/igsinreels/Gate;->MEDIA_ID:Ljava/util/regex/Pattern;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    filled-new-array {v1}, [Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_39
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_3e

    return-object v0

    .line 220
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/igsinreels/Gate;->fields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 221
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    goto :goto_4a

    .line 223
    :cond_73
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7a

    goto :goto_4a

    :cond_7a
    add-int/lit8 v5, p1, -0x1

    .line 225
    invoke-static {v4, v5}, Lcom/igsinreels/Gate;->searchId(Ljava/lang/Object;I)[Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_4a

    const/4 p0, 0x0

    .line 226
    aget-object p0, v4, p0

    filled-new-array {v3, p0}, [Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_8a
    return-object v0
.end method

.method private static section(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 98
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    sget-object v1, Lcom/igsinreels/Gate;->SAVED_CLASSES:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string p0, "saved"

    return-object p0

    .line 100
    :cond_2f
    sget-object v1, Lcom/igsinreels/Gate;->REPOST_CLASSES:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string p0, "reposts"

    return-object p0

    .line 101
    :cond_49
    sget-object v1, Lcom/igsinreels/Gate;->DM_CLASSES:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string p0, "dm"

    return-object p0

    .line 102
    :cond_63
    sget-object v1, Lcom/igsinreels/Gate;->EXPLORE_CLASSES:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7d

    const-string p0, "explore"

    return-object p0

    :cond_7d
    return-object v0
.end method

.method static sectionOf(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    move-object v2, p0

    move v1, v0

    :goto_3
    if-eqz v2, :cond_4f

    .line 555
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-static {v3}, Lcom/igsinreels/Blocker;->isBlocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string p0, "viewer"

    return-object p0

    .line 557
    :cond_16
    sget-object v4, Lcom/igsinreels/Gate;->SELF_CLASSES:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_41

    move v0, v5

    goto :goto_4a

    :cond_41
    const-string v4, "com.instagram.profile.fragment.UserDetailFragment"

    .line 558
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move v1, v5

    .line 554
    :cond_4a
    :goto_4a
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    goto :goto_3

    :cond_4f
    :goto_4f
    if-eqz p0, :cond_97

    .line 561
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igsinreels/Gate;->section(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reposts"

    .line 563
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    if-eqz v0, :cond_68

    goto :goto_6a

    :cond_68
    const-string v2, "other_reposts"

    :goto_6a
    return-object v2

    :cond_6b
    if-eqz v2, :cond_6e

    return-object v2

    .line 565
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "instagram.features.feed.contextualfeed.ContextualFeedFragment"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 566
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/igsinreels/Gate;->isSavedFeed(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string p0, "saved"

    return-object p0

    .line 568
    :cond_8b
    invoke-static {p0}, Lcom/igsinreels/Gate;->feedSection(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_92

    return-object v2

    .line 560
    :cond_92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_4f

    :cond_97
    if-eqz v0, :cond_9c

    const-string p0, "own"

    return-object p0

    :cond_9c
    if-eqz v1, :cond_a1

    const-string p0, "other_profiles"

    goto :goto_a2

    :cond_a1
    const/4 p0, 0x0

    :goto_a2
    return-object p0
.end method

.method static sectionOfSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1623
    :cond_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FEED_TIMELINE"

    .line 1625
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    const-string v1, "REEL_FEED_TIMELINE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    const-string v1, "NEWSFEED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 1626
    invoke-static {p0}, Lcom/igsinreels/Gate;->isFeedAdSource(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_97

    :cond_29
    const-string v1, "CLIPS_TAB"

    .line 1630
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "FRIENDS_LANE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "FRIEND_LANE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_94

    .line 1631
    :cond_42
    sget-object v1, Lcom/igsinreels/Gate;->EXPLORE_SOURCE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_51

    const-string p0, "explore"

    return-object p0

    :cond_51
    const-string v1, "DIRECT"

    .line 1632
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string p0, "dm"

    return-object p0

    :cond_5c
    const-string v1, "SAVE"

    .line 1633
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string p0, "saved"

    return-object p0

    :cond_67
    const-string v1, "SELF_REPOSTS"

    .line 1634
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string p0, "reposts"

    return-object p0

    :cond_72
    const-string v1, "REPOSTS_GRID"

    .line 1635
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string p0, "other_reposts"

    return-object p0

    :cond_7d
    const-string v1, "SELF_PROFILE"

    .line 1636
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string p0, "own"

    return-object p0

    :cond_88
    const-string v1, "PROFILE"

    .line 1637
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_93

    const-string p0, "other_profiles"

    return-object p0

    :cond_93
    return-object v0

    :cond_94
    :goto_94
    const-string p0, "reels_tab"

    return-object p0

    :cond_97
    :goto_97
    const-string p0, "home_feed"

    return-object p0
.end method

.method static selectionAllows(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 6

    .line 2317
    invoke-static {p0}, Lcom/igsinreels/Gate;->aiBlocked(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2320
    :cond_8
    invoke-static {p1}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v2, "tab_friends"

    .line 2322
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "tab_following"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_22

    .line 2329
    :cond_1d
    invoke-static {p0}, Lcom/igsinreels/Gate;->categories(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_3f

    .line 2325
    :cond_22
    :goto_22
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2326
    invoke-static {p0}, Lcom/igsinreels/Gate;->isAd(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "ads"

    goto :goto_3b

    .line 2327
    :cond_30
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const-string p0, "friends"

    goto :goto_3b

    :cond_39
    const-string p0, "following"

    .line 2326
    :goto_3b
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object p0, v3

    .line 2332
    :goto_3f
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_43
    :goto_43
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    const/4 p1, 0x1

    move v1, p1

    goto :goto_43

    :cond_58
    return v1
.end method

.method static sentSide(Landroid/view/View;)Ljava/lang/Boolean;
    .registers 6

    .line 803
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 804
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 806
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 808
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    cmpl-float v0, v1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_2b

    move v2, v1

    .line 809
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-ne p0, v1, :cond_33

    xor-int/lit8 v2, v2, 0x1

    .line 810
    :cond_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static settingsDef(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1939
    :try_start_0
    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_5

    return-object p0

    .line 1940
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-string v1, "FAVORITES"

    .line 1941
    invoke-static {v0, v1}, Lcom/igsinreels/Gate;->byName(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 1943
    invoke-static {}, Lcom/igsinreels/Settings;->burned()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0, v1}, Lcom/igsinreels/Gate;->addRow(Ljava/util/Map;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    goto :goto_22

    :catchall_1a
    move-exception v0

    const-string v1, "IGSR"

    const-string v2, "settingsDef"

    .line 1945
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    :goto_22
    return-object p0
.end method

.method public static settingsRoute(Ljava/lang/String;Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "igsinreels_reels"

    .line 2061
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    if-nez p1, :cond_b

    goto :goto_1c

    .line 2062
    :cond_b
    invoke-static {}, Lcom/igsinreels/Settings;->burned()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    return v0

    .line 2063
    :cond_13
    new-instance p0, Lcom/igsinreels/Gate$8;

    invoke-direct {p0}, Lcom/igsinreels/Gate$8;-><init>()V

    invoke-static {p1, p0}, Lcom/igsinreels/Settings;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return v0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method private static singleString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 11

    .line 894
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_d
    const/4 v6, 0x1

    if-ge v3, v1, :cond_34

    aget-object v7, v0, v3

    .line 895
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_31

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_25

    goto :goto_31

    .line 896
    :cond_25
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    add-int/lit8 v4, v4, 0x1

    .line 899
    :try_start_2a
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    move-object v5, v6

    :catchall_31
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_34
    if-ne v4, v6, :cond_3c

    if-nez v5, :cond_3b

    const-string v2, ""

    goto :goto_3c

    :cond_3b
    move-object v2, v5

    :cond_3c
    :goto_3c
    return-object v2
.end method

.method private static stopFeed(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 2393
    sget-object v0, Lcom/igsinreels/Gate;->STOPPED:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 2394
    :cond_9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2395
    sget-object v0, Lcom/igsinreels/Gate;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/igsinreels/Gate$10;

    invoke-direct {v1, p0}, Lcom/igsinreels/Gate$10;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static tabKeyOfSource(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 382
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "FRIEND"

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "tab_friends"

    return-object p0

    :cond_15
    const-string v0, "FOLLOW"

    .line 384
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "tab_following"

    return-object p0

    :cond_20
    const-string p0, "tab_foryou"

    return-object p0
.end method

.method static tabModeFromHeader(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e3851ec    # 0.18f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 349
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_70

    .line 350
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 351
    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v8

    if-nez v8, :cond_34

    goto :goto_1a

    .line 352
    :cond_34
    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v1, v7

    if-gt v7, v4, :cond_1a

    aget v7, v1, v6

    if-ltz v7, :cond_1a

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    if-le v7, v8, :cond_46

    goto :goto_1a

    .line 354
    :cond_46
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_5a

    move-object v7, v5

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_5a

    .line 355
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_5a
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1a

    .line 358
    check-cast v5, Landroid/view/ViewGroup;

    .line 359
    :goto_60
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_1a

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    .line 364
    :cond_70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    move v5, v4

    move-object v4, v3

    :cond_79
    :goto_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_96

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 365
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 366
    invoke-virtual {v7}, Landroid/widget/TextView;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_8f

    move-object v3, v7

    :cond_8f
    aget v8, v1, v6

    if-le v8, v5, :cond_79

    move-object v4, v7

    move v5, v8

    goto :goto_79

    :cond_96
    if-eqz v3, :cond_c2

    .line 372
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v0, :cond_9f

    goto :goto_c2

    :cond_9f
    if-ne v3, v4, :cond_a4

    const-string p0, "tab_friends"

    goto :goto_c1

    .line 375
    :cond_a4
    sget-object p0, Lcom/igsinreels/Gate;->FOLLOWING_LABEL:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_bf

    const-string p0, "tab_following"

    goto :goto_c1

    :cond_bf
    const-string p0, "tab_foryou"

    :goto_c1
    return-object p0

    :cond_c2
    :goto_c2
    return-object p1
.end method

.method private static tileMedia(Landroid/view/View;)Ljava/lang/Object;
    .registers 5

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4a

    .line 722
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x3

    .line 724
    invoke-static {p0, v1}, Lcom/igsinreels/Gate;->findMediaInView(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_32

    return-object v1

    .line 727
    :cond_32
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_37
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static trackFeed(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 2094
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2095
    sget-object v1, Lcom/igsinreels/Gate;->HOME_CLASSES:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v0, "feed_foryou"

    .line 2096
    sput-object v0, Lcom/igsinreels/Gate;->feedMode:Ljava/lang/String;

    .line 2097
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->watchFeed(Landroid/view/View;)V

    goto :goto_6b

    :cond_42
    const-string v1, "instagram.features.feed.contextualfeed.ContextualFeedFragment"

    .line 2098
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2099
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->homeFeedKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igsinreels/Gate;->feedMode:Ljava/lang/String;

    .line 2100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->watchFeed(Landroid/view/View;)V

    goto :goto_6b

    .line 2101
    :cond_62
    invoke-static {p0}, Lcom/igsinreels/Gate;->sectionOf(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6b

    const/4 p0, 0x0

    .line 2102
    sput-object p0, Lcom/igsinreels/Gate;->feedMode:Ljava/lang/String;

    :cond_6b
    :goto_6b
    return-void
.end method

.method private static trackScrollDirection()V
    .registers 3

    .line 446
    sget-object v0, Lcom/igsinreels/Gate;->dirRef:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 447
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1f

    .line 457
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 458
    sget v1, Lcom/igsinreels/Gate;->dirRefTop:I

    if-ge v0, v1, :cond_17

    const/4 v1, 0x1

    sput v1, Lcom/igsinreels/Gate;->scrollDir:I

    goto :goto_1c

    :cond_17
    if-le v0, v1, :cond_1c

    const/4 v1, -0x1

    .line 459
    sput v1, Lcom/igsinreels/Gate;->scrollDir:I

    .line 460
    :cond_1c
    :goto_1c
    sput v0, Lcom/igsinreels/Gate;->dirRefTop:I

    return-void

    .line 448
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/igsinreels/Gate;->TAB_PAGES:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_29

    .line 449
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 450
    sput-object v1, Lcom/igsinreels/Gate;->dirRef:Landroid/view/View;

    .line 451
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sput v0, Lcom/igsinreels/Gate;->dirRefTop:I

    :cond_45
    return-void
.end method

.method static viewAt(Landroid/view/View;FFLjava/util/Map;)Landroid/view/View;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FF",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1317
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [I

    :goto_b
    if-eqz p0, :cond_80

    .line 1321
    invoke-interface {p3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-object p0

    .line 1322
    :cond_14
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_19

    return-object v1

    .line 1323
    :cond_19
    check-cast p0, Landroid/view/ViewGroup;

    .line 1326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v2

    move-object v2, v1

    :goto_23
    if-ltz v4, :cond_7e

    .line 1327
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1328
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7b

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_39

    goto :goto_7b

    :cond_39
    if-eqz v2, :cond_48

    .line 1329
    invoke-virtual {v5}, Landroid/view/View;->getZ()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_48

    goto :goto_7b

    .line 1330
    :cond_48
    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    aget v6, v0, v6

    int-to-float v7, v6

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_7b

    int-to-float v6, v6

    .line 1331
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, p1, v6

    if-gez v6, :cond_7b

    aget v6, v0, v3

    int-to-float v7, v6

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_7b

    int-to-float v6, v6

    .line 1332
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, p2, v6

    if-gez v6, :cond_7b

    move-object v2, v5

    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    :cond_7e
    move-object p0, v2

    goto :goto_b

    :cond_80
    return-object v1
.end method

.method public static viewerAllowed(Landroid/os/Bundle;)Z
    .registers 13

    .line 1643
    invoke-static {p0}, Lcom/igsinreels/Gate;->viewerSource(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 1644
    invoke-static {p0}, Lcom/igsinreels/Gate;->sectionOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dm"

    .line 1646
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x2710

    if-eqz v2, :cond_44

    .line 1648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/igsinreels/Gate;->lastTapTime:J

    sub-long/2addr v8, v10

    cmp-long p0, v8, v6

    if-gez p0, :cond_22

    sget-object v3, Lcom/igsinreels/Gate;->lastTapSent:Ljava/lang/Boolean;

    :cond_22
    const-string p0, "dm_sent"

    if-nez v3, :cond_37

    .line 1649
    invoke-static {v1}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {p0}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_34

    goto/16 :goto_b2

    :cond_34
    move v4, v5

    goto/16 :goto_b2

    .line 1650
    :cond_37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v1, p0

    :cond_3e
    invoke-static {v1}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_b2

    :cond_44
    const-string v1, "home_feed"

    .line 1651
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1652
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLLOWING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "feed_following"

    goto :goto_5d

    :cond_5b
    const-string v0, "feed_foryou"

    .line 1653
    :goto_5d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v8, Lcom/igsinreels/Gate;->lastTapMediaTime:J

    sub-long/2addr v1, v8

    cmp-long v1, v1, v6

    if-gez v1, :cond_6a

    sget-object v3, Lcom/igsinreels/Gate;->lastTapMedia:Ljava/lang/Object;

    :cond_6a
    if-eqz v3, :cond_72

    .line 1654
    invoke-static {v3, v0}, Lcom/igsinreels/Gate;->selectionAllows(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    :goto_70
    move v4, p0

    goto :goto_b2

    .line 1655
    :cond_72
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->isFeedAdSource(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_87

    invoke-static {v0}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "ads"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_70

    .line 1656
    :cond_87
    invoke-static {v0}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    goto :goto_70

    :cond_91
    const-string v1, "reels_tab"

    .line 1657
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1658
    invoke-static {p0}, Lcom/igsinreels/Gate;->tabKeyOfSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1659
    invoke-static {p0}, Lcom/igsinreels/Settings;->tabEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {p0}, Lcom/igsinreels/Settings;->selection(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_b2

    .line 1661
    :cond_ae
    invoke-static {v0}, Lcom/igsinreels/Settings;->allowed(Ljava/lang/String;)Z

    move-result v4

    :goto_b2
    if-eqz v4, :cond_c8

    .line 1663
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igsinreels/Gate;->lastTapMediaTime:J

    sub-long/2addr v0, v2

    cmp-long p0, v0, v6

    if-gez p0, :cond_c8

    sget-object p0, Lcom/igsinreels/Gate;->lastTapMedia:Ljava/lang/Object;

    invoke-static {p0}, Lcom/igsinreels/Gate;->aiBlocked(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c8

    goto :goto_c9

    :cond_c8
    move v5, v4

    :goto_c9
    return v5
.end method

.method static viewerSource(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1607
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1608
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    goto :goto_c

    .line 1610
    :cond_1f
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClipsViewerConfig("

    .line 1611
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_c

    .line 1612
    :cond_2c
    sget-object v3, Lcom/igsinreels/Gate;->VIEWER_SOURCE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1613
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_3e

    return-object p0

    :catchall_3e
    move-exception p0

    const-string v1, "IGSR"

    const-string v2, "viewerSource"

    .line 1616
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    return-object v0
.end method

.method private static watchFeed(Landroid/view/View;)V
    .registers 4

    .line 2168
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 2169
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2170
    sget-object v1, Lcom/igsinreels/Gate;->FEED_WATCHED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    .line 2171
    :cond_11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    new-instance v1, Lcom/igsinreels/Gate$9;

    invoke-direct {v1, p0}, Lcom/igsinreels/Gate$9;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static watchTabAudio(Landroid/view/View;)V
    .registers 6

    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 398
    sget-object v1, Lcom/igsinreels/Gate;->AUDIO_WATCHED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    .line 399
    :cond_11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v1, Lcom/igsinreels/Gate$1;

    invoke-direct {v1, p0}, Lcom/igsinreels/Gate$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 410
    sget-object v1, Lcom/igsinreels/Gate;->MAIN:Landroid/os/Handler;

    sget-object v2, Lcom/igsinreels/Gate;->skipCheck:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    new-instance v2, Lcom/igsinreels/Gate$2;

    invoke-direct {v2, p0}, Lcom/igsinreels/Gate$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 419
    new-instance v0, Lcom/igsinreels/Gate$3;

    invoke-direct {v0, p0}, Lcom/igsinreels/Gate$3;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static watchTouches(Landroid/view/View;)V
    .registers 5

    .line 1271
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/igsinreels/Gate;->activityOf(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_b

    return-void

    .line 1273
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1274
    sget-object v1, Lcom/igsinreels/Gate;->WATCHED:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_2e

    .line 1275
    :cond_1a
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    if-nez v2, :cond_21

    return-void

    .line 1277
    :cond_21
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    new-instance v1, Lcom/igsinreels/Gate$TouchFilter;

    invoke-direct {v1, v2, p0}, Lcom/igsinreels/Gate$TouchFilter;-><init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.class Lcom/igsinreels/Gate$9;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate;->watchFeed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2172
    iput-object p1, p0, Lcom/igsinreels/Gate$9;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .line 2175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetfeedScanAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    .line 2176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/igsinreels/Gate;->-$$Nest$sfputfeedScanAt(J)V

    .line 2177
    iget-object v0, p0, Lcom/igsinreels/Gate$9;->val$root:Landroid/view/View;

    invoke-static {v0}, Lcom/igsinreels/Gate;->feedScan(Landroid/view/View;)V

    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

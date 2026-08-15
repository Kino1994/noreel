.class Lcom/igsinreels/Gate$1;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate;->watchTabAudio(Landroid/view/View;)V
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

    .line 400
    iput-object p1, p0, Lcom/igsinreels/Gate$1;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/igsinreels/Gate$1;->val$root:Landroid/view/View;

    invoke-static {v0}, Lcom/igsinreels/Gate;->checkTabAudio(Landroid/view/View;)V

    .line 404
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$smtrackScrollDirection()V

    .line 406
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetskipCheck()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetskipCheck()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

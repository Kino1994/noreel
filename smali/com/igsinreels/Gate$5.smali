.class Lcom/igsinreels/Gate$5;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate;->checkTabAudio(Landroid/view/View;)V
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

    .line 526
    iput-object p1, p0, Lcom/igsinreels/Gate$5;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 529
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetmuted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 530
    :cond_7
    iget-object v0, p0, Lcom/igsinreels/Gate$5;->val$root:Landroid/view/View;

    invoke-static {v0}, Lcom/igsinreels/Gate;->checkTabAudio(Landroid/view/View;)V

    .line 531
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetmuted()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

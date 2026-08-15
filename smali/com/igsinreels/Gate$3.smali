.class Lcom/igsinreels/Gate$3;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 419
    iput-object p1, p0, Lcom/igsinreels/Gate$3;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 422
    iget-object v0, p0, Lcom/igsinreels/Gate$3;->val$root:Landroid/view/View;

    invoke-static {v0}, Lcom/igsinreels/Gate;->checkTabAudio(Landroid/view/View;)V

    return-void
.end method

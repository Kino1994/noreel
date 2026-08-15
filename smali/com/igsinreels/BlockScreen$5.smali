.class Lcom/igsinreels/BlockScreen$5;
.super Ljava/lang/Object;
.source "BlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/BlockScreen;->build(Landroid/content/Context;Lcom/igsinreels/BlockScreen$Host;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$goBack:Ljava/lang/Runnable;

.field final synthetic val$host:Lcom/igsinreels/BlockScreen$Host;


# direct methods
.method constructor <init>(Lcom/igsinreels/BlockScreen$Host;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/igsinreels/BlockScreen$5;->val$host:Lcom/igsinreels/BlockScreen$Host;

    iput-object p2, p0, Lcom/igsinreels/BlockScreen$5;->val$goBack:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$5;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-interface {v0}, Lcom/igsinreels/BlockScreen$Host;->active()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$5;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-interface {v0}, Lcom/igsinreels/BlockScreen$Host;->visible()Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 234
    :cond_12
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$5;->val$goBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.class Lcom/igsinreels/BlockScreen$3;
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
.field private done:Z

.field final synthetic val$host:Lcom/igsinreels/BlockScreen$Host;


# direct methods
.method constructor <init>(Lcom/igsinreels/BlockScreen$Host;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/igsinreels/BlockScreen$3;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 209
    iget-boolean v0, p0, Lcom/igsinreels/BlockScreen$3;->done:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/igsinreels/BlockScreen$3;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-interface {v0}, Lcom/igsinreels/BlockScreen$Host;->active()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_33

    :cond_d
    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lcom/igsinreels/BlockScreen$3;->done:Z

    .line 211
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$3;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-interface {v0}, Lcom/igsinreels/BlockScreen$Host;->activity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/igsinreels/BlockScreen$3;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-interface {v1}, Lcom/igsinreels/BlockScreen$Host;->dismiss()V

    .line 213
    iget-object v1, p0, Lcom/igsinreels/BlockScreen$3;->val$host:Lcom/igsinreels/BlockScreen$Host;

    invoke-interface {v1}, Lcom/igsinreels/BlockScreen$Host;->goesBack()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_33

    .line 215
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_33

    .line 217
    :catchall_30
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_33
    :goto_33
    return-void
.end method

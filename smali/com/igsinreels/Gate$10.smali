.class Lcom/igsinreels/Gate$10;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate;->stopFeed(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2395
    iput-object p1, p0, Lcom/igsinreels/Gate$10;->val$f:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2398
    iget-object v0, p0, Lcom/igsinreels/Gate$10;->val$f:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2399
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_1e

    .line 2401
    :cond_f
    :try_start_f
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_1b

    :catchall_13
    move-exception v1

    const-string v2, "IGSR"

    const-string v3, "back"

    .line 2403
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2405
    :goto_1b
    invoke-static {v0}, Lcom/igsinreels/BlockScreen;->overlay(Landroid/app/Activity;)V

    :cond_1e
    :goto_1e
    return-void
.end method

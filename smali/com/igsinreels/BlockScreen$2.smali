.class Lcom/igsinreels/BlockScreen$2;
.super Ljava/lang/Object;
.source "BlockScreen.java"

# interfaces
.implements Lcom/igsinreels/BlockScreen$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/BlockScreen;->overlay(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$content:Landroid/view/ViewGroup;

.field final synthetic val$self:[Landroid/view/View;


# direct methods
.method constructor <init>([Landroid/view/View;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/igsinreels/BlockScreen$2;->val$self:[Landroid/view/View;

    iput-object p2, p0, Lcom/igsinreels/BlockScreen$2;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/igsinreels/BlockScreen$2;->val$content:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public active()Z
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$2;->val$self:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public activity()Landroid/app/Activity;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$2;->val$a:Landroid/app/Activity;

    return-object v0
.end method

.method public dismiss()V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$2;->val$content:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/igsinreels/BlockScreen$2;->val$self:[Landroid/view/View;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public goesBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public visible()Z
    .registers 2

    .line 104
    invoke-virtual {p0}, Lcom/igsinreels/BlockScreen$2;->active()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/igsinreels/BlockScreen$2;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

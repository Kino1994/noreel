.class Lcom/igsinreels/BlockScreen$1;
.super Ljava/lang/Object;
.source "BlockScreen.java"

# interfaces
.implements Lcom/igsinreels/BlockScreen$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/BlockScreen;->create(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/igsinreels/BlockScreen$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public active()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public activity()Landroid/app/Activity;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .registers 1

    return-void
.end method

.method public goesBack()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public visible()Z
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$1;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    return v0
.end method

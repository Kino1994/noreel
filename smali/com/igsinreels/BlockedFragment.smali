.class public final Lcom/igsinreels/BlockedFragment;
.super __BASE_FRAGMENT__
.source "BlockedFragment.java"

# Sustituye a ClipsViewerFragment / ClipsTabFragment: no carga ningun reel,
# muestra un aviso y vuelve atras sola.


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, __BASE_FRAGMENT__-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .registers 2

    const-string v0, "igsinreels_blocked"

    return-object v0
.end method

.method public getSession()__SESSION_TYPE__
    .registers 2

    invoke-static {p0}, __SESSION_LAZY__(Landroidx/fragment/app/Fragment;)__LAZY_TYPE__

    move-result-object v0

    invoke-interface {v0}, __LAZY_TYPE__->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, __SESSION_TYPE__

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->autoClose(Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/igsinreels/BlockScreen;->create(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.class Lcom/igsinreels/Settings$7;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Settings;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$box:Landroid/widget/LinearLayout;

.field final synthetic val$boxes:Ljava/util/List;

.field final synthetic val$enabled:[Z

.field final synthetic val$list:Landroid/widget/LinearLayout;

.field final synthetic val$update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;[ZLjava/util/List;Landroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lcom/igsinreels/Settings$7;->val$box:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/igsinreels/Settings$7;->val$enabled:[Z

    iput-object p3, p0, Lcom/igsinreels/Settings$7;->val$boxes:Ljava/util/List;

    iput-object p4, p0, Lcom/igsinreels/Settings$7;->val$list:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/igsinreels/Settings$7;->val$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 504
    iget-object v0, p0, Lcom/igsinreels/Settings$7;->val$box:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/igsinreels/Settings$7;->val$enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_c
    const v1, 0x3eb33333    # 0.35f

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 505
    iget-object v0, p0, Lcom/igsinreels/Settings$7;->val$boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/igsinreels/Settings$7;->val$enabled:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_18

    .line 506
    :cond_2c
    iget-object v0, p0, Lcom/igsinreels/Settings$7;->val$enabled:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/igsinreels/Settings$7;->val$list:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 507
    :cond_39
    iget-object v0, p0, Lcom/igsinreels/Settings$7;->val$update:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

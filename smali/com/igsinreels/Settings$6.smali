.class Lcom/igsinreels/Settings$6;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Settings;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:[Z

.field final synthetic val$list:Landroid/widget/LinearLayout;

.field final synthetic val$update:Ljava/lang/Runnable;


# direct methods
.method constructor <init>([ZLandroid/widget/LinearLayout;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 482
    iput-object p1, p0, Lcom/igsinreels/Settings$6;->val$enabled:[Z

    iput-object p2, p0, Lcom/igsinreels/Settings$6;->val$list:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/igsinreels/Settings$6;->val$update:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 485
    iget-object p1, p0, Lcom/igsinreels/Settings$6;->val$enabled:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-nez p1, :cond_8

    return-void

    .line 486
    :cond_8
    iget-object p1, p0, Lcom/igsinreels/Settings$6;->val$list:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v0, 0x8

    :cond_12
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 487
    iget-object p1, p0, Lcom/igsinreels/Settings$6;->val$update:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

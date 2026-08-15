.class Lcom/igsinreels/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Settings;->confirmBurn(Landroid/app/Activity;Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field left:I

.field final synthetic val$b:[Ljava/lang/String;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$ok:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/widget/Button;[Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/igsinreels/Settings$2;->val$dlg:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/igsinreels/Settings$2;->val$ok:Landroid/widget/Button;

    iput-object p3, p0, Lcom/igsinreels/Settings$2;->val$b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/igsinreels/Settings$2;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 335
    iput p1, p0, Lcom/igsinreels/Settings$2;->left:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/igsinreels/Settings$2;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 340
    :cond_9
    iget v0, p0, Lcom/igsinreels/Settings$2;->left:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/igsinreels/Settings$2;->left:I

    const/4 v2, 0x3

    if-lez v0, :cond_3c

    .line 342
    iget-object v1, p0, Lcom/igsinreels/Settings$2;->val$ok:Landroid/widget/Button;

    iget-object v3, p0, Lcom/igsinreels/Settings$2;->val$b:[Ljava/lang/String;

    aget-object v2, v3, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/igsinreels/Settings$2;->val$h:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4a

    .line 345
    :cond_3c
    iget-object v0, p0, Lcom/igsinreels/Settings$2;->val$ok:Landroid/widget/Button;

    iget-object v3, p0, Lcom/igsinreels/Settings$2;->val$b:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/igsinreels/Settings$2;->val$ok:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4a
    return-void
.end method

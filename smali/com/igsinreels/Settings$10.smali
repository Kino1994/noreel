.class Lcom/igsinreels/Settings$10;
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
.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 542
    iput-object p1, p0, Lcom/igsinreels/Settings$10;->val$a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/igsinreels/Settings$10;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 545
    iget-object p1, p0, Lcom/igsinreels/Settings$10;->val$a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/igsinreels/Settings$10;->val$d:Landroid/app/Dialog;

    invoke-static {p1, v0}, Lcom/igsinreels/Settings;->-$$Nest$smconfirmBurn(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

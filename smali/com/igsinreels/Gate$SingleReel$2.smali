.class Lcom/igsinreels/Gate$SingleReel$2;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate$SingleReel;->settle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igsinreels/Gate$SingleReel;


# direct methods
.method constructor <init>(Lcom/igsinreels/Gate$SingleReel;)V
    .registers 2

    .line 1746
    iput-object p1, p0, Lcom/igsinreels/Gate$SingleReel$2;->this$0:Lcom/igsinreels/Gate$SingleReel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1749
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_14

    iget-object p1, p0, Lcom/igsinreels/Gate$SingleReel$2;->this$0:Lcom/igsinreels/Gate$SingleReel;

    invoke-static {p1}, Lcom/igsinreels/Gate$SingleReel;->-$$Nest$fgetfired(Lcom/igsinreels/Gate$SingleReel;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1750
    iget-object p1, p0, Lcom/igsinreels/Gate$SingleReel$2;->this$0:Lcom/igsinreels/Gate$SingleReel;

    invoke-virtual {p1}, Lcom/igsinreels/Gate$SingleReel;->fire()V

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

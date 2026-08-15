.class Lcom/igsinreels/Gate$7;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igsinreels/Gate;->hook(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1085
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetCOVERS()Ljava/util/WeakHashMap;

    move-result-object p7

    invoke-virtual {p7, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/graphics/drawable/Drawable;

    if-eqz p7, :cond_13

    sub-int p9, p4, p2

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    .line 1086
    invoke-virtual {p7, p3, p3, p9, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1087
    :cond_13
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetHOLDER_ONLY()Ljava/util/WeakHashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_30

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetPENDING()Ljava/util/WeakHashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_30

    if-ne p2, p6, :cond_2d

    if-ne p4, p8, :cond_2d

    if-ne p6, p8, :cond_30

    .line 1088
    :cond_2d
    invoke-static {p1}, Lcom/igsinreels/Gate;->-$$Nest$smevaluate(Landroid/view/View;)V

    :cond_30
    return-void
.end method

.class final Lcom/igsinreels/Settings$Toggle;
.super Landroid/view/View;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Toggle"
.end annotation


# instance fields
.field private final dark:Z

.field on:Z

.field private final r:Landroid/graphics/RectF;

.field private final thumb:Landroid/graphics/Paint;

.field private final track:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .registers 5

    .line 576
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 571
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/igsinreels/Settings$Toggle;->track:Landroid/graphics/Paint;

    .line 572
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/igsinreels/Settings$Toggle;->thumb:Landroid/graphics/Paint;

    .line 573
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/igsinreels/Settings$Toggle;->r:Landroid/graphics/RectF;

    .line 577
    iput-boolean p2, p0, Lcom/igsinreels/Settings$Toggle;->dark:Z

    .line 578
    iput-boolean p3, p0, Lcom/igsinreels/Settings$Toggle;->on:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 588
    invoke-virtual {p0}, Lcom/igsinreels/Settings$Toggle;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/igsinreels/Settings$Toggle;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    .line 589
    iget-object v3, p0, Lcom/igsinreels/Settings$Toggle;->track:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/igsinreels/Settings$Toggle;->on:Z

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    if-eqz v4, :cond_1f

    iget-boolean v4, p0, Lcom/igsinreels/Settings$Toggle;->dark:Z

    if-eqz v4, :cond_1d

    move v4, v5

    goto :goto_2a

    :cond_1d
    move v4, v6

    goto :goto_2a

    :cond_1f
    iget-boolean v4, p0, Lcom/igsinreels/Settings$Toggle;->dark:Z

    if-eqz v4, :cond_27

    const v4, -0xc9c9ca

    goto :goto_2a

    :cond_27
    const v4, -0x242425

    :goto_2a
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 590
    iget-object v3, p0, Lcom/igsinreels/Settings$Toggle;->r:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 591
    iget-object v3, p0, Lcom/igsinreels/Settings$Toggle;->r:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/igsinreels/Settings$Toggle;->track:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 592
    iget-object v3, p0, Lcom/igsinreels/Settings$Toggle;->thumb:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/igsinreels/Settings$Toggle;->on:Z

    if-eqz v4, :cond_45

    iget-boolean v4, p0, Lcom/igsinreels/Settings$Toggle;->dark:Z

    if-eqz v4, :cond_45

    move v5, v6

    :cond_45
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 594
    iget-boolean v3, p0, Lcom/igsinreels/Settings$Toggle;->on:Z

    if-eqz v3, :cond_54

    sub-float/2addr v0, v2

    goto :goto_55

    :cond_54
    move v0, v2

    :goto_55
    iget-object v3, p0, Lcom/igsinreels/Settings$Toggle;->thumb:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method setOn(Z)V
    .registers 2

    .line 582
    iput-boolean p1, p0, Lcom/igsinreels/Settings$Toggle;->on:Z

    .line 583
    invoke-virtual {p0}, Lcom/igsinreels/Settings$Toggle;->invalidate()V

    return-void
.end method

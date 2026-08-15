.class final Lcom/igsinreels/BlockScreen$StopSign;
.super Landroid/view/View;
.source "BlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/BlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StopSign"
.end annotation


# instance fields
.field private final border:Landroid/graphics/Paint;

.field private final fill:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final text:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 253
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/igsinreels/BlockScreen$StopSign;->fill:Landroid/graphics/Paint;

    .line 248
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/igsinreels/BlockScreen$StopSign;->border:Landroid/graphics/Paint;

    .line 249
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/igsinreels/BlockScreen$StopSign;->text:Landroid/graphics/Paint;

    .line 250
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/igsinreels/BlockScreen$StopSign;->path:Landroid/graphics/Path;

    const v3, -0x1ac6cb

    .line 254
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, -0x1

    .line 255
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 257
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 259
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private octagon(FFF)V
    .registers 11

    .line 279
    iget-object v0, p0, Lcom/igsinreels/BlockScreen$StopSign;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_34

    mul-int/lit8 v1, v0, 0x2d

    int-to-double v1, v1

    const-wide v3, 0x4036800000000000L    # 22.5

    add-double/2addr v1, v3

    .line 281
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    float-to-double v3, p3

    .line 282
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v5, v5

    add-float/2addr v5, p1

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    double-to-float v1, v3

    add-float/2addr v1, p2

    .line 284
    iget-object v2, p0, Lcom/igsinreels/BlockScreen$StopSign;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2e

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 286
    :cond_34
    iget-object p1, p0, Lcom/igsinreels/BlockScreen$StopSign;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 264
    invoke-virtual {p0}, Lcom/igsinreels/BlockScreen$StopSign;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/igsinreels/BlockScreen$StopSign;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 265
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    const v4, 0x3d8f5c29    # 0.07f

    mul-float/2addr v4, v2

    div-float v5, v4, v3

    sub-float v5, v2, v5

    .line 268
    invoke-direct {p0, v0, v1, v5}, Lcom/igsinreels/BlockScreen$StopSign;->octagon(FFF)V

    .line 269
    iget-object v5, p0, Lcom/igsinreels/BlockScreen$StopSign;->path:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/igsinreels/BlockScreen$StopSign;->fill:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 270
    iget-object v5, p0, Lcom/igsinreels/BlockScreen$StopSign;->border:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v5, 0x3fcccccd    # 1.6f

    mul-float/2addr v4, v5

    sub-float v4, v2, v4

    .line 271
    invoke-direct {p0, v0, v1, v4}, Lcom/igsinreels/BlockScreen$StopSign;->octagon(FFF)V

    .line 272
    iget-object v4, p0, Lcom/igsinreels/BlockScreen$StopSign;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/igsinreels/BlockScreen$StopSign;->border:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 273
    iget-object v4, p0, Lcom/igsinreels/BlockScreen$StopSign;->text:Landroid/graphics/Paint;

    const v5, 0x3f051eb8    # 0.52f

    mul-float/2addr v2, v5

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 274
    iget-object v2, p0, Lcom/igsinreels/BlockScreen$StopSign;->text:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 275
    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v2

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/igsinreels/BlockScreen$StopSign;->text:Landroid/graphics/Paint;

    const-string v3, "STOP"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

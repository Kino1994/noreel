.class final Lcom/igsinreels/Gate$Cover;
.super Landroid/graphics/drawable/Drawable;
.source "Gate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Gate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cover"
.end annotation


# instance fields
.field final backRect:Landroid/graphics/RectF;

.field private final bg:Landroid/graphics/Paint;

.field private final border:Landroid/graphics/Paint;

.field private final density:F

.field private final fill:Landroid/graphics/Paint;

.field private lastH:I

.field private lastW:I

.field private final msg:Landroid/text/TextPaint;

.field private msgLayout:Landroid/text/StaticLayout;

.field private final path:Landroid/graphics/Path;

.field private final pill:Landroid/graphics/Paint;

.field private final pillBg:Landroid/graphics/Paint;

.field private final s:[Ljava/lang/String;

.field private final screenH:I

.field private final stop:Landroid/graphics/Paint;

.field private final title:Landroid/text/TextPaint;

.field private titleLayout:Landroid/text/StaticLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 11

    .line 1139
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/igsinreels/Gate$Cover;->bg:Landroid/graphics/Paint;

    .line 1124
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/igsinreels/Gate$Cover;->fill:Landroid/graphics/Paint;

    .line 1125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/igsinreels/Gate$Cover;->border:Landroid/graphics/Paint;

    .line 1126
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/igsinreels/Gate$Cover;->stop:Landroid/graphics/Paint;

    .line 1127
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lcom/igsinreels/Gate$Cover;->title:Landroid/text/TextPaint;

    .line 1128
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Lcom/igsinreels/Gate$Cover;->msg:Landroid/text/TextPaint;

    .line 1129
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/igsinreels/Gate$Cover;->path:Landroid/graphics/Path;

    .line 1130
    invoke-static {}, Lcom/igsinreels/BlockScreen;->strings()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/igsinreels/Gate$Cover;->s:[Ljava/lang/String;

    const/4 v6, -0x1

    .line 1132
    iput v6, p0, Lcom/igsinreels/Gate$Cover;->lastW:I

    iput v6, p0, Lcom/igsinreels/Gate$Cover;->lastH:I

    .line 1135
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/igsinreels/Gate$Cover;->pillBg:Landroid/graphics/Paint;

    .line 1136
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/igsinreels/Gate$Cover;->pill:Landroid/graphics/Paint;

    .line 1231
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/igsinreels/Gate$Cover;->backRect:Landroid/graphics/RectF;

    .line 1140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/igsinreels/Gate$Cover;->screenH:I

    const/high16 v8, -0x1000000

    .line 1141
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1142
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1143
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v7, -0x1ac6cb

    .line 1144
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1145
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1146
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1147
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1148
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1149
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1150
    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1151
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v0, -0x4c000001

    .line 1152
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/igsinreels/Gate$Cover;->density:F

    return-void
.end method

.method private layout(Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;
    .registers 6

    .line 1157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1158
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1159
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p1

    return-object p1
.end method

.method private octagon(FFF)V
    .registers 11

    .line 1234
    iget-object v0, p0, Lcom/igsinreels/Gate$Cover;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_34

    mul-int/lit8 v1, v0, 0x2d

    int-to-double v1, v1

    const-wide v3, 0x4036800000000000L    # 22.5

    add-double/2addr v1, v3

    .line 1236
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    float-to-double v3, p3

    .line 1237
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v5, v5

    add-float/2addr v5, p1

    .line 1238
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v3, v1

    double-to-float v1, v3

    add-float/2addr v1, p2

    .line 1239
    iget-object v2, p0, Lcom/igsinreels/Gate$Cover;->path:Landroid/graphics/Path;

    if-nez v0, :cond_2e

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1241
    :cond_34
    iget-object p1, p0, Lcom/igsinreels/Gate$Cover;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/igsinreels/Gate$Cover;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1165
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    return-void

    .line 1166
    :cond_f
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1167
    iget v5, v0, Lcom/igsinreels/Gate$Cover;->lastW:I

    const/4 v7, 0x0

    if-ne v3, v5, :cond_23

    iget v5, v0, Lcom/igsinreels/Gate$Cover;->lastH:I

    if-eq v4, v5, :cond_21

    goto :goto_23

    :cond_21
    const/4 v8, 0x1

    goto :goto_9a

    .line 1168
    :cond_23
    :goto_23
    iput v3, v0, Lcom/igsinreels/Gate$Cover;->lastW:I

    .line 1169
    iput v4, v0, Lcom/igsinreels/Gate$Cover;->lastH:I

    .line 1170
    iget-object v5, v0, Lcom/igsinreels/Gate$Cover;->bg:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v8

    const/4 v11, 0x0

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v8

    const v8, -0xf4f4ee

    const/high16 v13, -0x1000000

    const v14, -0xe4efcb

    filled-new-array {v14, v8, v13}, [I

    move-result-object v13

    const/4 v14, 0x0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v15

    move-object v6, v15

    move-object/from16 v15, v16

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v5, v3

    const v6, 0x3f5c28f6    # 0.86f

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 1173
    iget-object v8, v0, Lcom/igsinreels/Gate$Cover;->title:Landroid/text/TextPaint;

    iget v9, v0, Lcom/igsinreels/Gate$Cover;->density:F

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v9

    const/high16 v11, 0x41300000    # 11.0f

    div-float v11, v5, v11

    const/high16 v12, 0x41e00000    # 28.0f

    mul-float/2addr v9, v12

    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1174
    iget-object v8, v0, Lcom/igsinreels/Gate$Cover;->msg:Landroid/text/TextPaint;

    iget v9, v0, Lcom/igsinreels/Gate$Cover;->density:F

    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v9

    const/high16 v11, 0x41880000    # 17.0f

    div-float/2addr v5, v11

    mul-float/2addr v9, v11

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1175
    iget-object v5, v0, Lcom/igsinreels/Gate$Cover;->s:[Ljava/lang/String;

    aget-object v5, v5, v7

    iget-object v8, v0, Lcom/igsinreels/Gate$Cover;->title:Landroid/text/TextPaint;

    invoke-direct {v0, v5, v8, v6}, Lcom/igsinreels/Gate$Cover;->layout(Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    .line 1176
    iget-object v5, v0, Lcom/igsinreels/Gate$Cover;->s:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    iget-object v9, v0, Lcom/igsinreels/Gate$Cover;->msg:Landroid/text/TextPaint;

    invoke-direct {v0, v5, v9, v6}, Lcom/igsinreels/Gate$Cover;->layout(Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/StaticLayout;

    move-result-object v5

    iput-object v5, v0, Lcom/igsinreels/Gate$Cover;->msgLayout:Landroid/text/StaticLayout;

    .line 1178
    :goto_9a
    iget-object v5, v0, Lcom/igsinreels/Gate$Cover;->bg:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1180
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    const/high16 v6, 0x42960000    # 75.0f

    iget v9, v0, Lcom/igsinreels/Gate$Cover;->density:F

    mul-float/2addr v9, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, 0x3eb33333    # 0.35f

    mul-float/2addr v6, v5

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v5, v9

    add-float v11, v10, v6

    .line 1182
    iget-object v12, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    int-to-float v4, v4

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v12, v4

    cmpg-float v11, v11, v12

    if-gez v11, :cond_ce

    move v11, v8

    goto :goto_cf

    :cond_ce
    move v11, v7

    :goto_cf
    if-eqz v11, :cond_e9

    mul-float v13, v6, v9

    add-float/2addr v13, v10

    .line 1183
    iget-object v14, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    iget-object v14, v0, Lcom/igsinreels/Gate$Cover;->msgLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v13, v14

    cmpg-float v12, v13, v12

    if-gez v12, :cond_e9

    move v7, v8

    :cond_e9
    const/4 v8, 0x0

    if-eqz v11, :cond_f5

    .line 1184
    iget-object v12, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v12}, Landroid/text/StaticLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v6

    goto :goto_f6

    :cond_f5
    move v12, v8

    :goto_f6
    add-float/2addr v12, v10

    const/high16 v13, 0x3f000000    # 0.5f

    if-eqz v7, :cond_105

    mul-float v8, v6, v13

    .line 1185
    iget-object v14, v0, Lcom/igsinreels/Gate$Cover;->msgLayout:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v8, v14

    :cond_105
    add-float/2addr v12, v8

    .line 1186
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    int-to-float v3, v3

    div-float/2addr v3, v9

    add-float/2addr v8, v3

    .line 1187
    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float v3, v4, v12

    div-float/2addr v3, v9

    add-float/2addr v2, v3

    add-float v3, v2, v5

    const v12, 0x3d8f5c29    # 0.07f

    mul-float/2addr v12, v5

    div-float v14, v12, v9

    sub-float v14, v5, v14

    .line 1191
    invoke-direct {v0, v8, v3, v14}, Lcom/igsinreels/Gate$Cover;->octagon(FFF)V

    .line 1192
    iget-object v14, v0, Lcom/igsinreels/Gate$Cover;->path:Landroid/graphics/Path;

    iget-object v15, v0, Lcom/igsinreels/Gate$Cover;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1193
    iget-object v14, v0, Lcom/igsinreels/Gate$Cover;->border:Landroid/graphics/Paint;

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v14, 0x3fcccccd    # 1.6f

    mul-float/2addr v12, v14

    sub-float v12, v5, v12

    .line 1194
    invoke-direct {v0, v8, v3, v12}, Lcom/igsinreels/Gate$Cover;->octagon(FFF)V

    .line 1195
    iget-object v12, v0, Lcom/igsinreels/Gate$Cover;->path:Landroid/graphics/Path;

    iget-object v14, v0, Lcom/igsinreels/Gate$Cover;->border:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1196
    iget-object v12, v0, Lcom/igsinreels/Gate$Cover;->stop:Landroid/graphics/Paint;

    const v14, 0x3f051eb8    # 0.52f

    mul-float/2addr v5, v14

    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1197
    iget-object v5, v0, Lcom/igsinreels/Gate$Cover;->stop:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 1198
    iget v12, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v12, v5

    div-float/2addr v12, v9

    sub-float/2addr v3, v12

    iget-object v5, v0, Lcom/igsinreels/Gate$Cover;->stop:Landroid/graphics/Paint;

    const-string v12, "STOP"

    invoke-virtual {v1, v12, v8, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v2, v10

    add-float/2addr v2, v6

    if-eqz v11, :cond_17f

    .line 1202
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1203
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    sub-float v3, v8, v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1204
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1205
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1206
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->titleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v6, v13

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    :cond_17f
    if-eqz v7, :cond_1a1

    .line 1209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1210
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->msgLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    sub-float v3, v8, v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1211
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->msgLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1213
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->msgLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 1216
    :cond_1a1
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->backRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    if-eqz v7, :cond_20a

    .line 1217
    iget v3, v0, Lcom/igsinreels/Gate$Cover;->screenH:I

    int-to-float v3, v3

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v5

    cmpl-float v3, v4, v3

    if-lez v3, :cond_20a

    .line 1218
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->pill:Landroid/graphics/Paint;

    const/high16 v4, 0x41800000    # 16.0f

    iget v5, v0, Lcom/igsinreels/Gate$Cover;->density:F

    mul-float/2addr v5, v4

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1219
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->pill:Landroid/graphics/Paint;

    iget-object v4, v0, Lcom/igsinreels/Gate$Cover;->s:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1220
    iget v4, v0, Lcom/igsinreels/Gate$Cover;->density:F

    const/high16 v6, 0x42900000    # 72.0f

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v6, v4

    const/high16 v7, 0x42200000    # 40.0f

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    .line 1222
    iget-object v4, v0, Lcom/igsinreels/Gate$Cover;->backRect:Landroid/graphics/RectF;

    div-float/2addr v3, v9

    sub-float v7, v8, v3

    add-float/2addr v3, v8

    add-float v10, v2, v6

    invoke-virtual {v4, v7, v2, v3, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1223
    iget-object v2, v0, Lcom/igsinreels/Gate$Cover;->pillBg:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1224
    iget-object v2, v0, Lcom/igsinreels/Gate$Cover;->backRect:Landroid/graphics/RectF;

    div-float/2addr v6, v9

    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->pillBg:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1225
    iget-object v2, v0, Lcom/igsinreels/Gate$Cover;->pill:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 1226
    iget-object v3, v0, Lcom/igsinreels/Gate$Cover;->s:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget-object v4, v0, Lcom/igsinreels/Gate$Cover;->backRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v2

    div-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget-object v2, v0, Lcom/igsinreels/Gate$Cover;->pill:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v8, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_20a
    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

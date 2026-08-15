.class public final Lcom/igsinreels/BlockScreen;
.super Ljava/lang/Object;
.source "BlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/igsinreels/BlockScreen$Host;,
        Lcom/igsinreels/BlockScreen$StopSign;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_MS:J = 0xbb8L

.field private static final OVERLAY_TAG:Ljava/lang/String; = "igsinreels_overlay"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static build(Landroid/content/Context;Lcom/igsinreels/BlockScreen$Host;Z)Landroid/view/View;
    .registers 16

    .line 147
    invoke-static {}, Lcom/igsinreels/BlockScreen;->strings()[Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const v5, -0xe4efcb

    const v6, -0xf4f4ee

    const/high16 v7, -0x1000000

    filled-new-array {v5, v6, v7}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 157
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 161
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v5, 0x42000000    # 32.0f

    .line 162
    invoke-static {p0, v5}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 163
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 164
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    const/16 v9, 0x11

    invoke-direct {v6, v4, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v6, Lcom/igsinreels/BlockScreen$StopSign;

    invoke-direct {v6, p0}, Lcom/igsinreels/BlockScreen$StopSign;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x43160000    # 150.0f

    invoke-static {p0, v11}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {p0, v11}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 170
    aget-object v10, v0, v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x2

    const/high16 v11, 0x41e00000    # 28.0f

    .line 172
    invoke-virtual {v6, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 173
    sget-object v12, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    invoke-static {p0, v5}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 177
    invoke-virtual {v3, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    aget-object v2, v0, v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, -0x4c000001

    .line 181
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41880000    # 17.0f

    .line 182
    invoke-virtual {v5, v10, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 183
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x0

    const v6, 0x3f99999a    # 1.2f

    .line 184
    invoke-virtual {v5, v2, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 185
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41400000    # 12.0f

    .line 186
    invoke-static {p0, v6}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 187
    invoke-virtual {v3, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    aget-object v0, v0, v10

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 192
    invoke-virtual {v2, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 193
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 194
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x42100000    # 36.0f

    .line 195
    invoke-static {p0, v0}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v0}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v6}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v5, v7, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 196
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 197
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 198
    invoke-static {p0, v11}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 199
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 200
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x42200000    # 40.0f

    .line 201
    invoke-static {p0, v4}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 202
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance p0, Lcom/igsinreels/BlockScreen$3;

    invoke-direct {p0, p1}, Lcom/igsinreels/BlockScreen$3;-><init>(Lcom/igsinreels/BlockScreen$Host;)V

    .line 221
    new-instance v0, Lcom/igsinreels/BlockScreen$4;

    invoke-direct {v0, p0}, Lcom/igsinreels/BlockScreen$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_13e

    .line 228
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 229
    new-instance v0, Lcom/igsinreels/BlockScreen$5;

    invoke-direct {v0, p1, p0}, Lcom/igsinreels/BlockScreen$5;-><init>(Lcom/igsinreels/BlockScreen$Host;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13e
    return-object v1
.end method

.method public static create(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;Z)Landroid/view/View;
    .registers 4

    .line 59
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/igsinreels/BlockScreen$1;

    invoke-direct {v0, p1}, Lcom/igsinreels/BlockScreen$1;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, p2}, Lcom/igsinreels/BlockScreen;->build(Landroid/content/Context;Lcom/igsinreels/BlockScreen$Host;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 2

    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static overlay(Landroid/app/Activity;)V
    .registers 7

    if-eqz p0, :cond_55

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_55

    :cond_9
    const v0, 0x1020002

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_55

    const-string v1, "igsinreels_overlay"

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1d

    goto :goto_55

    :cond_1d
    const/4 v2, 0x1

    new-array v3, v2, [Landroid/view/View;

    .line 96
    new-instance v4, Lcom/igsinreels/BlockScreen$2;

    invoke-direct {v4, v3, p0, v0}, Lcom/igsinreels/BlockScreen$2;-><init>([Landroid/view/View;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {p0, v4, v2}, Lcom/igsinreels/BlockScreen;->build(Landroid/content/Context;Lcom/igsinreels/BlockScreen$Host;Z)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 122
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    aget-object v1, v3, v5

    const/high16 v4, 0x42c80000    # 100.0f

    .line 123
    invoke-static {p0, v4}, Lcom/igsinreels/BlockScreen;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setTranslationZ(F)V

    aget-object p0, v3, v5

    .line 124
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    aget-object p0, v3, v5

    .line 125
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    aget-object p0, v3, v5

    .line 126
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    aget-object p0, v3, v5

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_55
    :goto_55
    return-void
.end method

.method static strings()[Ljava/lang/String;
    .registers 4

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_1c4

    goto/16 :goto_f8

    :sswitch_15
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_f8

    :cond_1f
    const/16 v2, 0x11

    goto/16 :goto_f8

    :sswitch_23
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_f8

    :cond_2d
    const/16 v2, 0x10

    goto/16 :goto_f8

    :sswitch_31
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_f8

    :cond_3b
    const/16 v2, 0xf

    goto/16 :goto_f8

    :sswitch_3f
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_f8

    :cond_49
    const/16 v2, 0xe

    goto/16 :goto_f8

    :sswitch_4d
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_f8

    :cond_57
    const/16 v2, 0xd

    goto/16 :goto_f8

    :sswitch_5b
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_f8

    :cond_65
    const/16 v2, 0xc

    goto/16 :goto_f8

    :sswitch_69
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_f8

    :cond_73
    const/16 v2, 0xb

    goto/16 :goto_f8

    :sswitch_77
    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_f8

    :cond_81
    const/16 v2, 0xa

    goto/16 :goto_f8

    :sswitch_85
    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_f8

    :cond_8f
    const/16 v2, 0x9

    goto/16 :goto_f8

    :sswitch_93
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_f8

    :cond_9d
    const/16 v2, 0x8

    goto/16 :goto_f8

    :sswitch_a1
    const-string v1, "hi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto :goto_f8

    :cond_aa
    const/4 v2, 0x7

    goto :goto_f8

    :sswitch_ac
    const-string v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto :goto_f8

    :cond_b5
    const/4 v2, 0x6

    goto :goto_f8

    :sswitch_b7
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto :goto_f8

    :cond_c0
    const/4 v2, 0x5

    goto :goto_f8

    :sswitch_c2
    const-string v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto :goto_f8

    :cond_cb
    const/4 v2, 0x4

    goto :goto_f8

    :sswitch_cd
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_f8

    :cond_d6
    const/4 v2, 0x3

    goto :goto_f8

    :sswitch_d8
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    goto :goto_f8

    :cond_e1
    const/4 v2, 0x2

    goto :goto_f8

    :sswitch_e3
    const-string v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    goto :goto_f8

    :cond_ec
    const/4 v2, 0x1

    goto :goto_f8

    :sswitch_ee
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f7

    goto :goto_f8

    :cond_f7
    const/4 v2, 0x0

    :goto_f8
    const-string v0, "\u041d\u0430\u0437\u0430\u0434"

    const-string v1, "Volver"

    const-string v3, "Reel bloqueado"

    packed-switch v2, :pswitch_data_20e

    const-string v0, "Your time is worth more than this scroll."

    const-string v1, "Go back"

    const-string v2, "Reel blocked"

    .line 54
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_10c
    const-string v0, "\u4f60\u7684\u65f6\u95f4\u6bd4\u8fd9\u6b21\u6ed1\u52a8\u66f4\u5b9d\u8d35\u3002"

    const-string v1, "\u8fd4\u56de"

    const-string v2, "Reel \u5df2\u5c4f\u853d"

    .line 52
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_117
    const-string v1, "Reel \u0437\u0430\u0431\u043b\u043e\u043a\u043e\u0432\u0430\u043d\u043e"

    const-string v2, "\u0422\u0432\u0456\u0439 \u0447\u0430\u0441 \u0432\u0430\u0440\u0442\u0438\u0439 \u0431\u0456\u043b\u044c\u0448\u0435 \u0437\u0430 \u0446\u0435\u0439 \u0441\u043a\u0440\u043e\u043b."

    .line 47
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_120
    const-string v0, "Zaman\u0131n bu kayd\u0131rmadan daha de\u011ferli."

    const-string v1, "Geri"

    const-string v2, "Reel engellendi"

    .line 48
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_12b
    const-string v1, "Reel \u0437\u0430\u0431\u043b\u043e\u043a\u0438\u0440\u043e\u0432\u0430\u043d"

    const-string v2, "\u0422\u0432\u043e\u0451 \u0432\u0440\u0435\u043c\u044f \u0434\u043e\u0440\u043e\u0436\u0435 \u044d\u0442\u043e\u0433\u043e \u0441\u043a\u0440\u043e\u043b\u043b\u0430."

    .line 46
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_134
    const-string v0, "O seu tempo vale mais do que este scroll."

    const-string v1, "Voltar"

    .line 40
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_13d
    const-string v0, "Tw\u00f3j czas jest wart wi\u0119cej ni\u017c ten scroll."

    const-string v1, "Wr\u00f3\u0107"

    const-string v2, "Rolka zablokowana"

    .line 45
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_148
    const-string v0, "Je tijd is meer waard dan deze scroll."

    const-string v1, "Terug"

    const-string v2, "Reel geblokkeerd"

    .line 44
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_153
    const-string v0, "\ub2f9\uc2e0\uc758 \uc2dc\uac04\uc740 \uc774 \uc2a4\ud06c\ub864\ubcf4\ub2e4 \uc18c\uc911\ud574\uc694."

    const-string v1, "\ub3cc\uc544\uac00\uae30"

    const-string v2, "\ub9b4\uc2a4 \ucc28\ub2e8\ub428"

    .line 51
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15e
    const-string v0, "\u3042\u306a\u305f\u306e\u6642\u9593\u306f\u3053\u306e\u30b9\u30af\u30ed\u30fc\u30eb\u3088\u308a\u5927\u5207\u3067\u3059\u3002"

    const-string v1, "\u623b\u308b"

    const-string v2, "\u30ea\u30fc\u30eb\u306f\u30d6\u30ed\u30c3\u30af\u4e2d"

    .line 50
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_169
    const-string v0, "Il tuo tempo vale pi\u00f9 di questo scroll."

    const-string v1, "Indietro"

    const-string v2, "Reel bloccato"

    .line 42
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_174
    const-string v0, "\u0906\u092a\u0915\u093e \u0938\u092e\u092f \u0907\u0938 \u0938\u094d\u0915\u094d\u0930\u0949\u0932 \u0938\u0947 \u091c\u093c\u094d\u092f\u093e\u0926\u093e \u0915\u0940\u092e\u0924\u0940 \u0939\u0948\u0964"

    const-string v1, "\u0935\u093e\u092a\u0938"

    const-string v2, "Reel \u092c\u094d\u0932\u0949\u0915 \u0939\u0948"

    .line 53
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17f
    const-string v0, "O teu tempo vale m\u00e1is ca este scroll."

    .line 38
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_186
    const-string v0, "Ton temps vaut plus que ce scroll."

    const-string v1, "Retour"

    const-string v2, "Reel bloqu\u00e9"

    .line 41
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_191
    const-string v0, "Zure denbora scroll hau baino gehiago da."

    const-string v1, "Itzuli"

    const-string v2, "Reel blokeatuta"

    .line 39
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19c
    const-string v0, "Tu tiempo vale m\u00e1s que este scroll."

    .line 36
    filled-new-array {v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a3
    const-string v0, "Deine Zeit ist mehr wert als dieser Scroll."

    const-string v1, "Zur\u00fcck"

    const-string v2, "Reel blockiert"

    .line 43
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1ae
    const-string v0, "El teu temps val m\u00e9s que aquest scroll."

    const-string v1, "Tornar"

    const-string v2, "Reel bloquejat"

    .line 37
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1b9
    const-string v0, "\u0648\u0642\u062a\u0643 \u0623\u062b\u0645\u0646 \u0645\u0646 \u0647\u0630\u0627 \u0627\u0644\u062a\u0645\u0631\u064a\u0631."

    const-string v1, "\u0631\u062c\u0648\u0639"

    const-string v2, "\u062a\u0645 \u062d\u0638\u0631 \u0627\u0644\u0631\u064a\u0644"

    .line 49
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_1c4
    .sparse-switch
        0xc31 -> :sswitch_ee
        0xc5e -> :sswitch_e3
        0xc81 -> :sswitch_d8
        0xcae -> :sswitch_cd
        0xcb0 -> :sswitch_c2
        0xccc -> :sswitch_b7
        0xce5 -> :sswitch_ac
        0xd01 -> :sswitch_a1
        0xd2b -> :sswitch_93
        0xd37 -> :sswitch_85
        0xd64 -> :sswitch_77
        0xdbe -> :sswitch_69
        0xdfc -> :sswitch_5b
        0xe04 -> :sswitch_4d
        0xe43 -> :sswitch_3f
        0xe7e -> :sswitch_31
        0xe96 -> :sswitch_23
        0xf2e -> :sswitch_15
    .end sparse-switch

    :pswitch_data_20e
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_1ae
        :pswitch_1a3
        :pswitch_19c
        :pswitch_191
        :pswitch_186
        :pswitch_17f
        :pswitch_174
        :pswitch_169
        :pswitch_15e
        :pswitch_153
        :pswitch_148
        :pswitch_13d
        :pswitch_134
        :pswitch_12b
        :pswitch_120
        :pswitch_117
        :pswitch_10c
    .end packed-switch
.end method

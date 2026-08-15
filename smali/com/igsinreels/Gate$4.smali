.class Lcom/igsinreels/Gate$4;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Gate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 471
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 472
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetTAB_PAGES()Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 473
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_16

    .line 474
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_39

    goto :goto_16

    .line 475
    :cond_39
    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_52

    goto :goto_16

    .line 476
    :cond_52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_63

    .line 477
    invoke-static {v1}, Lcom/igsinreels/Gate;->-$$Nest$sfputskipsInARow(I)V

    return-void

    .line 480
    :cond_63
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetLOCKED_PAGES()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetlastTabMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->-$$Nest$smexhausted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 482
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetexhaustedMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7e

    return-void

    .line 484
    :cond_7e
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetLOCKED_PAGES()Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    return-void

    .line 485
    :cond_89
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetlastTabMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->-$$Nest$smexhausted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    return-void

    .line 486
    :cond_94
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetskipsInARow()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_cd

    .line 488
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetlastTabMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igsinreels/Gate;->-$$Nest$sfputexhaustedMode(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetTAB_PAGES()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b4
    :goto_b4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_b4

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetLOCKED_PAGES()Ljava/util/WeakHashMap;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    :cond_cc
    return-void

    .line 492
    :cond_cd
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetskipsInARow()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/igsinreels/Gate;->-$$Nest$sfputskipsInARow(I)V

    .line 493
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetscrollDir()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    :cond_e8
    return-void
.end method

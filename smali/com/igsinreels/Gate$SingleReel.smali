.class final Lcom/igsinreels/Gate$SingleReel;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Gate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleReel"
.end annotation


# instance fields
.field private anchor:Landroid/view/View;

.field private anchorTop:I

.field private fired:Z

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private pager:Landroid/view/ViewGroup;

.field private final root:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetfired(Lcom/igsinreels/Gate$SingleReel;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/igsinreels/Gate$SingleReel;->fired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msettle(Lcom/igsinreels/Gate$SingleReel;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/igsinreels/Gate$SingleReel;->settle(Z)V

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .registers 3

    .line 1720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    iput-object p1, p0, Lcom/igsinreels/Gate$SingleReel;->fragment:Landroidx/fragment/app/Fragment;

    .line 1722
    iput-object p2, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    return-void
.end method

.method private findPager(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 8

    .line 1772
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1773
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1775
    :cond_15
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_67

    .line 1776
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1777
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lt v3, v0, :cond_50

    if-eqz p1, :cond_4d

    .line 1778
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_50

    .line 1779
    :cond_4d
    move-object p1, v2

    check-cast p1, Landroid/view/ViewGroup;

    .line 1782
    :cond_50
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_15

    .line 1783
    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 1784
    :goto_57
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_15

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_67
    return-object p1
.end method

.method private settle(Z)V
    .registers 5

    .line 1741
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/igsinreels/Gate$SingleReel;->findPager(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 1743
    :cond_9
    iput-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->pager:Landroid/view/ViewGroup;

    .line 1746
    new-instance v1, Lcom/igsinreels/Gate$SingleReel$2;

    invoke-direct {v1, p0}, Lcom/igsinreels/Gate$SingleReel$2;-><init>(Lcom/igsinreels/Gate$SingleReel;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-nez p1, :cond_16

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 1757
    iput-object p1, p0, Lcom/igsinreels/Gate$SingleReel;->anchor:Landroid/view/View;

    const p1, 0x7fffffff

    const/4 v0, 0x0

    .line 1759
    :goto_1d
    iget-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->pager:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 1760
    iget-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->pager:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1761
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, p1, :cond_38

    .line 1764
    iput-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->anchor:Landroid/view/View;

    move p1, v2

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1767
    :cond_3b
    iget-object p1, p0, Lcom/igsinreels/Gate$SingleReel;->anchor:Landroid/view/View;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/igsinreels/Gate$SingleReel;->anchorTop:I

    :cond_45
    return-void
.end method


# virtual methods
.method fire()V
    .registers 5

    .line 1803
    iget-boolean v0, p0, Lcom/igsinreels/Gate$SingleReel;->fired:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1804
    iput-boolean v0, p0, Lcom/igsinreels/Gate$SingleReel;->fired:Z

    .line 1805
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1806
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetVIEWERS()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1809
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_3e

    .line 1811
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_3b

    :catchall_33
    move-exception v1

    const-string v2, "IGSR"

    const-string v3, "back"

    .line 1813
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1815
    :goto_3b
    invoke-static {v0}, Lcom/igsinreels/BlockScreen;->overlay(Landroid/app/Activity;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onScrollChanged()V
    .registers 4

    .line 1792
    iget-boolean v0, p0, Lcom/igsinreels/Gate$SingleReel;->fired:Z

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->pager:Landroid/view/ViewGroup;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->anchor:Landroid/view/View;

    if-nez v0, :cond_d

    goto :goto_45

    .line 1793
    :cond_d
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 1794
    :cond_16
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->pager:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_29

    const v1, 0x7fffffff

    goto :goto_36

    .line 1795
    :cond_29
    iget-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->anchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/igsinreels/Gate$SingleReel;->anchorTop:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :goto_36
    if-nez v0, :cond_42

    .line 1796
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->pager:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    if-le v1, v0, :cond_45

    .line 1797
    :cond_42
    invoke-virtual {p0}, Lcom/igsinreels/Gate$SingleReel;->fire()V

    :cond_45
    :goto_45
    return-void
.end method

.method start()V
    .registers 8

    .line 1726
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1727
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetVIEWERS()Ljava/util/WeakHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-virtual {v0, v1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    iget-object v0, p0, Lcom/igsinreels/Gate$SingleReel;->root:Landroid/view/View;

    invoke-static {v0}, Lcom/igsinreels/Gate;->-$$Nest$smwatchTouches(Landroid/view/View;)V

    const/4 v0, 0x3

    new-array v1, v0, [J

    .line 1730
    fill-array-data v1, :array_32

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    aget-wide v3, v1, v2

    .line 1731
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/igsinreels/Gate$SingleReel$1;

    invoke-direct {v6, p0, v3, v4}, Lcom/igsinreels/Gate$SingleReel$1;-><init>(Lcom/igsinreels/Gate$SingleReel;J)V

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    return-void

    :array_32
    .array-data 8
        0x96
        0x1f4
        0x3e8
    .end array-data
.end method

.class final Lcom/igsinreels/Gate$TouchFilter;
.super Ljava/lang/Object;
.source "Gate.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igsinreels/Gate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchFilter"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private backHit:Z

.field private cancelled:Z

.field private final d:Landroid/view/Window$Callback;

.field private downX:F

.field private downY:F

.field private lockedCancelled:Z

.field private lockedSwipe:Z

.field private final longPress:Ljava/lang/Runnable;

.field private lx:F

.field private ly:F

.field private moved:Z

.field private final slop:I

.field private tracking:Z

.field private viewer:Lcom/igsinreels/Gate$SingleReel;

.field private viewerFired:Z

.field private vx:F

.field private vy:F


# direct methods
.method static bridge synthetic -$$Nest$fgetcancelled(Lcom/igsinreels/Gate$TouchFilter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/igsinreels/Gate$TouchFilter;->cancelled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmoved(Lcom/igsinreels/Gate$TouchFilter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/igsinreels/Gate$TouchFilter;->moved:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettracking(Lcom/igsinreels/Gate$TouchFilter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/igsinreels/Gate$TouchFilter;->tracking:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelGesture(Lcom/igsinreels/Gate$TouchFilter;)V
    .registers 1

    invoke-direct {p0}, Lcom/igsinreels/Gate$TouchFilter;->cancelGesture()V

    return-void
.end method

.method constructor <init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V
    .registers 4

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    new-instance v0, Lcom/igsinreels/Gate$TouchFilter$1;

    invoke-direct {v0, p0}, Lcom/igsinreels/Gate$TouchFilter$1;-><init>(Lcom/igsinreels/Gate$TouchFilter;)V

    iput-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->longPress:Ljava/lang/Runnable;

    .line 1367
    iput-object p1, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    .line 1368
    iput-object p2, p0, Lcom/igsinreels/Gate$TouchFilter;->activity:Landroid/app/Activity;

    .line 1369
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/igsinreels/Gate$TouchFilter;->slop:I

    return-void
.end method

.method private cancelGesture()V
    .registers 10

    const/4 v0, 0x1

    .line 1373
    iput-boolean v0, p0, Lcom/igsinreels/Gate$TouchFilter;->cancelled:Z

    .line 1374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    .line 1375
    iget v6, p0, Lcom/igsinreels/Gate$TouchFilter;->downX:F

    iget v7, p0, Lcom/igsinreels/Gate$TouchFilter;->downY:F

    const/4 v8, 0x0

    move-wide v1, v3

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1377
    :try_start_12
    iget-object v1, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    .line 1379
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1380
    throw v1
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1497
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1482
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 1487
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3

    .line 1502
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 1385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1a

    .line 1389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v4, v5}, Lcom/igsinreels/Gate;->coverBackAt(FF)Z

    move-result v4

    iput-boolean v4, p0, Lcom/igsinreels/Gate$TouchFilter;->backHit:Z

    if-eqz v4, :cond_36

    return v3

    .line 1391
    :cond_1a
    iget-boolean v4, p0, Lcom/igsinreels/Gate$TouchFilter;->backHit:Z

    if-eqz v4, :cond_36

    if-ne v0, v3, :cond_31

    .line 1393
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->backHit:Z

    .line 1395
    :try_start_22
    iget-object p1, p0, Lcom/igsinreels/Gate$TouchFilter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    goto :goto_35

    :catchall_28
    move-exception p1

    const-string v0, "IGSR"

    const-string v1, "back"

    .line 1397
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :cond_31
    if-ne v0, v1, :cond_35

    .line 1400
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->backHit:Z

    :cond_35
    :goto_35
    return v3

    :cond_36
    const/4 v4, 0x2

    if-nez v0, :cond_69

    .line 1408
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetLOCKED_PAGES()Ljava/util/WeakHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_57

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetLOCKED_PAGES()Ljava/util/WeakHashMap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/igsinreels/Gate;->containing(FFLjava/util/Map;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_57

    move v5, v3

    goto :goto_58

    :cond_57
    move v5, v2

    :goto_58
    iput-boolean v5, p0, Lcom/igsinreels/Gate$TouchFilter;->lockedSwipe:Z

    .line 1409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/igsinreels/Gate$TouchFilter;->lx:F

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/igsinreels/Gate$TouchFilter;->ly:F

    .line 1411
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->lockedCancelled:Z

    goto :goto_ae

    .line 1412
    :cond_69
    iget-boolean v5, p0, Lcom/igsinreels/Gate$TouchFilter;->lockedSwipe:Z

    if-eqz v5, :cond_ae

    .line 1413
    iget-boolean v5, p0, Lcom/igsinreels/Gate$TouchFilter;->lockedCancelled:Z

    if-eqz v5, :cond_72

    return v3

    :cond_72
    if-ne v0, v4, :cond_ae

    .line 1414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/igsinreels/Gate$TouchFilter;->ly:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/igsinreels/Gate$TouchFilter;->slop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ae

    .line 1415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/igsinreels/Gate$TouchFilter;->ly:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcom/igsinreels/Gate$TouchFilter;->lx:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_ae

    .line 1416
    iput-boolean v3, p0, Lcom/igsinreels/Gate$TouchFilter;->lockedCancelled:Z

    .line 1417
    iget p1, p0, Lcom/igsinreels/Gate$TouchFilter;->lx:F

    iput p1, p0, Lcom/igsinreels/Gate$TouchFilter;->downX:F

    .line 1418
    iget p1, p0, Lcom/igsinreels/Gate$TouchFilter;->ly:F

    iput p1, p0, Lcom/igsinreels/Gate$TouchFilter;->downY:F

    .line 1419
    invoke-direct {p0}, Lcom/igsinreels/Gate$TouchFilter;->cancelGesture()V

    return v3

    :cond_ae
    :goto_ae
    if-nez v0, :cond_e7

    .line 1425
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetVIEWERS()Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_bc

    const/4 v4, 0x0

    goto :goto_d6

    :cond_bc
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetVIEWERS()Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetVIEWERS()Ljava/util/WeakHashMap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/igsinreels/Gate;->containing(FFLjava/util/Map;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igsinreels/Gate$SingleReel;

    :goto_d6
    iput-object v4, p0, Lcom/igsinreels/Gate$TouchFilter;->viewer:Lcom/igsinreels/Gate$SingleReel;

    .line 1426
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->viewerFired:Z

    .line 1427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/igsinreels/Gate$TouchFilter;->vx:F

    .line 1428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/igsinreels/Gate$TouchFilter;->vy:F

    goto :goto_127

    .line 1429
    :cond_e7
    iget-object v5, p0, Lcom/igsinreels/Gate$TouchFilter;->viewer:Lcom/igsinreels/Gate$SingleReel;

    if-eqz v5, :cond_127

    .line 1430
    iget-boolean v5, p0, Lcom/igsinreels/Gate$TouchFilter;->viewerFired:Z

    if-eqz v5, :cond_f0

    return v3

    .line 1431
    :cond_f0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/igsinreels/Gate$TouchFilter;->vx:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lcom/igsinreels/Gate$TouchFilter;->vy:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-ne v0, v4, :cond_127

    .line 1432
    iget v7, p0, Lcom/igsinreels/Gate$TouchFilter;->slop:I

    mul-int/2addr v7, v4

    int-to-float v4, v7

    cmpl-float v4, v6, v4

    if-lez v4, :cond_127

    cmpl-float v4, v6, v5

    if-lez v4, :cond_127

    .line 1433
    iput-boolean v3, p0, Lcom/igsinreels/Gate$TouchFilter;->viewerFired:Z

    .line 1434
    iget p1, p0, Lcom/igsinreels/Gate$TouchFilter;->vx:F

    iput p1, p0, Lcom/igsinreels/Gate$TouchFilter;->downX:F

    .line 1435
    iget p1, p0, Lcom/igsinreels/Gate$TouchFilter;->vy:F

    iput p1, p0, Lcom/igsinreels/Gate$TouchFilter;->downY:F

    .line 1436
    invoke-direct {p0}, Lcom/igsinreels/Gate$TouchFilter;->cancelGesture()V

    .line 1437
    iget-object p1, p0, Lcom/igsinreels/Gate$TouchFilter;->viewer:Lcom/igsinreels/Gate$SingleReel;

    invoke-virtual {p1}, Lcom/igsinreels/Gate$SingleReel;->fire()V

    return v3

    :cond_127
    :goto_127
    if-nez v0, :cond_1be

    .line 1442
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/igsinreels/Gate$TouchFilter;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1443
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->tracking:Z

    .line 1444
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->moved:Z

    .line 1445
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->cancelled:Z

    .line 1446
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetPENDING()Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/igsinreels/Gate;->viewAt(Landroid/view/View;FFLjava/util/Map;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_166

    .line 1449
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetPENDING()Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/igsinreels/Gate;->-$$Nest$sfputlastTapMedia(Ljava/lang/Object;)V

    .line 1450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/igsinreels/Gate;->-$$Nest$sfputlastTapMediaTime(J)V

    .line 1452
    :cond_166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetDM_BUBBLES()Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/igsinreels/Gate;->containing(FFLjava/util/Map;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_18c

    .line 1454
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetDM_BUBBLES()Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/igsinreels/Gate;->-$$Nest$sfputlastTapSent(Ljava/lang/Boolean;)V

    .line 1455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/igsinreels/Gate;->-$$Nest$sfputlastTapTime(J)V

    .line 1457
    :cond_18c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/igsinreels/Gate;->blockedAt(Landroid/view/View;FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20f

    .line 1458
    iput-boolean v3, p0, Lcom/igsinreels/Gate$TouchFilter;->tracking:Z

    .line 1459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/igsinreels/Gate$TouchFilter;->downX:F

    .line 1460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/igsinreels/Gate$TouchFilter;->downY:F

    .line 1461
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/igsinreels/Gate$TouchFilter;->longPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    const/16 v3, 0x64

    sub-int/2addr v2, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20f

    .line 1463
    :cond_1be
    iget-boolean v4, p0, Lcom/igsinreels/Gate$TouchFilter;->tracking:Z

    if-eqz v4, :cond_20f

    .line 1464
    iget-boolean v4, p0, Lcom/igsinreels/Gate$TouchFilter;->cancelled:Z

    if-eqz v4, :cond_1cd

    if-eq v0, v3, :cond_1ca

    if-ne v0, v1, :cond_1cc

    .line 1465
    :cond_1ca
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->tracking:Z

    :cond_1cc
    return v3

    .line 1468
    :cond_1cd
    iget-boolean v4, p0, Lcom/igsinreels/Gate$TouchFilter;->moved:Z

    if-nez v4, :cond_200

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget v5, p0, Lcom/igsinreels/Gate$TouchFilter;->downX:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/igsinreels/Gate$TouchFilter;->slop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_1f5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v5, p0, Lcom/igsinreels/Gate$TouchFilter;->downY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/igsinreels/Gate$TouchFilter;->slop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_200

    .line 1469
    :cond_1f5
    iput-boolean v3, p0, Lcom/igsinreels/Gate$TouchFilter;->moved:Z

    .line 1470
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/igsinreels/Gate$TouchFilter;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_200
    if-eq v0, v3, :cond_204

    if-ne v0, v1, :cond_20f

    .line 1473
    :cond_204
    iput-boolean v2, p0, Lcom/igsinreels/Gate$TouchFilter;->tracking:Z

    .line 1474
    invoke-static {}, Lcom/igsinreels/Gate;->-$$Nest$sfgetMAIN()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/igsinreels/Gate$TouchFilter;->longPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1477
    :cond_20f
    :goto_20f
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1492
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3

    .line 1587
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 3

    .line 1582
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1547
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .registers 2

    .line 1537
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1512
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 1507
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1552
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1527
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4

    .line 1522
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1557
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .registers 3

    .line 1597
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 1517
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .line 1562
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3

    .line 1567
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 1532
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    .line 1542
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    .line 1572
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 1577
    iget-object v0, p0, Lcom/igsinreels/Gate$TouchFilter;->d:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

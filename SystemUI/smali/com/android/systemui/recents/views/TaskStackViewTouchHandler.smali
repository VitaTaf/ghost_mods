.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/views/SwipeHelper$Callback;


# static fields
.field static INACTIVE_POINTER_ID:I


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mInitialMotionX:I

.field mInitialMotionY:I

.field mInitialP:F

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z

.field mLastMotionX:I

.field mLastMotionY:I

.field mLastP:F

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mPagingTouchSlop:F

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

.field mTotalPMotion:F

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p4, "scroller"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 49
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 66
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    .line 71
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 72
    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v1, "densityScale":F
    new-instance v2, Lcom/android/systemui/recents/views/SwipeHelper;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mPagingTouchSlop:F

    invoke-direct {v2, v3, p0, v1, v4}, Lcom/android/systemui/recents/views/SwipeHelper;-><init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    .line 77
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->setMinAlpha(F)V

    .line 78
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 118
    .local v0, "pev":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 119
    return-object v0
.end method

.method findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 102
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 104
    .local v1, "taskViewCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 105
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 106
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    return-object v3

    .line 104
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 112
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 92
    :cond_0
    return-void
.end method

.method maybeHideRecentsFromBackgroundTap(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 387
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 388
    .local v0, "dx":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 389
    .local v1, "dy":I
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v0, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v1, v4, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    move v3, p1

    .line 396
    .local v3, "shiftedX":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-le p1, v4, :cond_2

    .line 397
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    sub-int/2addr v3, v4

    .line 401
    :goto_1
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 407
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v2

    .line 408
    .local v2, "recents":Lcom/android/systemui/recents/Recents;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/recents/Recents;->hideRecents(ZZ)V

    goto :goto_0

    .line 399
    .end local v2    # "recents":Lcom/android/systemui/recents/Recents;
    :cond_2
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    add-int/2addr v3, v4

    goto :goto_1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 449
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 451
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 453
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 455
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 456
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 457
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->hideDismissAllButton(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 470
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 472
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 476
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;)V

    .line 477
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 493
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 416
    .local v0, "action":I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    .end local v0    # "action":I
    :cond_0
    move v2, v3

    .line 432
    :cond_1
    :goto_0
    return v2

    .line 419
    .restart local v0    # "action":I
    :pswitch_0
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 420
    .local v1, "vScroll":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 421
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskStackView;->ensureFocusedTask(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v3, v3}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    const/4 v2, 0x1

    .line 126
    .local v2, "hasTaskViews":Z
    :goto_0
    if-nez v2, :cond_1

    .line 127
    const/4 v11, 0x0

    .line 225
    :goto_1
    return v11

    .line 125
    .end local v2    # "hasTaskViews":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 130
    .restart local v2    # "hasTaskViews":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 131
    .local v0, "action":I
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v11, :cond_2

    .line 133
    and-int/lit16 v11, v0, 0xff

    if-nez v11, :cond_2

    .line 134
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-nez v11, :cond_2

    .line 135
    const/4 v11, 0x0

    goto :goto_1

    .line 141
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    invoke-virtual {v11, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 142
    iget-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v11, :cond_3

    .line 143
    const/4 v11, 0x1

    goto :goto_1

    .line 146
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_4
    const/4 v8, 0x1

    .line 148
    .local v8, "wasScrolling":Z
    :goto_2
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_0

    .line 225
    :cond_5
    :goto_3
    :pswitch_0
    if-nez v8, :cond_6

    iget-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v11, :cond_a

    :cond_6
    const/4 v11, 0x1

    goto :goto_1

    .line 146
    .end local v8    # "wasScrolling":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 151
    .restart local v8    # "wasScrolling":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 153
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 154
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 155
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {p0, v11, v12}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 157
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 158
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 161
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_3

    .line 165
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 166
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 167
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 168
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 169
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto :goto_3

    .line 173
    .end local v3    # "index":I
    :pswitch_3
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v12, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v11, v12, :cond_5

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 177
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 180
    .local v1, "activePointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v10, v11

    .line 181
    .local v10, "y":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v9, v11

    .line 182
    .local v9, "x":I
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v11, v12, :cond_8

    .line 184
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 186
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 187
    .local v5, "parent":Landroid/view/ViewParent;
    if-eqz v5, :cond_8

    .line 188
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 192
    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_8
    iput v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 193
    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 194
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_3

    .line 198
    .end local v1    # "activePointerIndex":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 199
    .local v7, "pointerIndex":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 200
    .local v6, "pointerId":I
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    if-ne v6, v11, :cond_5

    .line 202
    if-nez v7, :cond_9

    const/4 v4, 0x1

    .line 203
    .local v4, "newPointerIndex":I
    :goto_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 204
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 205
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 206
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v11

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 207
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    .line 202
    .end local v4    # "newPointerIndex":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 214
    .end local v6    # "pointerId":I
    .end local v7    # "pointerIndex":I
    :pswitch_5
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 216
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 217
    sget v11, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 218
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 219
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_3

    .line 225
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onSnapBackCompleted(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 481
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 483
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 485
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 487
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->showDismissAllButton()V

    .line 488
    return-void
.end method

.method public onSwipeChanged(Landroid/view/View;F)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "delta"    # F

    .prologue
    .line 466
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v18, 0x1

    .line 232
    .local v18, "hasTaskViews":Z
    :goto_0
    if-nez v18, :cond_1

    .line 233
    const/4 v2, 0x0

    .line 380
    :goto_1
    return v2

    .line 231
    .end local v18    # "hasTaskViews":Z
    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 236
    .restart local v18    # "hasTaskViews":Z
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    .line 237
    .local v13, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v2, :cond_2

    .line 239
    and-int/lit16 v2, v13, 0xff

    if-nez v2, :cond_2

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    const/4 v2, 0x0

    goto :goto_1

    .line 247
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/recents/views/SwipeHelper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    const/4 v2, 0x1

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initVelocityTrackerIfNotExists()V

    .line 254
    and-int/lit16 v2, v13, 0xff

    packed-switch v2, :pswitch_data_0

    .line 380
    :cond_4
    :goto_2
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    .line 257
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionX:I

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialP:F

    .line 260
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 261
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 270
    .local v25, "parent":Landroid/view/ViewParent;
    if-eqz v25, :cond_4

    .line 271
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 276
    .end local v25    # "parent":Landroid/view/ViewParent;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 277
    .local v19, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 278
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 279
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    goto/16 :goto_2

    .line 284
    .end local v19    # "index":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    sget v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    if-eq v2, v3, :cond_4

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->createMotionEventForStackScroll(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    .line 289
    .local v14, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v28, v0

    .line 290
    .local v28, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v29, v0

    .line 291
    .local v29, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInitialMotionY:I

    sub-int v2, v29, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v30

    .line 292
    .local v30, "yTotal":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v15

    .line 293
    .local v15, "curP":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    sub-float v17, v2, v15

    .line 294
    .local v17, "deltaP":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v2, :cond_5

    .line 295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    move/from16 v0, v30

    if-le v0, v2, :cond_5

    .line 296
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    .line 299
    .restart local v25    # "parent":Landroid/view/ViewParent;
    if-eqz v25, :cond_5

    .line 300
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 304
    .end local v25    # "parent":Landroid/view/ViewParent;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_7

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v16

    .line 306
    .local v16, "curStackScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-float v3, v16, v17

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v22

    .line 307
    .local v22, "overScrollAmount":F
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    move/from16 v20, v0

    .line 311
    .local v20, "maxOverScroll":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v3, v3, v20

    sub-float/2addr v2, v3

    mul-float v17, v17, v2

    .line 314
    .end local v20    # "maxOverScroll":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    add-float v3, v16, v17

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 316
    .end local v16    # "curStackScroll":F
    .end local v22    # "overScrollAmount":F
    :cond_7
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 317
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    goto/16 :goto_2

    .line 323
    .end local v14    # "activePointerIndex":I
    .end local v15    # "curP":F
    .end local v17    # "deltaP":F
    .end local v28    # "x":I
    .end local v29    # "y":I
    .end local v30    # "yTotal":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v6, v2

    .line 325
    .local v6, "velocity":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    if-le v2, v3, :cond_9

    .line 326
    int-to-float v2, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 327
    .local v24, "overscrollRangePct":F
    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c00000    # 96.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v23, v0

    .line 330
    .local v23, "overscrollRange":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v10, v10, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v11, v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v10

    const/4 v11, 0x0

    add-int/lit8 v12, v23, 0x20

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 348
    .end local v23    # "overscrollRange":I
    .end local v24    # "overscrollRangePct":F
    :cond_8
    :goto_3
    sget v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_2

    .line 340
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    goto :goto_3

    .line 343
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-nez v2, :cond_8

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(II)V

    goto :goto_3

    .line 355
    .end local v6    # "velocity":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    .line 356
    .local v27, "pointerIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v26

    .line 357
    .local v26, "pointerId":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    .line 359
    if-nez v27, :cond_b

    const/16 v21, 0x1

    .line 360
    .local v21, "newPointerIndex":I
    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 361
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionX:I

    .line 362
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastMotionY:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->screenYToCurveProgress(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastP:F

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    .line 359
    .end local v21    # "newPointerIndex":I
    :cond_b
    const/16 v21, 0x0

    goto :goto_4

    .line 369
    .end local v26    # "pointerId":I
    .end local v27    # "pointerIndex":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 373
    :cond_c
    sget v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->INACTIVE_POINTER_ID:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 375
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTotalPMotion:F

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_2

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 98
    :cond_0
    return-void
.end method

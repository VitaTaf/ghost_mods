.class public Lcom/android/systemui/statusbar/DelegateViewHelper;
.super Ljava/lang/Object;
.source "DelegateViewHelper.java"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private mDelegateView:Landroid/view/View;

.field private mDisabled:Z

.field private mDownPoint:[F

.field mInitialTouch:Landroid/graphics/RectF;

.field private mPanelShowing:Z

.field private mSourceView:Landroid/view/View;

.field private mStarted:Z

.field private mSwapXY:Z

.field private mTempPoint:[I

.field private mTriggerThreshhold:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "sourceView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DelegateViewHelper;->setSourceView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldDisableNavbarGestures()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v9, v13

    .local v9, "sourceX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v10, v13

    .local v10, "sourceY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mStarted:Z

    if-nez v13, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    aput v15, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    add-float/2addr v14, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    add-float/2addr v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mStarted:Z

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDisabled:Z

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    if-nez v13, :cond_4

    const/4 v13, 0x2

    if-ne v1, v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .local v7, "historySize":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_3
    add-int/lit8 v13, v7, 0x1

    if-ge v8, v13, :cond_4

    if-ge v8, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v11

    .local v11, "x":F
    :goto_4
    if-ge v8, v7, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v12

    .local v12, "y":F
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-float v6, v13, v11

    .local v6, "distance":F
    :goto_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTriggerThreshhold:F

    cmpl-float v13, v6, v13

    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    .end local v6    # "distance":F
    .end local v7    # "historySize":I
    .end local v8    # "k":I
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_4
    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->setInteracting(IZ)V

    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    int-to-float v2, v13

    .local v2, "delegateX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTempPoint:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v3, v13

    .local v3, "delegateY":F
    sub-float v4, v9, v2

    .local v4, "deltaX":F
    sub-float v5, v10, v3

    .local v5, "deltaY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    neg-float v13, v4

    neg-float v14, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mPanelShowing:Z

    goto/16 :goto_0

    .end local v2    # "delegateX":F
    .end local v3    # "delegateY":F
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .restart local v7    # "historySize":I
    .restart local v8    # "k":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    goto :goto_4

    .restart local v11    # "x":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    goto :goto_5

    .restart local v12    # "y":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDownPoint:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-float v6, v13, v12

    goto :goto_6

    .restart local v6    # "distance":F
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .end local v6    # "distance":F
    .end local v7    # "historySize":I
    .end local v8    # "k":I
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_a
    const/4 v13, 0x1

    if-eq v1, v13, :cond_b

    const/4 v13, 0x3

    if-ne v1, v13, :cond_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->setInteracting(IZ)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-void
.end method

.method public setDelegateView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mDelegateView:Landroid/view/View;

    return-void
.end method

.method public varargs setInitialTouchRegion([Landroid/view/View;)V
    .locals 11
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .local v0, "bounds":Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .local v2, "p":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    aget-object v3, p1, v1

    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    if-nez v1, :cond_1

    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v10

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_1
    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v10

    int-to-float v5, v5

    aget v6, v2, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_1

    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mInitialTouch:Landroid/graphics/RectF;

    invoke-virtual {v4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setSourceView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSourceView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mTriggerThreshhold:F

    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setSwapXY(Z)V
    .locals 0
    .param p1, "swap"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DelegateViewHelper;->mSwapXY:Z

    return-void
.end method

.class public Lcom/android/systemui/recents/views/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field public mAllowSwipeTowardsEnd:Z

.field public mAllowSwipeTowardsStart:Z

.field mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mRtl:Z

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 55
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FF)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 51
    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 52
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 73
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 79
    iput-object p2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    .line 80
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    .line 81
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 82
    iput p3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    .line 83
    iput p4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/SwipeHelper;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 124
    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 126
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 124
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x0

    .line 221
    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 223
    .local v1, "canAnimViewBeDismissed":Z
    cmpg-float v4, p2, v6

    if-ltz v4, :cond_1

    cmpl-float v4, p2, v6

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v3, v4

    .line 231
    .local v3, "newPos":F
    :goto_0
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 232
    .local v2, "duration":I
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_3

    .line 233
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 240
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 241
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v4, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$1;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$2;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 261
    return-void

    .line 229
    .end local v0    # "anim":Landroid/animation/ValueAnimator;
    .end local v2    # "duration":I
    .end local v3    # "newPos":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .restart local v3    # "newPos":F
    goto :goto_0

    .line 237
    .restart local v2    # "duration":I
    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 14
    .param p1, "velocityTracker"    # Landroid/view/VelocityTracker;

    .prologue
    .line 352
    const/16 v7, 0x3e8

    invoke-virtual {p1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 353
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 354
    .local v6, "velocity":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    .line 355
    .local v4, "perpendicularVelocity":F
    iget v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v3, v7, v8

    .line 356
    .local v3, "escapeVelocity":F
    iget-object v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    .line 358
    .local v5, "translation":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    iget-object v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    float-to-double v12, v7

    mul-double/2addr v10, v12

    cmpl-double v7, v8, v10

    if-lez v7, :cond_1

    const/4 v0, 0x1

    .line 360
    .local v0, "childSwipedFarEnough":Z
    :goto_0
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    move v8, v7

    :goto_1
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-ne v8, v7, :cond_4

    const/4 v1, 0x1

    .line 364
    .local v1, "childSwipedFastEnough":Z
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v2, 0x1

    .line 368
    .local v2, "dismissChild":Z
    :goto_4
    if-eqz v2, :cond_7

    .line 370
    iget-object v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_6

    .end local v6    # "velocity":F
    :goto_5
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 376
    :goto_6
    return-void

    .line 358
    .end local v0    # "childSwipedFarEnough":Z
    .end local v1    # "childSwipedFastEnough":Z
    .end local v2    # "dismissChild":Z
    .restart local v6    # "velocity":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    .restart local v0    # "childSwipedFarEnough":Z
    :cond_2
    const/4 v7, 0x0

    move v8, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 364
    .restart local v1    # "childSwipedFastEnough":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 370
    .restart local v2    # "dismissChild":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 373
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 374
    iget-object v7, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/recents/views/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_6
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 130
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 111
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 144
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 119
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 174
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 172
    goto :goto_0

    :cond_1
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method private isValidSwipeDirection(F)Z
    .locals 2
    .param p1, "amount"    # F

    .prologue
    const/4 v1, 0x0

    .line 339
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_3

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_1

    .line 341
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    .line 348
    :goto_0
    return v0

    .line 341
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    .line 343
    :cond_1
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSwipeAmount(F)V
    .locals 8
    .param p1, "amount"    # F

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    .line 324
    .local v2, "size":F
    const v3, 0x3e19999a    # 0.15f

    mul-float v1, v3, v2

    .line 325
    .local v1, "maxScrollDistance":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    .line 326
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    move p1, v1

    .line 331
    .end local v1    # "maxScrollDistance":F
    .end local v2    # "size":F
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 332
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v3, :cond_2

    .line 333
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    .line 334
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 336
    .end local v0    # "alpha":F
    :cond_2
    return-void

    .line 326
    .restart local v1    # "maxScrollDistance":F
    .restart local v2    # "size":F
    :cond_3
    neg-float p1, v1

    goto :goto_0

    .line 328
    :cond_4
    div-float v3, p1, v2

    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float p1, v1, v3

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 264
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    .line 265
    .local v1, "canAnimViewBeDismissed":Z
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 266
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/16 v2, 0xfa

    .line 267
    .local v2, "duration":I
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 268
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$3;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$4;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 288
    return-void
.end method


# virtual methods
.method getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 153
    .local v3, "viewSize":F
    const v4, 0x3f266666    # 0.65f

    mul-float v0, v4, v3

    .line 154
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 155
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 156
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 157
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 161
    :cond_0
    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 162
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 163
    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 158
    :cond_1
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 159
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 181
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    return v3

    .line 183
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 184
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 185
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 186
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 187
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/recents/views/SwipeHelper;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    .line 188
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 189
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 192
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    .line 199
    .local v2, "pos":F
    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 200
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 202
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 203
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 209
    .end local v1    # "delta":F
    .end local v2    # "pos":F
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    .line 210
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-nez v2, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 315
    :goto_0
    return v2

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 299
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 315
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    .line 304
    .local v1, "delta":F
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setSwipeAmount(F)V

    .line 305
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    goto :goto_1

    .line 310
    .end local v1    # "delta":F
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_1

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    .line 149
    return-void
.end method

.class public Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;
    }
.end annotation


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsEnabled:Z

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownHeight:I

.field private mChangePositionInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDelegateToScrollView:Z

.field private mDimmedNeedsAnimation:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mHideSensitiveNeedsAnimation:Z

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterceptDelegateEnabled:Z

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mLastMotionY:I

.field private mLastSetStackHeight:F

.field private mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaximumVelocity:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNotificationTopPadding:I

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRequestViewResizeAnimationOnLayout:Z

.field private mScrollView:Landroid/view/ViewGroup;

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrollingEnabled:Z

.field private mSidePaddings:I

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private final mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    const v2, 0x7fffffff

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 120
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    .line 121
    new-instance v2, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    .line 127
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    .line 131
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .line 157
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 205
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 216
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 234
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 235
    .local v0, "maxHeight":I
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    .line 240
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 241
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/EmptyShadeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/DismissView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method

.method private applyCurrentState()V
    .locals 1

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    .line 2161
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2164
    :cond_0
    return-void
.end method

.method private clampPadding(I)I
    .locals 1
    .param p1, "desiredPadding"    # I

    .prologue
    .line 1445
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private clampScrollPosition()V
    .locals 2

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    .line 437
    .local v0, "scrollRange":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    .line 438
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 440
    :cond_0
    return-void
.end method

.method private customScrollTo(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1181
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 1183
    return-void
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 769
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 770
    .local v0, "downEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 771
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 772
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 773
    return-void
.end method

.method private endDrag()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1473
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 1477
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1478
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1480
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1481
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1483
    :cond_1
    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 5
    .param p1, "screenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, -0x1

    .line 2234
    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 2244
    :cond_0
    :goto_0
    return v1

    .line 2237
    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 2238
    const/4 v1, -0x2

    goto :goto_0

    .line 2240
    :cond_2
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 2241
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2242
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private fling(I)V
    .locals 14
    .param p1, "velocityY"    # I

    .prologue
    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    .line 1361
    .local v12, "scrollRange":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    .line 1362
    .local v13, "topAmount":F
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    .line 1363
    .local v11, "bottomAmount":F
    if-gez p1, :cond_1

    cmpl-float v0, v13, v2

    if-lez v0, :cond_1

    .line 1364
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v1, v13

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1365
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1366
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1367
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1379
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const v10, 0x3fffffff    # 1.9999999f

    move v4, p1

    move v6, v5

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 1384
    .end local v11    # "bottomAmount":F
    .end local v12    # "scrollRange":I
    .end local v13    # "topAmount":F
    :cond_0
    return-void

    .line 1369
    .restart local v11    # "bottomAmount":F
    .restart local v12    # "scrollRange":I
    .restart local v13    # "topAmount":F
    :cond_1
    if-lez p1, :cond_2

    cmpl-float v0, v11, v2

    if-lez v0, :cond_2

    .line 1370
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1371
    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1372
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    .line 1377
    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0
.end method

.method private generateActivateEvent()V
    .locals 4

    .prologue
    .line 1825
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1826
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 1830
    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    .prologue
    .line 1833
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 1838
    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1802
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1803
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1804
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v4, 0x168

    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1808
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1812
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1813
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1814
    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    .prologue
    .line 1737
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    .line 1738
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    .line 1739
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    .line 1740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    .line 1741
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    .line 1742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    .line 1743
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    .line 1744
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    .line 1745
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    .line 1746
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    .line 1747
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    .line 1748
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    .line 1749
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1751
    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 6

    .prologue
    .line 1778
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1779
    .local v1, "child":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1780
    .local v2, "childWasSwipedOut":Z
    if-eqz v2, :cond_0

    const/4 v0, 0x2

    .line 1783
    .local v0, "animationType":I
    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1786
    .local v3, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(F)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 1787
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1780
    .end local v0    # "animationType":I
    .end local v3    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1789
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childWasSwipedOut":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1790
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1791
    return-void
.end method

.method private generateDarkEvent()V
    .locals 3

    .prologue
    .line 1857
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v1, :cond_0

    .line 1858
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    .line 1859
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    .line 1860
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 1863
    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    .prologue
    .line 1841
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 1846
    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    .prologue
    .line 1770
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1771
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1774
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1775
    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    .prologue
    .line 1866
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 1871
    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    .prologue
    .line 1849
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1850
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1853
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 1854
    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    .prologue
    .line 1794
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1795
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1798
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1799
    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1579
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1591
    :goto_0
    return v0

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v1

    .line 1588
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1591
    goto :goto_0
.end method

.method private generateSnapBackEvents()V
    .locals 5

    .prologue
    .line 1762
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1763
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1766
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1767
    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 4

    .prologue
    .line 1817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 1822
    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    .prologue
    .line 1754
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 1759
    return-void
.end method

.method private getFirstChildBelowTranlsationY(F)Landroid/view/View;
    .locals 5
    .param p1, "translationY"    # F

    .prologue
    .line 1272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1273
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1274
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    .line 1279
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1273
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1279
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1258
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1259
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1260
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1264
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1258
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1264
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1615
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1616
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1617
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    .line 1619
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getLayoutHeight()I
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaxExpandHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1318
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1319
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1320
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    .line 1322
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2249
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2250
    .local v0, "count":I
    const/4 v2, 0x0

    .line 2251
    .local v2, "notGoneIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2252
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2253
    .local v3, "v":Landroid/view/View;
    if-ne p1, v3, :cond_0

    .line 2260
    .end local v2    # "notGoneIndex":I
    .end local v3    # "v":Landroid/view/View;
    :goto_1
    return v2

    .line 2256
    .restart local v2    # "notGoneIndex":I
    .restart local v3    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 2257
    add-int/lit8 v2, v2, 0x1

    .line 2251
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2260
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getPositionInLinearLayout(Landroid/view/View;)I
    .locals 5
    .param p1, "requestedChild"    # Landroid/view/View;

    .prologue
    .line 1623
    const/4 v2, 0x0

    .line 1624
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1625
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1626
    .local v0, "child":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 1636
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "position":I
    :goto_1
    return v2

    .line 1629
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "position":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 1630
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 1632
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v3

    .line 1624
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1636
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getRubberBandFactor(Z)F
    .locals 2
    .param p1, "onTop"    # Z

    .prologue
    const v0, 0x3eb33333    # 0.35f

    .line 1449
    if-nez p1, :cond_1

    .line 1459
    :cond_0
    :goto_0
    return v0

    .line 1452
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_2

    .line 1453
    const v0, 0x3e19999a    # 0.15f

    goto :goto_0

    .line 1454
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-eqz v1, :cond_3

    .line 1455
    const v0, 0x3e570a3d    # 0.21f

    goto :goto_0

    .line 1456
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_0

    .line 1457
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 8

    .prologue
    .line 1236
    const/4 v4, 0x0

    .line 1237
    .local v4, "scrollRange":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1238
    .local v1, "firstChild":Lcom/android/systemui/statusbar/ExpandableView;
    if-eqz v1, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    .line 1240
    .local v0, "contentHeight":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMaxExpandHeight(Landroid/view/View;)I

    move-result v2

    .line 1241
    .local v2, "firstChildMaxExpandHeight":I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1243
    if-lez v4, :cond_0

    .line 1244
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v3

    .line 1247
    .local v3, "lastChild":Landroid/view/View;
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    sub-int v5, v2, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1250
    .end local v0    # "contentHeight":I
    .end local v2    # "firstChildMaxExpandHeight":I
    .end local v3    # "lastChild":Landroid/view/View;
    :cond_0
    return v4
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 1524
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1526
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    .line 1530
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    goto :goto_0

    .line 1522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 1542
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 1543
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 1545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 1547
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1541
    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1016
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1020
    :goto_0
    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1003
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1005
    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 271
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFocusable(Z)V

    .line 272
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDescendantFocusability(I)V

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    .line 274
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 275
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    .line 276
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    .line 278
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    .line 286
    new-instance v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .line 287
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    .line 292
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    .line 299
    return-void
.end method

.method private isBelowLastNotification(FF)Z
    .locals 8
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2409
    .local v2, "lastChildNotGone":Lcom/android/systemui/statusbar/ExpandableView;
    if-nez v2, :cond_2

    .line 2410
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    .line 2419
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 2410
    goto :goto_0

    .line 2412
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eq v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eq v2, v5, :cond_3

    .line 2413
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 2414
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    if-ne v2, v5, :cond_4

    .line 2415
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->getY()F

    move-result v5

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 2417
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/DismissView;->getY()F

    move-result v1

    .line 2418
    .local v1, "dismissY":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/DismissView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_7

    move v0, v3

    .line 2419
    .local v0, "belowDismissView":Z
    :goto_1
    if-nez v0, :cond_5

    cmpl-float v5, p2, v1

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/DismissView;->getX()F

    move-result v6

    sub-float v6, p1, v6

    sub-float v7, p2, v1

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/DismissView;->isOnEmptySpace(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v4, v3

    :cond_6
    move v3, v4

    goto :goto_0

    .end local v0    # "belowDismissView":Z
    :cond_7
    move v0, v4

    .line 2418
    goto :goto_1
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(F)Z

    move-result v0

    return v0
.end method

.method private isRubberbanded(Z)Z
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 1468
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollingEnabled()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private needsHeightAdaption()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 314
    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3
    .param p1, "amount"    # F
    .param p2, "isRubberbanded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1149
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 1150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_2

    .line 1151
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1157
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1149
    goto :goto_0

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    goto :goto_1
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1874
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1875
    const/4 v1, 0x0

    .line 1979
    :goto_0
    return v1

    .line 1888
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1889
    .local v8, "action":I
    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1890
    const/4 v1, 0x1

    goto :goto_0

    .line 1893
    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1979
    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    goto :goto_0

    .line 1904
    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1905
    .local v9, "activePointerId":I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    .line 1910
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1911
    .local v11, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v11, v1, :cond_3

    .line 1912
    const-string v1, "NotificationStackScrollLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in onInterceptTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1917
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v14, v1

    .line 1918
    .local v14, "y":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v12, v1

    .line 1919
    .local v12, "x":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 1920
    .local v15, "yDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 1921
    .local v13, "xDiff":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v15, v1, :cond_2

    if-le v15, v13, :cond_2

    .line 1922
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1923
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1924
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1925
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 1926
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1932
    .end local v9    # "activePointerId":I
    .end local v11    # "pointerIndex":I
    .end local v12    # "x":I
    .end local v13    # "xDiff":I
    .end local v14    # "y":I
    .end local v15    # "yDiff":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v14, v1

    .line 1933
    .restart local v14    # "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1934
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1935
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 1943
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 1944
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 1945
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1946
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    .line 1948
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    .line 1949
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v10, 0x1

    .line 1956
    .local v10, "isBeingDragged":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    goto/16 :goto_1

    .line 1955
    .end local v10    # "isBeingDragged":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 1963
    .end local v14    # "y":I
    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 1964
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 1965
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    .line 1966
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1967
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    .line 1971
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1893
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private onOverScrollFling(ZI)V
    .locals 3
    .param p1, "open"    # Z
    .param p2, "initialVelocity"    # I

    .prologue
    const/4 v2, 0x1

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    .line 916
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 917
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 918
    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 29
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 777
    const/4 v2, 0x0

    .line 909
    :goto_0
    return v2

    .line 779
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 784
    .local v16, "action":I
    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 909
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 786
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 787
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 789
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v22, 0x1

    .line 790
    .local v22, "isBeingDragged":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 801
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 803
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto :goto_1

    .line 789
    .end local v22    # "isBeingDragged":Z
    :cond_5
    const/16 v22, 0x0

    goto :goto_2

    .line 807
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 808
    .local v17, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 809
    const-string v2, "NotificationStackScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 813
    :cond_6
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    .line 814
    .local v27, "y":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 815
    .local v25, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v19, v2, v27

    .line 816
    .local v19, "deltaY":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v2, v25, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    .line 817
    .local v26, "xDiff":I
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v28

    .line 818
    .local v28, "yDiff":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v28

    if-le v0, v2, :cond_7

    move/from16 v0, v28

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 819
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    .line 820
    if-lez v19, :cond_9

    .line 821
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int v19, v19, v2

    .line 826
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 828
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    .line 830
    .local v8, "range":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v2, :cond_8

    .line 831
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 835
    :cond_8
    if-gez v19, :cond_a

    .line 836
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v23

    .line 843
    .local v23, "scrollAmount":F
    :goto_4
    const/4 v2, 0x0

    cmpl-float v2, v23, v2

    if-eqz v2, :cond_1

    .line 846
    const/4 v3, 0x0

    move/from16 v0, v23

    float-to-int v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    goto/16 :goto_1

    .line 823
    .end local v8    # "range":I
    .end local v23    # "scrollAmount":F
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int v19, v19, v2

    goto :goto_3

    .line 838
    .restart local v8    # "range":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v23

    .restart local v23    # "scrollAmount":F
    goto :goto_4

    .line 852
    .end local v8    # "range":I
    .end local v17    # "activePointerIndex":I
    .end local v19    # "deltaY":I
    .end local v23    # "scrollAmount":F
    .end local v25    # "x":I
    .end local v26    # "xDiff":I
    .end local v27    # "y":I
    .end local v28    # "yDiff":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 854
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 855
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    .line 857
    .local v21, "initialVelocity":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 858
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    .line 877
    :cond_b
    :goto_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_1

    .line 860
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 861
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_f

    .line 862
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v18

    .line 863
    .local v18, "currentOverScrollTop":F
    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_d

    if-lez v21, :cond_e

    .line 864
    :cond_d
    move/from16 v0, v21

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_5

    .line 866
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_5

    .line 869
    .end local v18    # "currentOverScrollTop":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto :goto_5

    .line 883
    .end local v21    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 884
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 885
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 887
    :cond_10
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_1

    .line 892
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 893
    .local v20, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 894
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    .line 895
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_1

    .line 899
    .end local v20    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 987
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 988
    .local v1, "pointerId":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 992
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 993
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    .line 994
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    .line 995
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 996
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 999
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 992
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollDown(I)F
    .locals 9
    .param p1, "deltaY"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 961
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 962
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 963
    .local v0, "currentBottomAmount":F
    int-to-float v6, p1

    add-float v2, v0, v6

    .line 964
    .local v2, "newBottomAmount":F
    cmpl-float v6, v0, v5

    if-lez v6, :cond_0

    .line 965
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 970
    :cond_0
    cmpg-float v6, v2, v5

    if-gez v6, :cond_2

    move v4, v2

    .line 971
    .local v4, "scrollAmount":F
    :goto_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v6, v6

    add-float v3, v6, v4

    .line 972
    .local v3, "newScrollY":F
    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    .line 973
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v1

    .line 975
    .local v1, "currentTopPixels":F
    sub-float v5, v1, v3

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 978
    iput v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 979
    const/4 v4, 0x0

    .line 981
    .end local v1    # "currentTopPixels":F
    :cond_1
    return v4

    .end local v3    # "newScrollY":F
    .end local v4    # "scrollAmount":F
    :cond_2
    move v4, v5

    .line 970
    goto :goto_0
.end method

.method private overScrollUp(II)F
    .locals 8
    .param p1, "deltaY"    # I
    .param p2, "range"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 928
    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 929
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 930
    .local v1, "currentTopAmount":F
    int-to-float v5, p1

    sub-float v3, v1, v5

    .line 931
    .local v3, "newTopAmount":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    .line 932
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 937
    :cond_0
    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    neg-float v4, v3

    .line 938
    .local v4, "scrollAmount":F
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v2, v5, v4

    .line 939
    .local v2, "newScrollY":F
    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    .line 940
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_2

    .line 941
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    .line 943
    .local v0, "currentBottomPixels":F
    add-float v5, v0, v2

    int-to-float v6, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    .line 947
    .end local v0    # "currentBottomPixels":F
    :cond_2
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 948
    const/4 v4, 0x0

    .line 950
    :cond_3
    return v4
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1012
    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 347
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 348
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    .line 349
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 351
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    .line 352
    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    .line 429
    :cond_0
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1
    .param p1, "isDragged"    # Z

    .prologue
    .line 1997
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 1998
    if-eqz p1, :cond_0

    .line 1999
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 2000
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 2002
    :cond_0
    return-void
.end method

.method private setIsExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 2058
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 2059
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 2060
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    .line 2061
    if-eqz v0, :cond_0

    .line 2062
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 2064
    :cond_0
    return-void

    .line 2058
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMaxLayoutHeight(I)V
    .locals 0
    .param p1, "maxLayoutHeight"    # I

    .prologue
    .line 392
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 394
    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "isRubberbanded"    # Z

    .prologue
    .line 1135
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1136
    if-eqz p3, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    .line 1146
    :goto_0
    return-void

    .line 1139
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    .line 1140
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    .line 1141
    if-eqz p2, :cond_1

    .line 1142
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    .line 1144
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 1173
    if-eqz p2, :cond_0

    .line 1174
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    .line 1178
    :goto_0
    return-void

    .line 1176
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "isSwiped"    # Z

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    .line 710
    if-eqz p1, :cond_0

    .line 711
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 2
    .param p1, "topPadding"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 447
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    .line 448
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 451
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    .line 452
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    .line 453
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 455
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 458
    :cond_1
    return-void
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v1, 0x1

    .line 1391
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    .line 1392
    .local v0, "topOverScroll":F
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private springBack()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    .line 1214
    .local v4, "scrollRange":I
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz v7, :cond_2

    move v3, v5

    .line 1215
    .local v3, "overScrolledTop":Z
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v7, v4, :cond_3

    move v2, v5

    .line 1216
    .local v2, "overScrolledBottom":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    .line 1219
    :cond_0
    if-eqz v3, :cond_4

    .line 1220
    const/4 v1, 0x1

    .line 1221
    .local v1, "onTop":Z
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v7, v7

    int-to-float v0, v7

    .line 1222
    .local v0, "newAmount":F
    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1223
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    .line 1229
    :goto_2
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1230
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    .line 1231
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6, v5}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1233
    .end local v0    # "newAmount":F
    .end local v1    # "onTop":Z
    :cond_1
    return-void

    .end local v2    # "overScrolledBottom":Z
    .end local v3    # "overScrolledTop":Z
    :cond_2
    move v3, v6

    .line 1214
    goto :goto_0

    .restart local v3    # "overScrolledTop":Z
    :cond_3
    move v2, v6

    .line 1215
    goto :goto_1

    .line 1225
    .restart local v2    # "overScrolledBottom":Z
    :cond_4
    const/4 v1, 0x0

    .line 1226
    .restart local v1    # "onTop":Z
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v7, v4

    int-to-float v0, v7

    .line 1227
    .restart local v0    # "newAmount":F
    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_2
.end method

.method private startAnimationToState()V
    .locals 6

    .prologue
    .line 1722
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    .line 1723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    .line 1724
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1727
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    .line 1729
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1733
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 1734
    return-void

    .line 1731
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "sourceView"    # Landroid/view/View;
    .param p3, "targetView"    # Landroid/view/View;

    .prologue
    .line 1486
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1487
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1488
    return-void
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setLayoutHeight(I)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setTopPadding(I)V

    .line 399
    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1669
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1670
    return-void

    .line 1669
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 1674
    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 1675
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1676
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    .line 1678
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    return-void
.end method

.method private updateChildren()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    goto :goto_0
.end method

.method private updateContentHeight()V
    .locals 7

    .prologue
    .line 1330
    const/4 v2, 0x0

    .line 1331
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1332
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1333
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 1334
    if-eqz v2, :cond_0

    .line 1336
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v5

    .line 1338
    :cond_0
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    move-object v4, v0

    .line 1339
    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1340
    .local v4, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    .line 1331
    .end local v4    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1341
    :cond_2
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 1342
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 1343
    .local v1, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 1347
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    .line 1348
    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 5

    .prologue
    .line 1660
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1661
    .local v3, "running":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1662
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1663
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1664
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1662
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1660
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "running":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1666
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v3    # "running":Z
    :cond_1
    return-void
.end method

.method private updatePadding(Z)V
    .locals 1
    .param p1, "dimmed"    # Z

    .prologue
    .line 302
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->shouldScaleDimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 308
    return-void

    .line 302
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    goto :goto_0
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2085
    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 2086
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2087
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2089
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 2090
    .local v0, "endPosition":F
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int v2, v3, v4

    .line 2092
    .local v2, "stackEnd":I
    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 2093
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v3, v3

    int-to-float v4, v2

    sub-float v4, v0, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2094
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 2098
    .end local v0    # "endPosition":F
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "stackEnd":I
    :cond_0
    return-void
.end method

.method private updateScrollStateForRemovedChild(Landroid/view/View;)V
    .locals 5
    .param p1, "removedChild"    # Landroid/view/View;

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    .line 1601
    .local v2, "startingPosition":I
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int v0, v3, v4

    .line 1602
    .local v0, "childHeight":I
    add-int v1, v2, v0

    .line 1603
    .local v1, "endPosition":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v3, :cond_1

    .line 1606
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v2, v3, :cond_0

    .line 1610
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_0
.end method

.method private updateSpeedBump(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x0

    .line 2172
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SpeedBumpView;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v1, 0x1

    .line 2173
    .local v1, "notGoneBefore":Z
    :goto_0
    if-eq p1, v1, :cond_0

    .line 2174
    if-eqz p1, :cond_2

    .line 2175
    .local v0, "newVisibility":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setVisibility(I)V

    .line 2176
    if-eqz p1, :cond_3

    .line 2178
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SpeedBumpView;->setInvisible()V

    .line 2184
    .end local v0    # "newVisibility":I
    :cond_0
    :goto_2
    return-void

    .end local v1    # "notGoneBefore":Z
    :cond_1
    move v1, v0

    .line 2172
    goto :goto_0

    .restart local v1    # "notGoneBefore":Z
    :cond_2
    move v0, v2

    .line 2174
    goto :goto_1

    .line 2181
    .restart local v0    # "newVisibility":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    goto :goto_2
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 699
    const v1, 0x7f0f010f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 700
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 655
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    .line 2198
    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "newIndex"    # I

    .prologue
    const/4 v3, 0x1

    .line 1708
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1709
    .local v0, "currentIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    .line 1710
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 1711
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    .line 1712
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    .line 1713
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    .line 1714
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1719
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1026
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1027
    .local v3, "oldX":I
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1028
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    .line 1029
    .local v11, "x":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    .line 1031
    .local v12, "y":I
    if-ne v3, v11, :cond_0

    if-eq v4, v12, :cond_4

    .line 1032
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v6

    .line 1033
    .local v6, "range":I
    if-gez v12, :cond_1

    if-gez v4, :cond_2

    :cond_1
    if-le v12, v6, :cond_3

    if-gt v4, v6, :cond_3

    .line 1034
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    .line 1035
    .local v10, "currVelocity":F
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-ltz v0, :cond_3

    .line 1036
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    .line 1040
    .end local v10    # "currVelocity":F
    :cond_3
    sub-int v1, v11, v3

    sub-int v2, v12, v4

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v8, v0

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    .line 1042
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 1046
    .end local v6    # "range":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    .line 1048
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_5
    return-void
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;
    .param p3, "delay"    # I
    .param p4, "duration"    # J

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v2, 0x0

    int-to-long v4, p3

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    .line 728
    return-void
.end method

.method public expansionStateChanged(Z)V
    .locals 1
    .param p1, "isExpanding"    # Z

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 676
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    .line 677
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 680
    :cond_0
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "fromMoreCard"    # Z

    .prologue
    .line 1691
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_1

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    if-eqz p2, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1697
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 1699
    :cond_1
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 7

    .prologue
    .line 2373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 2374
    .local v3, "count":I
    const/4 v4, 0x0

    .line 2375
    .local v4, "max":F
    const/4 v2, 0x0

    .local v2, "childIdx":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 2376
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2377
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 2375
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2380
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v5, v6

    .line 2381
    .local v0, "bottom":F
    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    .line 2382
    move v4, v0

    goto :goto_1

    .line 2385
    .end local v0    # "bottom":F
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v5

    add-float/2addr v5, v4

    return v5
.end method

.method public getBottomStackPeekSize()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 10
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    .line 631
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 632
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableView;

    .line 633
    .local v6, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    instance-of v8, v6, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    if-ne v6, v8, :cond_1

    .line 631
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 639
    .local v2, "childTop":F
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v8

    int-to-float v8, v8

    add-float v7, v2, v8

    .line 640
    .local v7, "top":F
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v0, v2, v8

    .line 644
    .local v0, "bottom":F
    const/4 v4, 0x0

    .line 645
    .local v4, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    .line 647
    .local v5, "right":I
    cmpl-float v8, p2, v7

    if-ltz v8, :cond_0

    cmpg-float v8, p2, v0

    if-gtz v8, :cond_0

    int-to-float v8, v4

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_0

    int-to-float v8, v5

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_0

    .line 651
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v7    # "top":F
    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 695
    return-object p1
.end method

.method public getChildLocation(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v0

    .line 382
    .local v0, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-nez v0, :cond_0

    .line 383
    const/4 v1, 0x0

    .line 388
    :goto_0
    return v1

    .line 385
    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-eqz v1, :cond_1

    .line 386
    const/16 v1, 0x40

    goto :goto_0

    .line 388
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    goto :goto_0
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 12
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 595
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 596
    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float v6, p2, v10

    .line 598
    .local v6, "localTouchY":F
    const/4 v3, 0x0

    .line 599
    .local v3, "closestChild":Lcom/android/systemui/statusbar/ExpandableView;
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 602
    .local v7, "minDist":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    .line 603
    .local v4, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 604
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    .line 605
    .local v8, "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    instance-of v10, v8, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    if-ne v8, v10, :cond_1

    .line 603
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    .line 611
    .local v2, "childTop":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    .line 612
    .local v9, "top":F
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v2, v10

    .line 614
    .local v0, "bottom":F
    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v0, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 615
    .local v5, "dist":F
    cmpg-float v10, v5, v7

    if-gez v10, :cond_0

    .line 616
    move-object v3, v8

    .line 617
    move v7, v5

    goto :goto_1

    .line 620
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v5    # "dist":F
    .end local v8    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v9    # "top":F
    :cond_2
    return-object v3
.end method

.method public getCollapseSecondCardPadding()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 1326
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method public getDismissViewHeight()I
    .locals 3

    .prologue
    .line 2357
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    add-int v0, v1, v2

    .line 2361
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v1, :cond_0

    .line 2363
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    .line 2365
    :cond_0
    return v0
.end method

.method public getEmptyBottomMargin()I
    .locals 3

    .prologue
    .line 2032
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int v0, v1, v2

    .line 2033
    .local v0, "emptyMargin":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->needsHeightAdaption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2034
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int/2addr v0, v1

    .line 2038
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 2036
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 1

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .prologue
    .line 2028
    return-object p0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    .prologue
    .line 2205
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1287
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1288
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1289
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 1293
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 1287
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1293
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMinStackHeight()I
    .locals 2

    .prologue
    .line 1432
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 1301
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 1302
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1303
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1304
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1305
    add-int/lit8 v2, v2, 0x1

    .line 1302
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1308
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1309
    add-int/lit8 v2, v2, -0x1

    .line 1311
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1312
    add-int/lit8 v2, v2, -0x1

    .line 1314
    :cond_3
    return v2
.end method

.method public getNotificationTopPadding()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    return v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    .prologue
    .line 2212
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPeekHeight()I
    .locals 2

    .prologue
    .line 1440
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public goToFullShade(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 2187
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    .line 2188
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 2190
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    .line 2191
    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    .line 2192
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2194
    return-void
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    .prologue
    .line 1681
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 705
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewNotGone()Z
    .locals 2

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewVisible()Z
    .locals 1

    .prologue
    .line 2353
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isInContentBounds(F)Z
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    .prologue
    .line 2023
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToTop()Z
    .locals 1

    .prologue
    .line 2018
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 577
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    .line 579
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 584
    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 0

    .prologue
    .line 2110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2111
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 533
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v1, :cond_0

    .line 549
    :goto_0
    return-void

    .line 537
    :cond_0
    const v1, 0x7f0f010f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 539
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 541
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 717
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 719
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 720
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 721
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 722
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    .line 723
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    .line 588
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 267
    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    .prologue
    .line 2042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 2043
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 2044
    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2047
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    .line 2048
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onExpansionStopped()V

    .line 2049
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    .line 2050
    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 2053
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 2055
    :cond_0
    return-void
.end method

.method public onGoToKeyguard()V
    .locals 1

    .prologue
    .line 2401
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    .line 2403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2405
    :cond_0
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2069
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2070
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 2071
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2072
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2073
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1492
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    if-eqz v4, :cond_2

    .line 1493
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1494
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1495
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    .line 1496
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 1518
    :cond_0
    :goto_0
    return v3

    .line 1499
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v4, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 1501
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    .line 1502
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, "expandWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1505
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1507
    :cond_3
    const/4 v1, 0x0

    .line 1508
    .local v1, "scrollWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_4

    .line 1509
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1511
    :cond_4
    const/4 v2, 0x0

    .line 1512
    .local v2, "swipeWantsIt":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v4, :cond_5

    .line 1516
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v4, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1518
    :cond_5
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    .line 330
    .local v0, "centerX":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 331
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 332
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    .line 333
    .local v4, "width":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    .line 334
    .local v2, "height":F
    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    const/4 v6, 0x0

    div-float v7, v4, v9

    add-float/2addr v7, v0

    float-to-int v7, v7

    float-to-int v8, v2

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 339
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "height":F
    .end local v4    # "width":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize()V

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 344
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 318
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 319
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 320
    .local v1, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 321
    .local v2, "size":I
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 322
    .local v0, "childMeasureSpec":I
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChildren(II)V

    .line 323
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 6
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1188
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1189
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1190
    .local v0, "oldX":I
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1191
    .local v1, "oldY":I
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    .line 1192
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    .line 1193
    if-eqz p4, :cond_0

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    .line 1210
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    :goto_0
    return-void

    .line 1196
    .restart local v0    # "oldX":I
    .restart local v1    # "oldY":I
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidateParentIfNeeded()V

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    .line 1199
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    .line 1200
    .local v2, "overScrollTop":F
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v3, :cond_1

    .line 1201
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1203
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    .line 1207
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "overScrollTop":F
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customScrollTo(I)V

    .line 1208
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollY:I

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 2077
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2078
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2081
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 2082
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v6, :cond_3

    :cond_0
    move v2, v6

    .line 734
    .local v2, "isCancelOrUp":Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    if-eqz v7, :cond_4

    .line 735
    if-eqz v2, :cond_1

    .line 736
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    .line 738
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    .line 739
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 765
    :cond_2
    :goto_1
    return v5

    .end local v2    # "isCancelOrUp":Z
    :cond_3
    move v2, v5

    .line 732
    goto :goto_0

    .line 741
    .restart local v2    # "isCancelOrUp":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, "expandWantsIt":Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v7, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 744
    if-eqz v2, :cond_5

    .line 745
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v7, v5}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    .line 747
    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 748
    .local v4, "wasExpandingBefore":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 749
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v7, :cond_6

    if-eqz v4, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v7, :cond_6

    .line 751
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dispatchDownEventToScroller(Landroid/view/MotionEvent;)V

    .line 754
    .end local v4    # "wasExpandingBefore":Z
    :cond_6
    const/4 v3, 0x0

    .line 755
    .local v3, "scrollerWantsIt":Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v7, :cond_7

    .line 756
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 758
    :cond_7
    const/4 v1, 0x0

    .line 759
    .local v1, "horizontalSwipeWantsIt":Z
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v7, :cond_8

    .line 763
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 765
    :cond_8
    if-nez v1, :cond_9

    if-nez v3, :cond_9

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_9
    move v5, v6

    goto :goto_1
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1641
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    move-object v0, p1

    .line 1643
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    .line 1645
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    .line 1646
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    .line 1652
    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1551
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 1552
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    .line 1553
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v1, :cond_0

    .line 1570
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 1557
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    .line 1558
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    .line 1559
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Landroid/view/View;)V

    .line 1560
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v0

    .line 1561
    .local v0, "animationGenerated":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1564
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 1566
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    .line 1569
    invoke-virtual {p1, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 2006
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2007
    if-nez p1, :cond_0

    .line 2008
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 2010
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 5
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1057
    add-int v2, p4, p2

    .line 1059
    .local v2, "newScrollY":I
    neg-int v3, p8

    .line 1060
    .local v3, "top":I
    add-int v0, p8, p6

    .line 1062
    .local v0, "bottom":I
    const/4 v1, 0x0

    .line 1063
    .local v1, "clampedY":Z
    if-le v2, v0, :cond_1

    .line 1064
    move v2, v0

    .line 1065
    const/4 v1, 0x1

    .line 1071
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v2, v4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrolled(IIZZ)V

    .line 1073
    return v1

    .line 1066
    :cond_1
    if-ge v2, v3, :cond_0

    .line 1067
    move v2, v3

    .line 1068
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeLongPressCallback()V
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    .line 2014
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v1, 0x1

    .line 2147
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 2148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2149
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    .line 2150
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2152
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2153
    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0
    .param p1, "animationsEnabled"    # Z

    .prologue
    .line 1655
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    .line 1656
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    .line 1657
    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 372
    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z
    .param p3, "touchWakeUpScreenLocation"    # Landroid/graphics/PointF;

    .prologue
    const/4 v1, 0x1

    .line 2224
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    .line 2225
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2226
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    .line 2227
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    .line 2228
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2230
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2231
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 2
    .param p1, "dimmed"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2117
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    .line 2118
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    .line 2119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    .line 2120
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 2121
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    .line 2122
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2124
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2125
    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1
    .param p1, "dismissAllInProgress"    # Z

    .prologue
    .line 2344
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    .line 2345
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DismissView;->setDismissAllInProgress(Z)V

    .line 2346
    return-void
.end method

.method public setDismissView(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 1
    .param p1, "dismissView"    # Lcom/android/systemui/statusbar/DismissView;

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 2265
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2266
    return-void
.end method

.method public setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V
    .locals 1
    .param p1, "emptyShadeView"    # Lcom/android/systemui/statusbar/EmptyShadeView;

    .prologue
    .line 2269
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 2270
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2271
    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    .line 688
    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 5
    .param p1, "hideSensitive"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2128
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    if-eq p1, v3, :cond_2

    .line 2129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 2130
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2131
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 2132
    .local v2, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    .line 2130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2134
    .end local v2    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    .line 2135
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    .line 2136
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    .line 2137
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    .line 2139
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 2141
    .end local v0    # "childCount":I
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setInterceptDelegateEnabled(Z)V
    .locals 0
    .param p1, "interceptDelegateEnabled"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    .line 530
    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0
    .param p1, "intrinsicPadding"    # I

    .prologue
    .line 2201
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    .line 2202
    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 521
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    .line 522
    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .prologue
    .line 2106
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    .line 2107
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "mOnHeightChangedListener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 2102
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 2103
    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1099
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1100
    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z

    .prologue
    .line 1112
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    .line 1113
    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z
    .param p4, "cancelAnimators"    # Z
    .param p5, "isRubberbanded"    # Z

    .prologue
    .line 1127
    if-eqz p4, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1130
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    .line 1131
    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2
    .param p1, "numPixels"    # F
    .param p2, "onTop"    # Z
    .param p3, "animate"    # Z

    .prologue
    .line 1087
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    .line 1088
    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0
    .param p1, "overscrollTopChangedListener"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    .line 1162
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 2397
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 2398
    return-void
.end method

.method public setScrollView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "scrollView"    # Landroid/view/ViewGroup;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    .line 526
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 683
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    .line 684
    return-void
.end method

.method public setSpeedBumpView(Lcom/android/systemui/statusbar/SpeedBumpView;)V
    .locals 0
    .param p1, "speedBumpView"    # Lcom/android/systemui/statusbar/SpeedBumpView;

    .prologue
    .line 2167
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 2168
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2169
    return-void
.end method

.method public setStackHeight(F)V
    .locals 9
    .param p1, "height"    # F

    .prologue
    const/4 v7, 0x0

    .line 466
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    .line 467
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    .line 468
    float-to-int v1, p1

    .line 469
    .local v1, "newStackHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    .line 471
    .local v0, "minStackHeight":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v5, v6

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 473
    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 474
    move v3, v1

    .line 490
    .local v3, "stackHeight":I
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v3, v5, :cond_1

    .line 491
    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 495
    :cond_1
    return-void

    .line 467
    .end local v0    # "minStackHeight":I
    .end local v1    # "newStackHeight":I
    .end local v3    # "stackHeight":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 479
    .restart local v0    # "minStackHeight":I
    .restart local v1    # "newStackHeight":I
    :cond_3
    sub-int v4, v1, v0

    .line 482
    .local v4, "translationY":I
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v5, v6

    int-to-float v6, v0

    div-float v2, v5, v6

    .line 484
    .local v2, "partiallyThere":F
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 485
    int-to-float v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 487
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    .line 488
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    float-to-int v3, v5

    .restart local v3    # "stackHeight":I
    goto :goto_1
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 660
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 661
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 666
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 667
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 670
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 671
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 2217
    const/4 v0, 0x1

    return v0
.end method

.method public updateDismissView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2309
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 2310
    .local v2, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    move v1, v3

    .line 2311
    .local v1, "newVisibility":I
    :goto_1
    if-eq v2, v1, :cond_0

    .line 2312
    if-eq v1, v4, :cond_4

    .line 2313
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2314
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->cancelAnimation()V

    .line 2318
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    .line 2319
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2321
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2341
    :cond_0
    :goto_3
    return-void

    .line 2309
    .end local v1    # "newVisibility":I
    .end local v2    # "oldVisibility":I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v2

    goto :goto_0

    .restart local v2    # "oldVisibility":I
    :cond_2
    move v1, v4

    .line 2310
    goto :goto_1

    .line 2316
    .restart local v1    # "newVisibility":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    goto :goto_2

    .line 2323
    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2332
    .local v0, "dimissHideFinishRunnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->isButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_5

    .line 2333
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    .line 2334
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4, v3, v0}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2336
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2337
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    goto :goto_3
.end method

.method public updateEmptyShadeView(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2274
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 2275
    .local v1, "oldVisibility":I
    :goto_0
    if-eqz p1, :cond_2

    move v0, v3

    .line 2276
    .local v0, "newVisibility":I
    :goto_1
    if-eq v1, v0, :cond_0

    .line 2277
    if-eq v0, v4, :cond_4

    .line 2278
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2279
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->cancelAnimation()V

    .line 2283
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->setVisibility(I)V

    .line 2284
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    .line 2286
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 2306
    :cond_0
    :goto_3
    return-void

    .line 2274
    .end local v0    # "newVisibility":I
    .end local v1    # "oldVisibility":I
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->getVisibility()I

    move-result v1

    goto :goto_0

    .restart local v1    # "oldVisibility":I
    :cond_2
    move v0, v4

    .line 2275
    goto :goto_1

    .line 2281
    .restart local v0    # "newVisibility":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    goto :goto_2

    .line 2288
    :cond_4
    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 2297
    .local v2, "onFinishedRunnable":Ljava/lang/Runnable;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_5

    .line 2298
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/EmptyShadeView;->setWillBeGone(Z)V

    .line 2299
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3

    .line 2301
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/EmptyShadeView;->setInvisible()V

    .line 2302
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public updateIsSmallScreen(I)V
    .locals 2
    .param p1, "qsMinHeight"    # I

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateIsSmallScreen(I)V

    .line 2394
    return-void
.end method

.method public updateSpeedBumpIndex(I)V
    .locals 3
    .param p1, "newIndex"    # I

    .prologue
    .line 355
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 358
    .local v0, "currentIndex":I
    if-lez p1, :cond_2

    const/4 v1, 0x1

    .line 359
    .local v1, "validIndex":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_0

    .line 360
    const/4 v1, 0x0

    .line 361
    const/4 p1, -0x1

    .line 363
    :cond_0
    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 366
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    .line 368
    return-void

    .line 358
    .end local v1    # "validIndex":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public updateTopPadding(FIZZ)V
    .locals 6
    .param p1, "qsHeight"    # F
    .param p2, "scrollY"    # I
    .param p3, "animate"    # Z
    .param p4, "ignoreIntrinsicPadding"    # Z

    .prologue
    .line 1411
    int-to-float v4, p2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 1412
    .local v3, "start":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, v3

    .line 1413
    .local v2, "stackHeight":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    .line 1414
    .local v0, "minStackHeight":I
    int-to-float v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    .line 1415
    int-to-float v4, v0

    sub-float v1, v4, v2

    .line 1416
    .local v1, "overflow":F
    int-to-float v2, v0

    .line 1417
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, v2

    .line 1418
    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    .line 1422
    .end local v1    # "overflow":F
    :goto_0
    if-eqz p4, :cond_1

    float-to-int v4, v3

    :goto_1
    invoke-direct {p0, v4, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    .line 1424
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 1425
    return-void

    .line 1420
    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    .line 1422
    :cond_1
    float-to-int v4, v3

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v4

    goto :goto_1
.end method

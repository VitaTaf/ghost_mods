.class final Landroid/view/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Landroid/view/PhoneWindow$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mRootScrollY:I

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private final mStatusColorViewState:Landroid/view/PhoneWindow$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Landroid/view/PhoneWindow;


# direct methods
.method public constructor <init>(Landroid/view/PhoneWindow;Landroid/content/Context;I)V
    .locals 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v8, 0x0

    .line 2214
    iput-object p1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    .line 2215
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2154
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2183
    new-instance v0, Landroid/view/PhoneWindow$ColorViewState;

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const/4 v4, 0x3

    const-string v5, "android:status:background"

    const v6, 0x102002f

    const/16 v7, 0x400

    invoke-direct/range {v0 .. v7}, Landroid/view/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mStatusColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    .line 2190
    new-instance v0, Landroid/view/PhoneWindow$ColorViewState;

    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const/4 v4, 0x5

    const-string v5, "android:navigation:background"

    const v6, 0x1020030

    move v7, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/PhoneWindow$ColorViewState;-><init>(IIIILjava/lang/String;II)V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    .line 2202
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 2204
    iput v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2205
    iput v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2206
    iput v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2207
    iput-boolean v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2208
    iput-boolean v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2209
    iput-boolean v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .line 2210
    iput v8, p0, Landroid/view/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2212
    iput v8, p0, Landroid/view/PhoneWindow$DecorView;->mRootScrollY:I

    .line 2216
    iput p3, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    .line 2218
    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2220
    const v0, 0x10c000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 2223
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/view/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    .line 2225
    return-void
.end method

.method static synthetic access$1400(Landroid/view/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Landroid/view/PhoneWindow$DecorView;

    .prologue
    .line 2152
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/view/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Landroid/view/PhoneWindow$DecorView;

    .prologue
    .line 2152
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/view/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/view/PhoneWindow$DecorView;

    .prologue
    .line 2152
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/view/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 1
    .param p0, "x0"    # Landroid/view/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/WindowInsets;
    .param p2, "x2"    # Z

    .prologue
    .line 2152
    invoke-direct {p0, p1, p2}, Landroid/view/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Landroid/view/PhoneWindow$DecorView;

    .prologue
    .line 2152
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Landroid/view/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Landroid/view/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2152
    iput-object p1, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private drawableChanged()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 3116
    iget-boolean v5, p0, Landroid/view/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_1

    .line 3173
    :cond_0
    :goto_0
    return-void

    .line 3120
    :cond_1
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/view/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 3123
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->requestLayout()V

    .line 3124
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->invalidate()V

    .line 3126
    const/4 v4, -0x1

    .line 3132
    .local v4, "opacity":I
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3133
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3134
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 3135
    if-nez v2, :cond_3

    .line 3136
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 3169
    :cond_2
    :goto_1
    iput v4, p0, Landroid/view/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 3170
    iget v5, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_0

    .line 3171
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v5, v4}, Landroid/view/PhoneWindow;->setDefaultWindowFormat(I)V

    goto :goto_0

    .line 3137
    :cond_3
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_8

    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_8

    .line 3141
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 3142
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 3145
    .local v1, "bop":I
    if-eq v3, v10, :cond_4

    if-ne v1, v10, :cond_5

    .line 3146
    :cond_4
    const/4 v4, -0x1

    goto :goto_1

    .line 3147
    :cond_5
    if-nez v3, :cond_6

    .line 3148
    move v4, v1

    goto :goto_1

    .line 3149
    :cond_6
    if-nez v1, :cond_7

    .line 3150
    move v4, v3

    goto :goto_1

    .line 3152
    :cond_7
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_1

    .line 3160
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_8
    const/4 v4, -0x3

    goto :goto_1
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2390
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateColorViewInt(Landroid/view/PhoneWindow$ColorViewState;IIIZZ)V
    .locals 12
    .param p1, "state"    # Landroid/view/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "size"    # I
    .param p5, "verticalBar"    # Z
    .param p6, "animate"    # Z

    .prologue
    .line 2934
    if-lez p4, :cond_3

    iget v8, p1, Landroid/view/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    and-int/2addr v8, p2

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, p1, Landroid/view/PhoneWindow$ColorViewState;->hideWindowFlag:I

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, p1, Landroid/view/PhoneWindow$ColorViewState;->translucentFlag:I

    and-int/2addr v8, v9

    if-nez v8, :cond_3

    const/high16 v8, -0x1000000

    and-int/2addr v8, p3

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 2940
    .local v4, "show":Z
    :goto_0
    const/4 v7, 0x0

    .line 2941
    .local v7, "visibilityChanged":Z
    iget-object v5, p1, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 2943
    .local v5, "view":Landroid/view/View;
    if-eqz p5, :cond_4

    const/4 v2, -0x1

    .line 2944
    .local v2, "resolvedHeight":I
    :goto_1
    if-eqz p5, :cond_5

    move/from16 v3, p4

    .line 2945
    .local v3, "resolvedWidth":I
    :goto_2
    if-eqz p5, :cond_6

    iget v1, p1, Landroid/view/PhoneWindow$ColorViewState;->horizontalGravity:I

    .line 2947
    .local v1, "resolvedGravity":I
    :goto_3
    if-nez v5, :cond_7

    .line 2948
    if-eqz v4, :cond_0

    .line 2949
    new-instance v5, Landroid/view/View;

    .end local v5    # "view":Landroid/view/View;
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v5    # "view":Landroid/view/View;
    iput-object v5, p1, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 2950
    invoke-virtual {v5, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2951
    iget-object v8, p1, Landroid/view/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 2952
    iget v8, p1, Landroid/view/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    .line 2953
    const/4 v7, 0x1

    .line 2954
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2955
    const/4 v8, 0x0

    iput v8, p1, Landroid/view/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 2957
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v5, v8}, Landroid/view/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2958
    invoke-direct {p0}, Landroid/view/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 2976
    :cond_0
    :goto_4
    if-eqz v7, :cond_2

    .line 2977
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2978
    if-eqz p6, :cond_d

    .line 2979
    if-eqz v4, :cond_c

    .line 2980
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 2981
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2982
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2984
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Landroid/view/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v9, p0, Landroid/view/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3002
    :cond_2
    :goto_5
    return-void

    .line 2934
    .end local v1    # "resolvedGravity":I
    .end local v2    # "resolvedHeight":I
    .end local v3    # "resolvedWidth":I
    .end local v4    # "show":Z
    .end local v5    # "view":Landroid/view/View;
    .end local v7    # "visibilityChanged":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .restart local v4    # "show":Z
    .restart local v5    # "view":Landroid/view/View;
    .restart local v7    # "visibilityChanged":Z
    :cond_4
    move/from16 v2, p4

    .line 2943
    goto :goto_1

    .line 2944
    .restart local v2    # "resolvedHeight":I
    :cond_5
    const/4 v3, -0x1

    goto :goto_2

    .line 2945
    .restart local v3    # "resolvedWidth":I
    :cond_6
    iget v1, p1, Landroid/view/PhoneWindow$ColorViewState;->verticalGravity:I

    goto :goto_3

    .line 2961
    .restart local v1    # "resolvedGravity":I
    :cond_7
    if-eqz v4, :cond_a

    const/4 v6, 0x0

    .line 2962
    .local v6, "vis":I
    :goto_6
    iget v8, p1, Landroid/view/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v8, v6, :cond_b

    const/4 v7, 0x1

    .line 2963
    :goto_7
    iput v6, p1, Landroid/view/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 2964
    if-eqz v4, :cond_0

    .line 2965
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2966
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v8, v2, :cond_8

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v8, v3, :cond_8

    iget v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v8, v1, :cond_9

    .line 2968
    :cond_8
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2969
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2970
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2971
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2973
    :cond_9
    invoke-virtual {v5, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 2961
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "vis":I
    :cond_a
    const/4 v6, 0x4

    goto :goto_6

    .line 2962
    .restart local v6    # "vis":I
    :cond_b
    const/4 v7, 0x0

    goto :goto_7

    .line 2987
    .end local v6    # "vis":I
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Landroid/view/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v9, p0, Landroid/view/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Landroid/view/PhoneWindow$DecorView$2;

    invoke-direct {v9, p0, p1}, Landroid/view/PhoneWindow$DecorView$2;-><init>(Landroid/view/PhoneWindow$DecorView;Landroid/view/PhoneWindow$ColorViewState;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_5

    .line 2998
    :cond_d
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2999
    if-eqz v4, :cond_e

    const/4 v8, 0x0

    :goto_8
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_e
    const/4 v8, 0x4

    goto :goto_8
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3007
    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3008
    .local v0, "rootScrollY":I
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->mStatusColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v1, v1, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3009
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->mStatusColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v3, v1, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_3

    int-to-float v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3011
    :cond_0
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v1, v1, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3012
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v1, v1, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_1

    int-to-float v2, v0

    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3014
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 3009
    goto :goto_0
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 17
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 2838
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 2839
    .local v8, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    move-result v2

    or-int v3, v1, v2

    .line 2841
    .local v3, "sysUiVisibility":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mIsFloating:Z
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1600(Landroid/view/PhoneWindow;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2842
    invoke-virtual/range {p0 .. p0}, Landroid/view/PhoneWindow$DecorView;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v12, 0x1

    .line 2843
    .local v12, "disallowAnimate":Z
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastWindowFlags:I

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v1, v2

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v12, v1

    .line 2845
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2847
    if-eqz p1, :cond_0

    .line 2848
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2850
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2852
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2858
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v15, 0x1

    .line 2859
    .local v15, "hasTopStableInset":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    if-eq v15, v1, :cond_9

    const/4 v1, 0x1

    :goto_3
    or-int/2addr v12, v1

    .line 2860
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2862
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v13, 0x1

    .line 2863
    .local v13, "hasBottomStableInset":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    if-eq v13, v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    or-int/2addr v12, v1

    .line 2864
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/view/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2866
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v14, 0x1

    .line 2867
    .local v14, "hasRightStableInset":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    if-eq v14, v1, :cond_d

    const/4 v1, 0x1

    :goto_7
    or-int/2addr v12, v1

    .line 2868
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/PhoneWindow$DecorView;->mLastHasRightStableInset:Z

    .line 2871
    .end local v13    # "hasBottomStableInset":Z
    .end local v14    # "hasRightStableInset":Z
    .end local v15    # "hasTopStableInset":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/PhoneWindow$DecorView;->mStatusColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mStatusBarColor:I
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1700(Landroid/view/PhoneWindow;)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/PhoneWindow$DecorView;->mLastTopInset:I

    const/4 v6, 0x0

    if-eqz p2, :cond_e

    if-nez v12, :cond_e

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/PhoneWindow$DecorView;->updateColorViewInt(Landroid/view/PhoneWindow$ColorViewState;IIIZZ)V

    .line 2874
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastBottomInset:I

    if-nez v1, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/PhoneWindow$DecorView;->mLastRightInset:I

    if-lez v1, :cond_f

    const/4 v6, 0x1

    .line 2875
    .local v6, "navBarToRightEdge":Z
    :goto_9
    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2876
    .local v5, "navBarSize":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/PhoneWindow$DecorView;->mNavigationColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mNavigationBarColor:I
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1800(Landroid/view/PhoneWindow;)I

    move-result v4

    if-eqz p2, :cond_11

    if-nez v12, :cond_11

    const/4 v7, 0x1

    :goto_b
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/view/PhoneWindow$DecorView;->updateColorViewInt(Landroid/view/PhoneWindow$ColorViewState;IIIZZ)V

    .line 2884
    .end local v5    # "navBarSize":I
    .end local v6    # "navBarToRightEdge":Z
    .end local v12    # "disallowAnimate":Z
    :cond_1
    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    and-int/lit16 v1, v3, 0x200

    if-nez v1, :cond_12

    and-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_12

    const/4 v11, 0x1

    .line 2889
    .local v11, "consumingNavBar":Z
    :goto_c
    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2890
    .local v10, "consumedRight":I
    :goto_d
    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2892
    .local v9, "consumedBottom":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$600(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$600(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    .line 2894
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$600(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2895
    .local v16, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v1, v10, :cond_2

    move-object/from16 v0, v16

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, v9, :cond_3

    .line 2896
    :cond_2
    move-object/from16 v0, v16

    iput v10, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2897
    move-object/from16 v0, v16

    iput v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2898
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$600(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2900
    if-nez p1, :cond_3

    .line 2903
    invoke-virtual/range {p0 .. p0}, Landroid/view/PhoneWindow$DecorView;->requestApplyInsets()V

    .line 2906
    :cond_3
    if-eqz p1, :cond_4

    .line 2907
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v7

    sub-int/2addr v7, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v7}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2915
    .end local v16    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_4
    if-eqz p1, :cond_5

    .line 2916
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 2918
    :cond_5
    return-object p1

    .line 2842
    .end local v9    # "consumedBottom":I
    .end local v10    # "consumedRight":I
    .end local v11    # "consumingNavBar":Z
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2843
    .restart local v12    # "disallowAnimate":Z
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2858
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2859
    .restart local v15    # "hasTopStableInset":Z
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 2862
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 2863
    .restart local v13    # "hasBottomStableInset":Z
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 2866
    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 2867
    .restart local v14    # "hasRightStableInset":Z
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 2871
    .end local v13    # "hasBottomStableInset":Z
    .end local v14    # "hasRightStableInset":Z
    .end local v15    # "hasTopStableInset":Z
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 2874
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 2875
    .restart local v6    # "navBarToRightEdge":Z
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/PhoneWindow$DecorView;->mLastBottomInset:I

    goto/16 :goto_a

    .line 2876
    .restart local v5    # "navBarSize":I
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 2884
    .end local v5    # "navBarSize":I
    .end local v6    # "navBarToRightEdge":Z
    .end local v12    # "disallowAnimate":Z
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_c

    .line 2889
    .restart local v11    # "consumingNavBar":Z
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 2890
    .restart local v10    # "consumedRight":I
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_e
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .locals 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3088
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_1

    .line 3090
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$700(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3091
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$700(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 3092
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$700(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3094
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3095
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$700(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3099
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_2

    .line 3100
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    .line 3101
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3103
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v3, v3, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    const v7, 0x800053

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3113
    :cond_1
    :goto_0
    return-void

    .line 3108
    :cond_2
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3109
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3110
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 13
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3017
    const/4 v6, 0x0

    .line 3019
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_3

    .line 3020
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_3

    .line 3022
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3024
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 3025
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3026
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$1900(Landroid/view/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_0

    .line 3027
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/view/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/view/PhoneWindow;->access$1902(Landroid/view/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3029
    :cond_0
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$1900(Landroid/view/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3033
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$700(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 3034
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3035
    .local v3, "newMargin":I
    :goto_0
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_1

    .line 3036
    const/4 v2, 0x1

    .line 3037
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3039
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_6

    .line 3040
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    .line 3041
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3043
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mStatusColorViewState:Landroid/view/PhoneWindow$ColorViewState;

    iget-object v8, v8, Landroid/view/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/view/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v12, 0x800033

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3058
    :cond_1
    :goto_1
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_7

    const/4 v6, 0x1

    .line 3064
    :goto_2
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # invokes: Landroid/view/PhoneWindow;->getLocalFeatures()I
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$2000(Landroid/view/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_8

    const/4 v4, 0x1

    .line 3066
    .local v4, "nonOverlay":Z
    :goto_3
    const/4 v8, 0x0

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v7, v9, v10}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3075
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    .line 3076
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3080
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_3
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 3081
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_b

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3083
    :cond_4
    return-object p1

    .line 3034
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 3047
    .restart local v3    # "newMargin":I
    :cond_6
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3049
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_1

    .line 3050
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3051
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 3058
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 3064
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 3066
    .restart local v4    # "nonOverlay":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_4

    .line 3070
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_2

    .line 3071
    const/4 v2, 0x1

    .line 3072
    const/4 v7, 0x0

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_5

    .line 3081
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_b
    const/16 v7, 0x8

    goto :goto_6
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2371
    iget-object v3, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v3, v3, Landroid/view/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    if-eqz v3, :cond_0

    .line 2372
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2373
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v3, v3, Landroid/view/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    invoke-virtual {v3, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 2374
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 2377
    .local v2, "newInsets":Landroid/view/WindowInsets;
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    .line 2379
    .end local v0    # "bottom":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "newInsets":Landroid/view/WindowInsets;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2332
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2333
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2240
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2241
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2242
    .local v0, "action":I
    if-nez v0, :cond_1

    move v3, v5

    .line 2244
    .local v3, "isDown":Z
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_3

    .line 2247
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$800(Landroid/view/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$800(Landroid/view/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2

    .line 2248
    invoke-virtual {p0, p1}, Landroid/view/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2249
    .local v2, "handled":Z
    if-eqz v2, :cond_2

    .line 2272
    .end local v2    # "handled":Z
    :cond_0
    :goto_1
    return v5

    .end local v3    # "isDown":Z
    :cond_1
    move v3, v6

    .line 2242
    goto :goto_0

    .line 2256
    .restart local v3    # "isDown":Z
    :cond_2
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Landroid/view/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_3

    .line 2257
    iget-object v7, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Landroid/view/PhoneWindow;->performPanelShortcut(Landroid/view/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Landroid/view/PhoneWindow;->access$1000(Landroid/view/PhoneWindow;Landroid/view/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2263
    :cond_3
    iget-object v6, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v6}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2264
    iget-object v6, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v6}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2265
    .local v1, "cb":Landroid/view/Window$Callback;
    if-eqz v1, :cond_5

    iget v6, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v6, :cond_5

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2267
    .restart local v2    # "handled":Z
    :goto_2
    if-nez v2, :cond_0

    .line 2272
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "handled":Z
    :cond_4
    if-eqz v3, :cond_6

    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget v6, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/view/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1

    .line 2265
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2

    .line 2272
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_6
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget v6, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Landroid/view/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2280
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2281
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v6, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    # invokes: Landroid/view/PhoneWindow;->performPanelShortcut(Landroid/view/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Landroid/view/PhoneWindow;->access$1000(Landroid/view/PhoneWindow;Landroid/view/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2283
    .local v1, "handled":Z
    if-eqz v1, :cond_1

    .line 2284
    iget-object v4, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2285
    iget-object v4, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Landroid/view/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2313
    :cond_0
    :goto_0
    return v3

    .line 2292
    .end local v1    # "handled":Z
    :cond_1
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2293
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_3

    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v5}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_3

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2295
    .restart local v1    # "handled":Z
    :goto_1
    if-nez v1, :cond_0

    .line 2303
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # invokes: Landroid/view/PhoneWindow;->getPanelState(IZ)Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v4}, Landroid/view/PhoneWindow;->access$1100(Landroid/view/PhoneWindow;IZ)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2304
    .local v2, "st":Landroid/view/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPreparedPanel:Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Landroid/view/PhoneWindow;->access$900(Landroid/view/PhoneWindow;)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2305
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Landroid/view/PhoneWindow;->preparePanel(Landroid/view/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2306
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Landroid/view/PhoneWindow;->performPanelShortcut(Landroid/view/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Landroid/view/PhoneWindow;->access$1000(Landroid/view/PhoneWindow;Landroid/view/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2308
    iput-boolean v4, v2, Landroid/view/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2309
    if-nez v1, :cond_0

    :cond_2
    move v3, v4

    .line 2313
    goto :goto_0

    .line 2293
    .end local v1    # "handled":Z
    .end local v2    # "st":Landroid/view/PhoneWindow$PanelFeatureState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2493
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2494
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2495
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2496
    const/4 v1, 0x1

    .line 2499
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2318
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2319
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2325
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2326
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2639
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2641
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2642
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2644
    :cond_0
    return-void
.end method

.method public finishChanging()V
    .locals 1

    .prologue
    .line 2779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/PhoneWindow$DecorView;->mChanging:Z

    .line 2780
    invoke-direct {p0}, Landroid/view/PhoneWindow$DecorView;->drawableChanged()V

    .line 2781
    return-void
.end method

.method public isTransitionGroup()Z
    .locals 1

    .prologue
    .line 2834
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2822
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2823
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2824
    invoke-direct {p0, p1}, Landroid/view/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2825
    invoke-direct {p0, p1}, Landroid/view/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    .line 2826
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2827
    invoke-direct {p0}, Landroid/view/PhoneWindow$DecorView;->drawableChanged()V

    .line 2829
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3199
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3201
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 3203
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3204
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_0

    .line 3205
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 3208
    :cond_0
    iget v1, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3216
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # invokes: Landroid/view/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$2200(Landroid/view/PhoneWindow;)V

    .line 3218
    :cond_1
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3249
    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_0

    .line 3250
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0}, Landroid/view/PhoneWindow;->closeAllPanels()V

    .line 3252
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3224
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3225
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget v2, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_0

    .line 3226
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3229
    :cond_0
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$2300(Landroid/view/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3230
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$2300(Landroid/view/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 3233
    :cond_1
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3

    .line 3234
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3235
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3236
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3238
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 3241
    :cond_3
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # invokes: Landroid/view/PhoneWindow;->getPanelState(IZ)Landroid/view/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Landroid/view/PhoneWindow;->access$1100(Landroid/view/PhoneWindow;IZ)Landroid/view/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3242
    .local v1, "st":Landroid/view/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/view/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_4

    .line 3243
    iget-object v2, v1, Landroid/view/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3245
    :cond_4
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2234
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2235
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$600(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Landroid/view/PhoneWindow;->access$700(Landroid/view/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2236
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2397
    .local v0, "action":I
    iget v3, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v3, :cond_0

    .line 2398
    if-nez v0, :cond_0

    .line 2399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2400
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2401
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Landroid/view/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2402
    iget-object v3, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget v4, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Landroid/view/PhoneWindow;->closePanel(I)V

    .line 2403
    const/4 v3, 0x1

    .line 2409
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2548
    invoke-virtual/range {p0 .. p0}, Landroid/view/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 2549
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/4 v7, 0x1

    .line 2551
    .local v7, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 2552
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2554
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 2555
    .local v2, "fixedWidth":Z
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 2556
    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/view/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2557
    .local v15, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v15, :cond_0

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2559
    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 2560
    invoke-virtual {v15, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2567
    .local v16, "w":I
    :goto_2
    if-lez v16, :cond_0

    .line 2568
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 2569
    .local v19, "widthSize":I
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2571
    const/4 v2, 0x1

    .line 2576
    .end local v15    # "tvw":Landroid/util/TypedValue;
    .end local v16    # "w":I
    .end local v19    # "widthSize":I
    :cond_0
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v5, v0, :cond_1

    .line 2577
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/view/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2578
    .local v14, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v14, :cond_1

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2580
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 2581
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v3, v0

    .line 2587
    .local v3, "h":I
    :goto_4
    if-lez v3, :cond_1

    .line 2588
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2589
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2595
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v14    # "tvh":Landroid/util/TypedValue;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 2596
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2597
    .local v11, "mode":I
    if-eqz v11, :cond_2

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 2599
    .local v12, "outset":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 2600
    .local v4, "height":I
    add-int v20, v4, v12

    move/from16 v0, v20

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2604
    .end local v4    # "height":I
    .end local v11    # "mode":I
    .end local v12    # "outset":I
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2606
    invoke-virtual/range {p0 .. p0}, Landroid/view/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v17

    .line 2607
    .local v17, "width":I
    const/4 v8, 0x0

    .line 2609
    .local v8, "measure":Z
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2611
    if-nez v2, :cond_3

    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 2612
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/view/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2613
    .local v13, "tv":Landroid/util/TypedValue;
    :goto_5
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 2615
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 2616
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 2623
    .local v10, "min":I
    :goto_6
    move/from16 v0, v17

    if-ge v0, v10, :cond_3

    .line 2624
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2625
    const/4 v8, 0x1

    .line 2632
    .end local v10    # "min":I
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_3
    if-eqz v8, :cond_4

    .line 2633
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2635
    :cond_4
    return-void

    .line 2549
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v17    # "width":I
    .end local v18    # "widthMode":I
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2556
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v7    # "isPortrait":Z
    .restart local v18    # "widthMode":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Landroid/view/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 2561
    .restart local v15    # "tvw":Landroid/util/TypedValue;
    :cond_7
    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 2562
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .restart local v16    # "w":I
    goto/16 :goto_2

    .line 2564
    .end local v16    # "w":I
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "w":I
    goto/16 :goto_2

    .line 2577
    .end local v15    # "tvw":Landroid/util/TypedValue;
    .end local v16    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/view/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 2582
    .restart local v14    # "tvh":Landroid/util/TypedValue;
    :cond_a
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 2583
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 2585
    .end local v3    # "h":I
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 2612
    .end local v3    # "h":I
    .end local v14    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v17    # "width":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Landroid/view/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_5

    .line 2617
    .restart local v13    # "tv":Landroid/util/TypedValue;
    :cond_d
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 2618
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_6

    .line 2620
    .end local v10    # "min":I
    :cond_e
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_6
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0
    .param p1, "rootScrollY"    # I

    .prologue
    .line 3277
    iput p1, p0, Landroid/view/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3278
    invoke-direct {p0}, Landroid/view/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2386
    invoke-virtual {p0, p1}, Landroid/view/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3177
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3181
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1, v2}, Landroid/view/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$800(Landroid/view/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3182
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1, v2}, Landroid/view/PhoneWindow;->closePanel(I)V

    .line 3185
    :cond_0
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3186
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1

    .line 3187
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 3189
    :cond_1
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 2817
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2818
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .prologue
    .line 2473
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2489
    :goto_0
    return-void

    .line 2480
    :cond_0
    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2485
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2487
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2797
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2798
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2799
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2801
    :cond_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 2228
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2229
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/PhoneWindow$DecorView;->setWillNotDraw(Z)V

    .line 2230
    return-void

    .line 2228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2229
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2504
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 2505
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 2506
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2507
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2509
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2510
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 2511
    iget-object v4, p0, Landroid/view/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2512
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2513
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2514
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2515
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2516
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2517
    iget-object v5, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2518
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2519
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2520
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2521
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2524
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2525
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2526
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2543
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v1
.end method

.method public setSurfaceFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 3267
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/PhoneWindow;->setFormat(I)V

    .line 3268
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 2
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3271
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0, v1}, Landroid/view/PhoneWindow;->addFlags(I)V

    .line 3273
    :goto_0
    return-void

    .line 3272
    :cond_0
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0, v1}, Landroid/view/PhoneWindow;->clearFlags(I)V

    goto :goto_0
.end method

.method public setSurfaceType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 3263
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/PhoneWindow;->setType(I)V

    .line 3264
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2784
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2785
    invoke-virtual {p0, p1}, Landroid/view/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2786
    if-eqz p1, :cond_1

    .line 2787
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2791
    :goto_0
    invoke-direct {p0}, Landroid/view/PhoneWindow$DecorView;->drawableChanged()V

    .line 2793
    :cond_0
    return-void

    .line 2789
    :cond_1
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2804
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2805
    invoke-virtual {p0, p1}, Landroid/view/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2806
    if-eqz p1, :cond_1

    .line 2807
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2811
    :goto_0
    invoke-direct {p0}, Landroid/view/PhoneWindow$DecorView;->drawableChanged()V

    .line 2813
    :cond_0
    return-void

    .line 2809
    :cond_1
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2650
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1200(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2651
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/view/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Landroid/view/PhoneWindow;->access$1202(Landroid/view/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2652
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1200(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v2, v2, Landroid/view/PhoneWindow;->mContextMenuCallback:Landroid/view/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2657
    :goto_0
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1200(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2659
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_2

    .line 2660
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v1, v1, Landroid/view/PhoneWindow;->mContextMenuCallback:Landroid/view/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2666
    :cond_0
    :goto_1
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # setter for: Landroid/view/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Landroid/view/PhoneWindow;->access$1302(Landroid/view/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2667
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 2654
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_1
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1200(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_0

    .line 2661
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_2
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1300(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2664
    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    # getter for: Landroid/view/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Landroid/view/PhoneWindow;->access$1300(Landroid/view/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_1

    .line 2667
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 14
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2680
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_0

    .line 2681
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->finish()V

    .line 2684
    :cond_0
    new-instance v7, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;

    invoke-direct {v7, p0, p1}, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Landroid/view/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2685
    .local v7, "wrappedCallback":Landroid/view/ActionMode$Callback;
    const/4 v4, 0x0

    .line 2686
    .local v4, "mode":Landroid/view/ActionMode;
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2688
    :try_start_0
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2693
    :cond_1
    :goto_0
    if-eqz v4, :cond_4

    .line 2694
    iput-object v4, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2764
    :cond_2
    :goto_1
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2766
    :try_start_1
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    iget-object v9, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v8, v9}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 2771
    :cond_3
    :goto_2
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v8

    .line 2696
    :cond_4
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v8, :cond_5

    .line 2697
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v8}, Landroid/view/PhoneWindow;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2699
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 2700
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 2701
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v8, 0x1010431

    invoke-virtual {v2, v8, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2704
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    .line 2705
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2706
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2707
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2709
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2710
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2715
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_3
    new-instance v8, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2716
    new-instance v8, Landroid/widget/PopupWindow;

    const v11, 0x1160019

    invoke-direct {v8, v0, v13, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2718
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2720
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2721
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2723
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v11, 0x10102eb

    invoke-virtual {v8, v11, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2725
    iget v8, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 2727
    .local v3, "height":I
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2728
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, -0x2

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2729
    new-instance v8, Landroid/view/PhoneWindow$DecorView$1;

    invoke-direct {v8, p0}, Landroid/view/PhoneWindow$DecorView$1;-><init>(Landroid/view/PhoneWindow$DecorView;)V

    iput-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 2745
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_5
    :goto_4
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_2

    .line 2746
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2747
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    .end local v4    # "mode":Landroid/view/ActionMode;
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_9

    move v8, v9

    :goto_5
    invoke-direct {v4, v11, v12, v7, v8}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2749
    .restart local v4    # "mode":Landroid/view/ActionMode;
    invoke-virtual {v4}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v4, v8}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2750
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 2751
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2752
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2753
    iput-object v4, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2754
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_6

    .line 2755
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Landroid/view/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 2757
    :cond_6
    iget-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_1

    .line 2712
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_7
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_3

    .line 2737
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_8
    const v8, 0x1020375

    invoke-virtual {p0, v8}, Landroid/view/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 2739
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_5

    .line 2740
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v8, p0, Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_4

    .end local v4    # "mode":Landroid/view/ActionMode;
    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_9
    move v8, v10

    .line 2747
    goto :goto_5

    .line 2760
    .restart local v4    # "mode":Landroid/view/ActionMode;
    :cond_a
    iput-object v13, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_1

    .line 2767
    :catch_0
    move-exception v8

    goto/16 :goto_2

    .line 2689
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2675
    invoke-virtual {p0, p2}, Landroid/view/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .locals 1

    .prologue
    .line 2775
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/PhoneWindow$DecorView;->mChanging:Z

    .line 2776
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2366
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2340
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2342
    .local v0, "action":I
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 2343
    if-ne v0, v1, :cond_0

    .line 2344
    iget-object v2, p0, Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2350
    .end local v0    # "action":I
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2354
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2358
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2362
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .locals 3

    .prologue
    .line 3192
    invoke-virtual {p0}, Landroid/view/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3193
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 3195
    return-void

    .line 3193
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    .prologue
    .line 3259
    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v0, v0, Landroid/view/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    .prologue
    .line 3255
    iget v0, p0, Landroid/view/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    iget-object v0, v0, Landroid/view/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

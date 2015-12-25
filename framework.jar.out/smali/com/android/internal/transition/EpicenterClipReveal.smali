.class public Lcom/android/internal/transition/EpicenterClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;
    }
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"


# instance fields
.field private final mCenterClipBounds:Z

.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 53
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mCenterClipBounds:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    sget-object v3, Lcom/android/internal/R$styleable;->EpicenterClipReveal:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mCenterClipBounds:Z

    .line 65
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 66
    .local v1, "interpolatorX":I
    if-eqz v1, :cond_0

    .line 67
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 72
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 73
    .local v2, "interpolatorY":I
    if-eqz v2, :cond_1

    .line 74
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 79
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    .line 69
    .end local v2    # "interpolatorY":I
    :cond_0
    sget-object v3, Lcom/android/internal/transition/TransitionConstants;->LINEAR_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 76
    .restart local v2    # "interpolatorY":I
    :cond_1
    sget-object v3, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v3, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v5, 0x0

    .line 95
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 96
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 101
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    if-nez v1, :cond_0

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 105
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # Landroid/graphics/Rect;
    .param p2, "end"    # Landroid/graphics/Rect;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;
    .param p4, "interpolatorX"    # Landroid/animation/TimeInterpolator;
    .param p5, "interpolatorY"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 169
    new-instance v3, Landroid/animation/RectEvaluator;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v7}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 170
    .local v3, "evaluator":Landroid/animation/RectEvaluator;
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:clip"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 172
    .local v6, "terminalClip":Landroid/graphics/Rect;
    new-instance v4, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;

    const/16 v7, 0x78

    invoke-direct {v4, v7}, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;-><init>(C)V

    .line 173
    .local v4, "propX":Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/Rect;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {p0, v4, v3, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 174
    .local v1, "animX":Landroid/animation/ObjectAnimator;
    if-eqz p4, :cond_0

    .line 175
    invoke-virtual {v1, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    :cond_0
    new-instance v5, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;

    const/16 v7, 0x79

    invoke-direct {v5, v7}, Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;-><init>(C)V

    .line 179
    .local v5, "propY":Lcom/android/internal/transition/EpicenterClipReveal$ClipDimenProperty;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/Rect;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {p0, v5, v3, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 180
    .local v2, "animY":Landroid/animation/ObjectAnimator;
    if-eqz p5, :cond_1

    .line 181
    invoke-virtual {v2, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 185
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 186
    new-instance v7, Lcom/android/internal/transition/EpicenterClipReveal$1;

    invoke-direct {v7, p0, v6}, Lcom/android/internal/transition/EpicenterClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    return-object v0
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 159
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 160
    .local v0, "clipRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 161
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 163
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    .line 143
    .local v2, "epicenter":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    .line 145
    iget-boolean v5, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mCenterClipBounds:Z

    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    sub-int v3, v5, v6

    .line 147
    .local v3, "offsetX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v4, v5, v6

    .line 148
    .local v4, "offsetY":I
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 155
    .end local v2    # "epicenter":Landroid/graphics/Rect;
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    :cond_0
    :goto_0
    return-object v2

    .line 153
    .restart local v2    # "epicenter":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 154
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 155
    .local v1, "centerY":I
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "epicenter":Landroid/graphics/Rect;
    invoke-direct {v2, v0, v1, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 92
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 86
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 112
    if-nez p4, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/internal/transition/EpicenterClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v2

    .line 117
    .local v2, "end":Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Lcom/android/internal/transition/EpicenterClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 120
    .local v1, "start":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 122
    iget-object v4, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v5, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/transition/EpicenterClipReveal;->createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 128
    if-nez p3, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/transition/EpicenterClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v1

    .line 133
    .local v1, "start":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/internal/transition/EpicenterClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 136
    .local v2, "end":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 138
    iget-object v4, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v5, p0, Lcom/android/internal/transition/EpicenterClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move-object v0, p2

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/transition/EpicenterClipReveal;->createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

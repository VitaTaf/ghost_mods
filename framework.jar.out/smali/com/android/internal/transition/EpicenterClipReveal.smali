.class public Lcom/android/internal/transition/EpicenterClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterClipReveal.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v5, 0x0

    .line 58
    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 59
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 64
    .local v1, "clip":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    if-nez v1, :cond_0

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Landroid/graphics/Rect;
    .param p3, "end"    # Landroid/graphics/Rect;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 125
    iget-object v3, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 126
    .local v2, "terminalClip":Landroid/graphics/Rect;
    new-instance v1, Landroid/animation/RectEvaluator;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v3}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 127
    .local v1, "evaluator":Landroid/animation/RectEvaluator;
    const-string v3, "clipBounds"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {p1, v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 128
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/internal/transition/EpicenterClipReveal$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/internal/transition/EpicenterClipReveal$1;-><init>(Lcom/android/internal/transition/EpicenterClipReveal;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 134
    return-object v0
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 116
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:clip"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 117
    .local v0, "clipRect":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 118
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 120
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    .line 106
    .local v2, "epicenter":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 112
    .end local v2    # "epicenter":Landroid/graphics/Rect;
    :goto_0
    return-object v2

    .line 110
    .restart local v2    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 111
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 112
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
    .line 53
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 55
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    .line 49
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 75
    if-nez p4, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 85
    :goto_0
    return-object v2

    .line 79
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/internal/transition/EpicenterClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v0

    .line 80
    .local v0, "end":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/android/internal/transition/EpicenterClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    .local v1, "start":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 85
    invoke-direct {p0, p2, v1, v0, p4}, Lcom/android/internal/transition/EpicenterClipReveal;->createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 91
    if-nez p3, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 101
    :goto_0
    return-object v2

    .line 95
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/transition/EpicenterClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v1

    .line 96
    .local v1, "start":Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Lcom/android/internal/transition/EpicenterClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 99
    .local v0, "end":Landroid/graphics/Rect;
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 101
    invoke-direct {p0, p2, v1, v0, p4}, Lcom/android/internal/transition/EpicenterClipReveal;->createRectAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0
.end method

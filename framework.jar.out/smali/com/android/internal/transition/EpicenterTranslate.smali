.class public Lcom/android/internal/transition/EpicenterTranslate;
.super Landroid/transition/Visibility;
.source "EpicenterTranslate.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 53
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 54
    iput-object v0, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    sget-object v4, Lcom/android/internal/R$styleable;->EpicenterTranslate:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 64
    .local v1, "interpolatorX":I
    if-eqz v1, :cond_0

    .line 65
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    .line 70
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 71
    .local v2, "interpolatorY":I
    if-eqz v2, :cond_1

    .line 72
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    .line 77
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 78
    .local v3, "interpolatorZ":I
    if-eqz v3, :cond_2

    .line 79
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    .line 84
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void

    .line 67
    .end local v2    # "interpolatorY":I
    .end local v3    # "interpolatorZ":I
    :cond_0
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 74
    .restart local v2    # "interpolatorY":I
    :cond_1
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1

    .line 81
    .restart local v3    # "interpolatorZ":I
    :cond_2
    sget-object v4, Lcom/android/internal/transition/TransitionConstants;->FAST_OUT_SLOW_IN:Landroid/animation/TimeInterpolator;

    iput-object v4, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_2
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 101
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateY"

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateZ"

    invoke-virtual {v1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-virtual {v1}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static createAnimator(Landroid/view/View;FFFFFFLandroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "startZ"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "endZ"    # F
    .param p7, "interpolatorX"    # Landroid/animation/TimeInterpolator;
    .param p8, "interpolatorY"    # Landroid/animation/TimeInterpolator;
    .param p9, "interpolatorZ"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 172
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p1, v6, v7

    const/4 v7, 0x1

    aput p4, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 173
    .local v2, "animX":Landroid/animation/ObjectAnimator;
    if-eqz p7, :cond_0

    .line 174
    invoke-virtual {v2, p7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    :cond_0
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p2, v6, v7

    const/4 v7, 0x1

    aput p5, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 178
    .local v3, "animY":Landroid/animation/ObjectAnimator;
    if-eqz p8, :cond_1

    .line 179
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 182
    :cond_1
    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p3, v6, v7

    const/4 v7, 0x1

    aput p6, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 183
    .local v4, "animZ":Landroid/animation/ObjectAnimator;
    if-eqz p9, :cond_2

    .line 184
    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    :cond_2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 188
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    return-object v1
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "bestRect"    # Landroid/graphics/Rect;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/transition/EpicenterTranslate;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    .line 160
    .local v2, "epicenter":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 166
    .end local v2    # "epicenter":Landroid/graphics/Rect;
    :goto_0
    return-object v2

    .line 164
    .restart local v2    # "epicenter":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 165
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 166
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
    .line 95
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslate;->captureValues(Landroid/transition/TransitionValues;)V

    .line 97
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/transition/EpicenterTranslate;->captureValues(Landroid/transition/TransitionValues;)V

    .line 91
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 116
    if-nez p4, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    .line 120
    :cond_0
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:bounds"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    .line 121
    .local v11, "end":Landroid/graphics/Rect;
    invoke-direct {p0, v11}, Lcom/android/internal/transition/EpicenterTranslate;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 122
    .local v12, "start":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v2, v1

    .line 123
    .local v2, "startX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v3, v1

    .line 124
    .local v3, "startY":F
    const/4 v8, 0x0

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:z"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v4, v8, v1

    .line 127
    .local v4, "startZ":F
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 128
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 129
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 131
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateX"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 132
    .local v5, "endX":F
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateY"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 133
    .local v6, "endY":F
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateZ"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 134
    .local v7, "endZ":F
    iget-object v8, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v9, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v10, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object v1, p2

    invoke-static/range {v1 .. v10}, Lcom/android/internal/transition/EpicenterTranslate;->createAnimator(Landroid/view/View;FFFFFFLandroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 13
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 141
    if-nez p3, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    .line 145
    :cond_0
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:bounds"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 146
    .local v12, "start":Landroid/graphics/Rect;
    invoke-direct {p0, v12}, Lcom/android/internal/transition/EpicenterTranslate;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 147
    .local v11, "end":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v5, v1

    .line 148
    .local v5, "endX":F
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    sub-int/2addr v1, v8

    int-to-float v6, v1

    .line 149
    .local v6, "endY":F
    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v9, "android:epicenterReveal:z"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v7, v8, v1

    .line 151
    .local v7, "endZ":F
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateX"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 152
    .local v2, "startX":F
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateY"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 153
    .local v3, "startY":F
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:epicenterReveal:translateZ"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 154
    .local v4, "startZ":F
    iget-object v8, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v9, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iget-object v10, p0, Lcom/android/internal/transition/EpicenterTranslate;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object v1, p2

    invoke-static/range {v1 .. v10}, Lcom/android/internal/transition/EpicenterTranslate;->createAnimator(Landroid/view/View;FFFFFFLandroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0
.end method

.class public Lcom/android/systemui/recents/misc/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static sPropertyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 36
    :try_start_0
    const-string v2, "android.view.GLES20Canvas"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "setProperty"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    .line 38
    sget-object v2, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 179
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 181
    :cond_0
    return-void
.end method

.method public static computeContrastBetweenColors(II)F
    .locals 12
    .param p0, "bg"    # I
    .param p1, "fg"    # I

    .prologue
    .line 136
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v3, v8, v9

    .line 137
    .local v3, "bgR":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v1, v8, v9

    .line 138
    .local v1, "bgG":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v0, v8, v9

    .line 139
    .local v0, "bgB":F
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v3, v8

    if-gez v8, :cond_0

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v3, v8

    .line 140
    :goto_0
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v1, v8

    .line 141
    :goto_1
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v0, v8

    .line 142
    :goto_2
    const v8, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v8, v3

    const v9, 0x3f371759    # 0.7152f

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    const v9, 0x3d93dd98    # 0.0722f

    mul-float/2addr v9, v0

    add-float v2, v8, v9

    .line 144
    .local v2, "bgL":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v7, v8, v9

    .line 145
    .local v7, "fgR":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v5, v8, v9

    .line 146
    .local v5, "fgG":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v4, v8, v9

    .line 147
    .local v4, "fgB":F
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v7, v8

    if-gez v8, :cond_3

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v7, v8

    .line 148
    :goto_3
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v5, v8

    .line 149
    :goto_4
    const v8, 0x3d20e411    # 0.03928f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_5

    const v8, 0x414eb852    # 12.92f

    div-float/2addr v4, v8

    .line 150
    :goto_5
    const v8, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v8, v7

    const v9, 0x3f371759    # 0.7152f

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    const v9, 0x3d93dd98    # 0.0722f

    mul-float/2addr v9, v4

    add-float v6, v8, v9

    .line 152
    .local v6, "fgL":F
    const v8, 0x3d4ccccd    # 0.05f

    add-float/2addr v8, v6

    const v9, 0x3d4ccccd    # 0.05f

    add-float/2addr v9, v2

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    return v8

    .line 139
    .end local v2    # "bgL":F
    .end local v4    # "fgB":F
    .end local v5    # "fgG":F
    .end local v6    # "fgL":F
    .end local v7    # "fgR":F
    :cond_0
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v3

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v3, v8

    goto/16 :goto_0

    .line 140
    :cond_1
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v1

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v1, v8

    goto/16 :goto_1

    .line 141
    :cond_2
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v0

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    goto/16 :goto_2

    .line 147
    .restart local v2    # "bgL":F
    .restart local v4    # "fgB":F
    .restart local v5    # "fgG":F
    .restart local v7    # "fgR":F
    :cond_3
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v7

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    goto/16 :goto_3

    .line 148
    :cond_4
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v5

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    goto/16 :goto_4

    .line 149
    :cond_5
    const v8, 0x3d6147ae    # 0.055f

    add-float/2addr v8, v4

    const v9, 0x3f870a3d    # 1.055f

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v4, v8

    goto/16 :goto_5
.end method

.method public static getColorWithOverlay(IIF)I
    .locals 5
    .param p0, "baseColor"    # I
    .param p1, "overlayColor"    # I
    .param p2, "overlayAlpha"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 157
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v1, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float v2, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float v3, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F
    .locals 11
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "includeRootScroll"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x2

    new-array v3, v7, [F

    aget v7, p2, v9

    aput v7, v3, v9

    aget v7, p2, v10

    aput v7, v3, v10

    .line 67
    .local v3, "pt":[F
    move-object v5, p0

    .line 68
    .local v5, "v":Landroid/view/View;
    :goto_0
    if-eq v5, p1, :cond_0

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .end local v5    # "v":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "v":Landroid/view/View;
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    .local v4, "scale":F
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 76
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 80
    .local v6, "v0":Landroid/view/View;
    if-ne v6, p0, :cond_1

    if-eqz p3, :cond_2

    .line 81
    :cond_1
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v9

    .line 82
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v10

    .line 85
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 86
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v9

    .line 87
    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v10

    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v6    # "v0":Landroid/view/View;
    :cond_3
    aget v7, v3, v9

    aput v7, p2, v9

    .line 92
    aget v7, v3, v10

    aput v7, p2, v10

    .line 93
    return v4
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[FLandroid/graphics/Matrix;)F
    .locals 12
    .param p0, "descendant"    # Landroid/view/View;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "coord"    # [F
    .param p3, "tmpInverseMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "ancestorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x2

    new-array v5, v8, [F

    aget v8, p2, v10

    aput v8, v5, v10

    aget v8, p2, v11

    aput v8, v5, v11

    .line 103
    .local v5, "pt":[F
    move-object v7, p0

    .line 104
    .local v7, "v":Landroid/view/View;
    :goto_0
    if-eq v7, p1, :cond_0

    .line 105
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .end local v7    # "v":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .restart local v7    # "v":Landroid/view/View;
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/high16 v6, 0x3f800000    # 1.0f

    .line 111
    .local v6, "scale":F
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 112
    .local v2, "count":I
    sget-object v8, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 113
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 115
    .local v0, "ancestor":Landroid/view/View;
    if-lez v3, :cond_2

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v4, v8

    .line 117
    .local v4, "next":Landroid/view/View;
    :goto_2
    aget v8, v5, v10

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v5, v10

    .line 118
    aget v8, v5, v11

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v5, v11

    .line 120
    if-eqz v4, :cond_1

    .line 121
    aget v8, v5, v10

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v5, v10

    .line 122
    aget v8, v5, v11

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v5, v11

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 124
    invoke-virtual {p3, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    .line 113
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 115
    .end local v4    # "next":Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 129
    .end local v0    # "ancestor":Landroid/view/View;
    :cond_3
    aget v8, v5, v10

    aput v8, p2, v10

    .line 130
    aget v8, v5, v11

    aput v8, p2, v11

    .line 131
    return v6
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 5
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 48
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 50
    .local v0, "cx":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 51
    .local v1, "cy":I
    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 52
    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 53
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 54
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 55
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 58
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    :cond_0
    return-void
.end method

.method public static setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 169
    sget-object v0, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

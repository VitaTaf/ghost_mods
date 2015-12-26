.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$1;,
        Landroid/graphics/drawable/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final MASK_CONTENT:I = 0x1

.field private static final MASK_EXPLICIT:I = 0x2

.field private static final MASK_NONE:I = 0x0

.field private static final MASK_UNKNOWN:I = -0x1

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:F

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/Ripple;

.field private mExitingRipplesCount:I

.field private mHasPending:Z

.field private mHasValidMask:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMaskMatrix:Landroid/graphics/Matrix;

.field private mMaskShader:Landroid/graphics/BitmapShader;

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Landroid/graphics/drawable/Ripple;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 12
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .param p2, "content"    # Landroid/graphics/drawable/Drawable;
    .param p3, "mask"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 185
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    .line 192
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 195
    :cond_1
    if-eqz p3, :cond_2

    .line 196
    const v7, 0x102002e

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 199
    :cond_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 200
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 201
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 202
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 992
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    .line 993
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 994
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 996
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNum:I

    if-lez v0, :cond_0

    .line 997
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    .line 1000
    :cond_0
    if-eqz p2, :cond_1

    .line 1001
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    .line 1004
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 1005
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/drawable/RippleDrawable$RippleState;
    .param p2, "x1"    # Landroid/content/res/Resources;
    .param p3, "x2"    # Landroid/graphics/drawable/RippleDrawable$1;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private cancelExitingRipples()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 221
    const/4 v2, 0x0

    .line 223
    .local v2, "needsDraw":Z
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 224
    .local v0, "count":I
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 225
    .local v3, "ripples":[Landroid/graphics/drawable/Ripple;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 226
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Ripple;->isHardwareAnimating()Z

    move-result v4

    or-int/2addr v2, v4

    .line 227
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    if-eqz v3, :cond_1

    .line 231
    const/4 v4, 0x0

    invoke-static {v3, v5, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 233
    :cond_1
    iput v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 235
    return v2
.end method

.method private clearHotspots()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 568
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->cancel()V

    .line 570
    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 571
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    .line 576
    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 577
    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    .line 580
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()Z

    .line 581
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 582
    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 796
    .local v1, "active":Landroid/graphics/drawable/Ripple;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 797
    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    move-object/from16 v0, p0

    iget v4, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 798
    .local v4, "count":I
    if-nez v1, :cond_1

    if-gtz v4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v13

    if-nez v13, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    .line 804
    .local v11, "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v12

    .line 805
    .local v12, "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 807
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    .line 810
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v13, :cond_2

    .line 811
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    neg-float v14, v11

    neg-float v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 812
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v14}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 817
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v13, v13, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v14

    const/high16 v15, -0x1000000

    invoke-virtual {v13, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 818
    .local v3, "color":I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    shl-int/lit8 v6, v13, 0x18

    .line 819
    .local v6, "halfAlpha":I
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v9

    .line 821
    .local v9, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v13, :cond_4

    .line 825
    const/high16 v13, -0x1000000

    or-int v5, v3, v13

    .line 826
    .local v5, "fullAlphaColor":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v13, v5}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 828
    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 838
    .end local v5    # "fullAlphaColor":I
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 839
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 842
    :cond_3
    if-lez v4, :cond_5

    .line 843
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 844
    .local v10, "ripples":[Landroid/graphics/drawable/Ripple;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_5

    .line 845
    aget-object v13, v10, v8

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 844
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 832
    .end local v8    # "i":I
    .end local v10    # "ripples":[Landroid/graphics/drawable/Ripple;
    :cond_4
    const v13, 0xffffff

    and-int/2addr v13, v3

    or-int v7, v13, v6

    .line 833
    .local v7, "halfAlphaColor":I
    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 834
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 835
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 849
    .end local v7    # "halfAlphaColor":I
    :cond_5
    if-eqz v1, :cond_6

    .line 850
    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v9}, Landroid/graphics/drawable/Ripple;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    .line 853
    :cond_6
    neg-float v13, v11

    neg-float v14, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 785
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 786
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 787
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 788
    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_0

    .line 789
    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 787
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_1
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 857
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 858
    return-void
.end method

.method private getMaskType()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 725
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-nez v5, :cond_1

    iget v5, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v5, :cond_1

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleBackground;->shouldDraw()Z

    move-result v5

    if-nez v5, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v3

    .line 731
    :cond_1
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 732
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-ne v5, v3, :cond_2

    move v3, v4

    .line 734
    goto :goto_0

    .line 736
    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    .line 741
    :cond_3
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 742
    .local v0, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 743
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 744
    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    if-eq v5, v3, :cond_4

    .line 745
    const/4 v3, 0x1

    goto :goto_0

    .line 743
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v3, v4

    .line 750
    goto :goto_0
.end method

.method private getRippleIndex(Landroid/graphics/drawable/Ripple;)I
    .locals 4
    .param p1, "ripple"    # Landroid/graphics/drawable/Ripple;

    .prologue
    .line 773
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 774
    .local v2, "ripples":[Landroid/graphics/drawable/Ripple;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 775
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 776
    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    .line 780
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 775
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 862
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    .line 863
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 864
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 866
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private onHotspotBoundsChanged()V
    .locals 4

    .prologue
    .line 602
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 603
    .local v0, "count":I
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 604
    .local v2, "ripples":[Landroid/graphics/drawable/Ripple;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 605
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->onHotspotBoundsChanged()V

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v3, :cond_1

    .line 609
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v3}, Landroid/graphics/drawable/Ripple;->onHotspotBoundsChanged()V

    .line 612
    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v3, :cond_2

    .line 613
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    .line 615
    :cond_2
    return-void
.end method

.method private setBackgroundActive(ZZ)V
    .locals 1
    .param p1, "active"    # Z
    .param p2, "focused"    # Z

    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_0

    .line 297
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    .line 298
    if-eqz p1, :cond_1

    .line 299
    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundExit()V

    goto :goto_0
.end method

.method private setRippleActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_0

    .line 286
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    .line 287
    if-eqz p1, :cond_1

    .line 288
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_0
.end method

.method private setTargetDensity(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 448
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 449
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    .line 450
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 452
    :cond_0
    return-void
.end method

.method private tryBackgroundEnter(Z)V
    .locals 3
    .param p1, "focused"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleBackground;->setup(IF)V

    .line 509
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleBackground;->enter(Z)V

    .line 510
    return-void
.end method

.method private tryBackgroundExit()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    .line 517
    :cond_0
    return-void
.end method

.method private tryRippleEnter()V
    .locals 5

    .prologue
    .line 524
    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 546
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-nez v2, :cond_1

    .line 533
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v2, :cond_2

    .line 534
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 535
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 536
    .local v0, "x":F
    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 541
    .local v1, "y":F
    :goto_1
    new-instance v2, Landroid/graphics/drawable/Ripple;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-direct {v2, p0, v3, v0, v1}, Landroid/graphics/drawable/Ripple;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FF)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 544
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    iget v4, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Ripple;->setup(IF)V

    .line 545
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v2}, Landroid/graphics/drawable/Ripple;->enter()V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 539
    .restart local v0    # "x":F
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .restart local v1    # "y":F
    goto :goto_1
.end method

.method private tryRippleExit()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    if-nez v0, :cond_0

    .line 555
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Ripple;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 557
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    aput-object v2, v0, v1

    .line 558
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->exit()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    .line 561
    :cond_1
    return-void
.end method

.method private updateLocalState()V
    .locals 1

    .prologue
    .line 1009
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 1010
    return-void
.end method

.method private updateMaskShaderIfNeeded()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 665
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v2, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v1

    .line 670
    .local v1, "maskType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 674
    iput-boolean v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 676
    if-nez v1, :cond_3

    .line 677
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 680
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    .line 681
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 683
    :cond_2
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 684
    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    .line 689
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 690
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 693
    :cond_4
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 694
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 697
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    .line 699
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    .line 701
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 706
    :goto_1
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_8

    .line 707
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    .line 712
    :goto_2
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v2, :cond_6

    .line 713
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 717
    :cond_6
    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 718
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 703
    :cond_7
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_1

    .line 709
    :cond_8
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    goto :goto_2

    .line 719
    :cond_9
    if-ne v1, v7, :cond_0

    .line 720
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 421
    .local v1, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    .line 424
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    .line 426
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 427
    .local v0, "color":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 428
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 431
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 432
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 437
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 458
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 459
    .local v2, "state":Landroid/graphics/drawable/RippleDrawable$RippleState;
    if-nez v2, :cond_0

    .line 480
    :goto_0
    return-void

    .line 463
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v3, :cond_1

    .line 464
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 467
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 475
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 479
    :cond_2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    goto :goto_0

    .line 468
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object v0

    return-object v0
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 925
    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 643
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 644
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    .line 645
    .local v1, "saveCount":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 647
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    .line 648
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    .line 650
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 651
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->isProjected()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 872
    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    .line 873
    .local v6, "drawingBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    .line 874
    .local v5, "dirtyBounds":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 875
    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 877
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    float-to-int v3, v9

    .line 878
    .local v3, "cX":I
    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-int v4, v9

    .line 879
    .local v4, "cY":I
    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    .line 881
    .local v8, "rippleBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 882
    .local v1, "activeRipples":[Landroid/graphics/drawable/Ripple;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 883
    .local v0, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 884
    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Ripple;->getBounds(Landroid/graphics/Rect;)V

    .line 885
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 886
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 883
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 889
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    .line 890
    .local v2, "background":Landroid/graphics/drawable/RippleBackground;
    if-eqz v2, :cond_1

    .line 891
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    .line 892
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 893
    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 896
    :cond_1
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 897
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 900
    .end local v0    # "N":I
    .end local v1    # "activeRipples":[Landroid/graphics/drawable/Ripple;
    .end local v2    # "background":Landroid/graphics/drawable/RippleBackground;
    .end local v3    # "cX":I
    .end local v4    # "cY":I
    .end local v5    # "dirtyBounds":Landroid/graphics/Rect;
    .end local v6    # "drawingBounds":Landroid/graphics/Rect;
    .end local v7    # "i":I
    .end local v8    # "rippleBounds":Landroid/graphics/Rect;
    :goto_1
    return-object v5

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_1
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 595
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 596
    return-void
.end method

.method public getMaxRadius()I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 625
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    .line 626
    .local v3, "state":Landroid/graphics/drawable/LayerDrawable$LayerState;
    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 627
    .local v1, "children":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 628
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 629
    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_1

    .line 630
    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 631
    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 634
    :cond_0
    return-void

    .line 628
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 369
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 373
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    .line 375
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 377
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 379
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    .line 380
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 655
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 658
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    .line 659
    return-void
.end method

.method public isProjected()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    .line 208
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0}, Landroid/graphics/drawable/Ripple;->jump()V

    .line 212
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->jump()V

    .line 216
    :cond_1
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()Z

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 218
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 911
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 915
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    .line 918
    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 920
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 310
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 312
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 316
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 11
    .param p1, "stateSet"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v1

    .line 262
    .local v1, "changed":Z
    const/4 v2, 0x0

    .line 263
    .local v2, "enabled":Z
    const/4 v6, 0x0

    .line 264
    .local v6, "pressed":Z
    const/4 v3, 0x0

    .line 266
    .local v3, "focused":Z
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget v7, v0, v4

    .line 267
    .local v7, "state":I
    const v8, 0x101009e

    if-ne v7, v8, :cond_0

    .line 268
    const/4 v2, 0x1

    .line 270
    :cond_0
    const v8, 0x101009c

    if-ne v7, v8, :cond_1

    .line 271
    const/4 v3, 0x1

    .line 273
    :cond_1
    const v8, 0x10100a7

    if-ne v7, v8, :cond_2

    .line 274
    const/4 v6, 0x1

    .line 266
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v7    # "state":I
    :cond_3
    if-eqz v2, :cond_6

    if-eqz v6, :cond_6

    move v8, v9

    :goto_1
    invoke-direct {p0, v8}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    .line 279
    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    if-eqz v6, :cond_5

    :cond_4
    move v10, v9

    :cond_5
    invoke-direct {p0, v10, v3}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZ)V

    .line 281
    return v1

    :cond_6
    move v8, v10

    .line 278
    goto :goto_1
.end method

.method removeRipple(Landroid/graphics/drawable/Ripple;)V
    .locals 5
    .param p1, "ripple"    # Landroid/graphics/drawable/Ripple;

    .prologue
    .line 760
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/Ripple;

    .line 761
    .local v2, "ripples":[Landroid/graphics/drawable/Ripple;
    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 762
    .local v0, "count":I
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->getRippleIndex(Landroid/graphics/drawable/Ripple;)I

    move-result v1

    .line 763
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 764
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x1

    sub-int v4, v0, v4

    invoke-static {v2, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 765
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 766
    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    .line 768
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 770
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setAlpha(I)V

    .line 243
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 361
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    .line 362
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    .line 363
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 250
    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    const v0, 0x102002e

    if-ne p1, v0, :cond_0

    .line 386
    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    .line 389
    :cond_0
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 489
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_1

    .line 490
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    .line 491
    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    .line 495
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/Ripple;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Ripple;->move(FF)V

    .line 498
    :cond_2
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    .line 587
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 589
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    .line 590
    return-void
.end method

.method public setMaxRadius(I)V
    .locals 2
    .param p1, "maxRadius"    # I

    .prologue
    .line 975
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-gez p1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxRadius must be RADIUS_AUTO or >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    .line 980
    return-void
.end method

.method public setPaddingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    .line 412
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 320
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    .line 322
    .local v0, "changed":Z
    if-nez p1, :cond_1

    .line 323
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    if-eqz v0, :cond_0

    .line 327
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_2

    .line 328
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    .line 331
    :cond_2
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz v1, :cond_3

    .line 332
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    .line 336
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    goto :goto_0
.end method

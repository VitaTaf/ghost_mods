.class Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BarTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BarBackgroundDrawable"
.end annotation


# instance fields
.field private mAnimating:Z

.field private mColor:I

.field private mColorStart:I

.field private mEndTime:J

.field private final mGradient:Landroid/graphics/drawable/Drawable;

.field private mGradientAlpha:I

.field private mGradientAlphaStart:I

.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMode:I

.field private final mOpaque:I

.field private final mSemiTransparent:I

.field private mStartTime:J

.field private final mTransparent:I

.field private final mWarning:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gradientResourceId"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    .line 149
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    .line 150
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    .line 151
    const v1, 0x106005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    .line 153
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    .line 154
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 155
    return-void
.end method


# virtual methods
.method public applyModeBackground(IIZ)V
    .locals 4
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 174
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    if-ne v2, p2, :cond_0

    .line 185
    :goto_0
    return-void

    .line 175
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    .line 176
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    .line 177
    if-eqz p3, :cond_1

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 179
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    .line 180
    const-wide/16 v2, 0xc8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    .line 181
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlphaStart:I

    .line 182
    iget v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    .line 184
    .end local v0    # "now":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 201
    const/4 v4, 0x0

    .local v4, "targetGradientAlpha":I
    const/4 v3, 0x0

    .line 202
    .local v3, "targetColor":I
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 203
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mWarning:I

    .line 213
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-nez v6, :cond_8

    .line 214
    iput v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    .line 215
    iput v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    .line 233
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    if-lez v6, :cond_0

    .line 234
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 235
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 238
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 240
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz v6, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    .line 243
    :cond_2
    return-void

    .line 204
    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 205
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    goto :goto_0

    .line 206
    :cond_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 207
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mSemiTransparent:I

    goto :goto_0

    .line 208
    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_7

    .line 209
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mTransparent:I

    goto :goto_0

    .line 211
    :cond_7
    iget v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mOpaque:I

    goto :goto_0

    .line 217
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 218
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    cmp-long v6, v0, v6

    if-ltz v6, :cond_9

    .line 219
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    .line 220
    iput v3, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    .line 221
    iput v4, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    goto :goto_1

    .line 223
    :cond_9
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    sub-long v6, v0, v6

    long-to-float v6, v6

    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mEndTime:J

    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mStartTime:J

    sub-long/2addr v8, v10

    long-to-float v7, v8

    div-float v2, v6, v7

    .line 224
    .local v2, "t":F
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v7, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v7, v12}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 225
    .local v5, "v":F
    int-to-float v6, v4

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlphaStart:I

    int-to-float v7, v7

    sub-float v8, v12, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradientAlpha:I

    .line 226
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v12, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v9, v12, v5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v5

    iget v9, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v12, v5

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    iget v10, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColorStart:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v12, v5

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mColor:I

    goto/16 :goto_1
.end method

.method public finishAnimation()V
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mAnimating:Z

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->invalidateSelf()V

    .line 197
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->mGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 171
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 160
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 165
    return-void
.end method

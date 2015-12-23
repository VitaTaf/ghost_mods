.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$1;,
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private final mChargeColor:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mUseStatusVsPlugged:Z

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 66
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 68
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mUseStatusVsPlugged:Z

    .line 71
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 72
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 73
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 75
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    .line 76
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    .line 77
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    .line 155
    new-instance v8, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 495
    new-instance v8, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 192
    .local v7, "res":Landroid/content/res/Resources;
    sget-object v8, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 194
    .local v1, "atts":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const v9, 0x7f080006

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 196
    .local v4, "frameColor":I
    const/high16 v8, 0x7f070000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 197
    .local v6, "levels":Landroid/content/res/TypedArray;
    const v8, 0x7f070001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 199
    .local v2, "colors":Landroid/content/res/TypedArray;
    const v8, 0x7f090029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mUseStatusVsPlugged:Z

    .line 202
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 203
    .local v0, "N":I
    mul-int/lit8 v8, v0, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 204
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 205
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aput v10, v8, v9

    .line 206
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v8, v9

    .line 204
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "status_bar_show_battery_percent"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 213
    const v8, 0x7f0c010b

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 214
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0002

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0003

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    .line 220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0004

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    .line 223
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 224
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 226
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 227
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 229
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 230
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 231
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 235
    const-string v8, "sans-serif-condensed"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 236
    .local v3, "font":Landroid/graphics/Typeface;
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 237
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 240
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    const-string v8, "sans-serif"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 242
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 243
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 247
    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 248
    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v9, 0x7f080008

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    invoke-static {v7}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 250
    return-void

    .line 211
    .end local v3    # "font":Landroid/graphics/Typeface;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 294
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v0, v3, v4

    .line 303
    :cond_0
    return v0

    .line 297
    :cond_1
    const/4 v0, 0x0

    .line 298
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    .line 300
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 301
    if-le p1, v2, :cond_0

    .line 298
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 269
    const v5, 0x7f070002

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 270
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 271
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 272
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 273
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 271
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 275
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 276
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 277
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 278
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 276
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 280
    :cond_1
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 501
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 502
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 506
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 510
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 512
    :cond_3
    if-eqz v1, :cond_4

    .line 513
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 515
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 34
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v28, v0

    .line 309
    .local v28, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v20, v0

    .line 311
    .local v20, "level":I
    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_2

    .line 487
    :cond_0
    :goto_1
    return-void

    .line 308
    .end local v20    # "level":I
    .end local v28    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v28, v0

    goto :goto_0

    .line 313
    .restart local v20    # "level":I
    .restart local v28    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_2
    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v17, v3, v5

    .line 314
    .local v17, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v27

    .line 315
    .local v27, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v25

    .line 316
    .local v25, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v26

    .line 317
    .local v26, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v23

    .line 318
    .local v23, "pb":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    sub-int v3, v3, v27

    sub-int v18, v3, v23

    .line 319
    .local v18, "height":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    sub-int v3, v3, v25

    sub-int v29, v3, v26

    .line 321
    .local v29, "width":I
    move/from16 v0, v18

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    mul-float/2addr v3, v5

    float-to-int v15, v3

    .line 323
    .local v15, "buttonHeight":I
    const/16 v22, 0x0

    .line 326
    .local v22, "moto_IndicateCharging":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v29

    int-to-float v9, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v25

    int-to-float v5, v0

    move/from16 v0, v27

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v0, v29

    int-to-float v6, v0

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3e800000    # 0.25f

    mul-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    int-to-float v0, v15

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    int-to-float v6, v15

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 350
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mUseStatusVsPlugged:Z

    if-eqz v3, :cond_b

    .line 352
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v3, :cond_9

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_9

    :cond_4
    const/16 v22, 0x1

    .line 370
    :goto_2
    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    move/from16 v16, v0

    .line 371
    .local v16, "color":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    .end local v16    # "color":I
    :goto_4
    const/16 v3, 0x60

    move/from16 v0, v20

    if-lt v0, v3, :cond_d

    .line 383
    const/high16 v17, 0x3f800000    # 1.0f

    .line 388
    :cond_5
    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v17, v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    .line 392
    .local v21, "levelTop":F
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 403
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mUseStatusVsPlugged:Z

    if-nez v3, :cond_6

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mUseStatusVsPlugged:Z

    if-eqz v3, :cond_11

    if-eqz v22, :cond_11

    .line 411
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40900000    # 4.5f

    div-float/2addr v5, v6

    add-float v11, v3, v5

    .line 412
    .local v11, "bl":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float v14, v3, v5

    .line 413
    .local v14, "bt":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    sub-float v13, v3, v5

    .line 414
    .local v13, "br":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    sub-float v10, v3, v5

    .line 415
    .local v10, "bb":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v14

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_10

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v14, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v9, v9, v32

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 422
    const/16 v19, 0x2

    .local v19, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_f

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    aget v6, v6, v19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    add-int/lit8 v32, v19, 0x1

    aget v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v9, v9, v32

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    add-int/lit8 v19, v19, 0x2

    goto :goto_7

    .line 352
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    .end local v19    # "i":I
    .end local v21    # "levelTop":F
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 370
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v16

    goto/16 :goto_3

    .line 376
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    :goto_8
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v3

    goto :goto_8

    .line 384
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v3, :cond_5

    .line 385
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 388
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v17

    mul-float/2addr v5, v6

    add-float v21, v3, v5

    goto/16 :goto_6

    .line 427
    .restart local v10    # "bb":F
    .restart local v11    # "bl":F
    .restart local v13    # "br":F
    .restart local v14    # "bt":F
    .restart local v19    # "i":I
    .restart local v21    # "levelTop":F
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v9, v9, v32

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    .end local v19    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v3, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v12, v3, v5

    .line 433
    .local v12, "boltPct":F
    const/4 v3, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 434
    const v3, 0x3e99999a    # 0.3f

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_13

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 444
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v12    # "boltPct":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    :cond_11
    :goto_9
    const/16 v24, 0x0

    .line 445
    .local v24, "pctOpaque":Z
    const/4 v7, 0x0

    .local v7, "pctX":F
    const/4 v8, 0x0

    .line 446
    .local v8, "pctY":F
    const/4 v4, 0x0

    .line 447
    .local v4, "pctText":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v20

    if-le v0, v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v3, :cond_12

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_14

    .line 467
    :cond_12
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 476
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_0

    .line 477
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v20

    if-gt v0, v3, :cond_17

    .line 479
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v30, v3, v5

    .line 480
    .local v30, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef5c28f    # 0.48f

    mul-float v31, v3, v5

    .line 481
    .local v31, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 439
    .end local v4    # "pctText":Ljava/lang/String;
    .end local v7    # "pctX":F
    .end local v8    # "pctY":F
    .end local v24    # "pctOpaque":Z
    .end local v30    # "x":F
    .end local v31    # "y":F
    .restart local v10    # "bb":F
    .restart local v11    # "bl":F
    .restart local v12    # "boltPct":F
    .restart local v13    # "br":F
    .restart local v14    # "bt":F
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_9

    .line 449
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v12    # "boltPct":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    .restart local v4    # "pctText":Ljava/lang/String;
    .restart local v7    # "pctX":F
    .restart local v8    # "pctY":F
    .restart local v24    # "pctOpaque":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v6, v0

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v9, 0x64

    if-ne v3, v9, :cond_15

    const v3, 0x3ec28f5c    # 0.38f

    :goto_b
    mul-float/2addr v3, v6

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 454
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 455
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v7, v3, v5

    .line 456
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef0a3d7    # 0.47f

    mul-float v8, v3, v5

    .line 457
    cmpl-float v3, v21, v8

    if-lez v3, :cond_16

    const/16 v24, 0x1

    .line 458
    :goto_c
    if-nez v24, :cond_12

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_a

    .line 450
    :cond_15
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_b

    .line 457
    :cond_16
    const/16 v24, 0x0

    goto :goto_c

    .line 482
    :cond_17
    if-eqz v24, :cond_0

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 159
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 165
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 170
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 260
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 178
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 266
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 285
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 286
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 287
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 289
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 255
    return-void
.end method

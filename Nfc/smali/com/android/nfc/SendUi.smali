.class public Lcom/android/nfc/SendUi;
.super Ljava/lang/Object;
.source "SendUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/TimeAnimator$TimeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/SendUi$ScreenshotTask;,
        Lcom/android/nfc/SendUi$Callback;
    }
.end annotation


# static fields
.field static final BLACK_LAYER_ALPHA_DOWN_RANGE:[F

.field static final BLACK_LAYER_ALPHA_UP_RANGE:[F

.field static final FADE_IN_DURATION_MS:I = 0xfa

.field static final FADE_IN_START_DELAY_MS:I = 0x15e

.field static final FAST_SEND_DURATION_MS:I = 0x15e

.field static final FINISH_SCALE_UP:I = 0x0

.field static final FINISH_SEND_SUCCESS:I = 0x1

.field static final INTERMEDIATE_SCALE:F = 0.6f

.field static final PRE_DURATION_MS:I = 0x15e

.field static final PRE_SCREENSHOT_SCALE:[F

.field static final SCALE_UP_DURATION_MS:I = 0x12c

.field static final SCALE_UP_SCREENSHOT_SCALE:[F

.field static final SEND_SCREENSHOT_SCALE:[F

.field static final SLIDE_OUT_DURATION_MS:I = 0x12c

.field static final SLOW_SEND_DURATION_MS:I = 0x1f40

.field static final STATE_COMPLETE:I = 0x9

.field static final STATE_IDLE:I = 0x0

.field static final STATE_SENDING:I = 0x8

.field static final STATE_W4_NFC_TAP:I = 0x7

.field static final STATE_W4_PRESEND:I = 0x5

.field static final STATE_W4_SCREENSHOT:I = 0x1

.field static final STATE_W4_SCREENSHOT_PRESEND_NFC_TAP_REQUESTED:I = 0x3

.field static final STATE_W4_SCREENSHOT_PRESEND_REQUESTED:I = 0x2

.field static final STATE_W4_SCREENSHOT_THEN_STOP:I = 0x4

.field static final STATE_W4_TOUCH:I = 0x6

.field static final TAG:Ljava/lang/String; = "SendUi"

.field static final TEXT_HINT_ALPHA_DURATION_MS:I = 0x1f4

.field static final TEXT_HINT_ALPHA_RANGE:[F

.field static final TEXT_HINT_ALPHA_START_DELAY_MS:I = 0x12c


# instance fields
.field final mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

.field final mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

.field final mBlackLayer:Landroid/widget/ImageView;

.field final mCallback:Lcom/android/nfc/SendUi$Callback;

.field final mContext:Landroid/content/Context;

.field mDecor:Landroid/view/View;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMatrix:Landroid/graphics/Matrix;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field final mFastSendAnimator:Landroid/animation/ObjectAnimator;

.field final mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

.field final mFrameCounterAnimator:Landroid/animation/TimeAnimator;

.field final mHardwareAccelerated:Z

.field final mHintAnimator:Landroid/animation/ObjectAnimator;

.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final mPreAnimator:Landroid/animation/ObjectAnimator;

.field mRenderedFrames:I

.field final mScaleUpAnimator:Landroid/animation/ObjectAnimator;

.field mScreenshotBitmap:Landroid/graphics/Bitmap;

.field final mScreenshotLayout:Landroid/view/View;

.field final mScreenshotView:Landroid/widget/ImageView;

.field final mSlowSendAnimator:Landroid/animation/ObjectAnimator;

.field mState:I

.field final mStatusBarManager:Landroid/app/StatusBarManager;

.field final mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceHeight:I

.field mSurfaceWidth:I

.field final mTextHint:Landroid/widget/TextView;

.field final mTextRetry:Landroid/widget/TextView;

.field final mTextureView:Landroid/view/TextureView;

.field mToastString:Ljava/lang/String;

.field final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 91
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/SendUi;->PRE_SCREENSHOT_SCALE:[F

    .line 94
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/nfc/SendUi;->SEND_SCREENSHOT_SCALE:[F

    .line 98
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    .line 106
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    .line 107
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    .line 109
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/nfc/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    return-void

    .line 91
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    .line 98
    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    .line 106
    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    .line 107
    :array_4
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data

    .line 109
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/SendUi$Callback;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/SendUi$Callback;

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    .line 195
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/SendUi;->mCallback:Lcom/android/nfc/SendUi$Callback;

    .line 197
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 198
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 199
    const-string v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    .line 200
    const-string v2, "statusbar"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    .line 204
    const-string v2, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mTextureView:Landroid/view/TextureView;

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mTextureView:Landroid/view/TextureView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 220
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    .line 221
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v2, :cond_0

    const/high16 v13, 0x1000000

    .line 224
    .local v13, "hwAccelerationFlags":I
    :goto_0
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7d3

    or-int/lit16 v8, v13, 0x400

    or-int/lit16 v8, v8, 0x100

    const/4 v9, -0x1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 235
    new-instance v2, Landroid/animation/TimeAnimator;

    invoke-direct {v2}, Landroid/animation/TimeAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 238
    const-string v2, "scaleX"

    sget-object v3, Lcom/android/nfc/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 239
    .local v16, "preX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    sget-object v3, Lcom/android/nfc/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 240
    .local v17, "preY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v17, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    const-string v2, "scaleX"

    sget-object v3, Lcom/android/nfc/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 246
    .local v14, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    sget-object v3, Lcom/android/nfc/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 247
    .local v15, "postY":Landroid/animation/PropertyValuesHolder;
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 250
    .local v10, "alphaDown":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 260
    const-string v2, "scaleX"

    sget-object v3, Lcom/android/nfc/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v18

    .line 261
    .local v18, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string v2, "scaleY"

    sget-object v3, Lcom/android/nfc/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v19

    .line 263
    .local v19, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    aput-object v19, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 269
    .local v12, "fadeIn":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    const-string v2, "alpha"

    sget-object v3, Lcom/android/nfc/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 276
    .local v11, "alphaUp":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 281
    const-string v2, "alpha"

    sget-object v3, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 286
    const-string v2, "alpha"

    sget-object v3, Lcom/android/nfc/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    const v3, 0x103000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 297
    new-instance v20, Landroid/view/PhoneWindow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/view/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 298
    .local v20, "window":Landroid/view/Window;
    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 299
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 300
    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mDecor:Landroid/view/View;

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v2, :cond_1

    .line 304
    new-instance v2, Lcom/android/nfc/FireflyRenderer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/android/nfc/FireflyRenderer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    .line 308
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/SendUi;->mState:I

    .line 309
    return-void

    .line 221
    .end local v10    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .end local v11    # "alphaUp":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "hwAccelerationFlags":I
    .end local v14    # "postX":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "postY":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "preX":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "preY":Landroid/animation/PropertyValuesHolder;
    .end local v18    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v19    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .end local v20    # "window":Landroid/view/Window;
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 306
    .restart local v10    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .restart local v11    # "alphaUp":Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .restart local v13    # "hwAccelerationFlags":I
    .restart local v14    # "postX":Landroid/animation/PropertyValuesHolder;
    .restart local v15    # "postY":Landroid/animation/PropertyValuesHolder;
    .restart local v16    # "preX":Landroid/animation/PropertyValuesHolder;
    .restart local v17    # "preY":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .restart local v20    # "window":Landroid/view/Window;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    goto :goto_1

    .line 247
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 536
    packed-switch p0, :pswitch_data_0

    .line 544
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 538
    :pswitch_0
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 540
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 542
    :pswitch_2
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method createScreenshot()Landroid/graphics/Bitmap;
    .locals 23

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x112005b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 590
    .local v7, "hasNavBar":Z
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [F

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v6, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v6, v20

    .line 591
    .local v6, "dims":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getRotation()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/nfc/SendUi;->getDegreesForRotation(I)F

    move-result v5

    .line 592
    .local v5, "degrees":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050011

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 596
    .local v19, "statusBarHeight":I
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 598
    .local v8, "navBarHeight":I
    :goto_0
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050013

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 601
    .local v9, "navBarHeightLandscape":I
    :goto_1
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050014

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 604
    .local v10, "navBarWidth":I
    :goto_2
    const/16 v20, 0x0

    cmpl-float v20, v5, v20

    if-lez v20, :cond_4

    const/4 v15, 0x1

    .line 605
    .local v15, "requiresRotation":Z
    :goto_3
    if-eqz v15, :cond_0

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Matrix;->reset()V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    neg-float v0, v5

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 610
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget v21, v6, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    aput v21, v6, v20

    .line 611
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget v21, v6, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    aput v21, v6, v20

    .line 614
    :cond_0
    const/16 v20, 0x0

    aget v20, v6, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 616
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_5

    .line 617
    const/16 v20, 0x0

    .line 658
    :goto_4
    return-object v20

    .line 596
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "navBarHeight":I
    .end local v9    # "navBarHeightLandscape":I
    .end local v10    # "navBarWidth":I
    .end local v15    # "requiresRotation":Z
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 598
    .restart local v8    # "navBarHeight":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 601
    .restart local v9    # "navBarHeightLandscape":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 604
    .restart local v10    # "navBarWidth":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    .line 620
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "requiresRotation":Z
    :cond_5
    if-eqz v15, :cond_6

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v20 .. v22}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 624
    .local v18, "ss":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 625
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    const/high16 v20, 0x43b40000    # 360.0f

    sub-float v20, v20, v5

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 627
    const/16 v20, 0x0

    aget v20, v6, v20

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 628
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 630
    move-object/from16 v3, v18

    .line 637
    .end local v4    # "c":Landroid/graphics/Canvas;
    .end local v18    # "ss":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v12, 0x0

    .line 638
    .local v12, "newLeft":I
    move/from16 v13, v19

    .line 639
    .local v13, "newTop":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 640
    .local v14, "newWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 641
    .local v11, "newHeight":I
    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 642
    .local v16, "smallestWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43200000    # 160.0f

    div-float v20, v20, v21

    div-float v17, v16, v20

    .line 643
    .local v17, "smallestWidthDp":F
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 645
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v19

    sub-int v11, v20, v8

    .line 656
    :goto_5
    invoke-static {v3, v12, v13, v14, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v20, v3

    .line 658
    goto/16 :goto_4

    .line 649
    :cond_7
    const v20, 0x4415c000    # 599.0f

    cmpl-float v20, v17, v20

    if-lez v20, :cond_8

    .line 650
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v20, v20, v19

    sub-int v11, v20, v9

    goto :goto_5

    .line 652
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    sub-int v11, v20, v19

    .line 653
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    sub-int v14, v20, v10

    goto :goto_5
.end method

.method dismiss()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 509
    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 530
    :goto_0
    return-void

    .line 513
    :cond_0
    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 514
    iput-object v3, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 515
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 516
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 517
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 518
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 519
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 520
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 521
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 522
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 523
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 524
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 525
    iput-object v3, p0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 526
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    :cond_1
    iput-object v3, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    goto :goto_0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 770
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 771
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mCallback:Lcom/android/nfc/SendUi$Callback;

    invoke-interface {v1}, Lcom/android/nfc/SendUi$Callback;->onCanceled()V

    .line 773
    const/4 v1, 0x1

    .line 779
    :goto_0
    return v1

    .line 774
    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_2

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/SendUi;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 779
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public finish(I)V
    .locals 13
    .param p1, "finishMode"    # I

    .prologue
    .line 440
    iget v9, p0, Lcom/android/nfc/SendUi;->mState:I

    packed-switch v9, :pswitch_data_0

    .line 466
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    if-eqz v9, :cond_0

    .line 467
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    invoke-virtual {v9}, Lcom/android/nfc/FireflyRenderer;->stop()V

    .line 470
    :cond_0
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    .line 474
    .local v2, "currentScale":F
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 476
    .local v1, "currentAlpha":F
    if-nez p1, :cond_2

    .line 477
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 480
    .local v7, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 482
    .local v8, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 484
    .local v6, "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 486
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    .line 505
    .end local v6    # "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    :goto_0
    const/16 v9, 0x9

    iput v9, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 506
    .end local v1    # "currentAlpha":F
    .end local v2    # "currentScale":F
    :goto_1
    :pswitch_0
    return-void

    .line 448
    :pswitch_1
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_1

    .line 451
    :pswitch_2
    const-string v9, "SendUi"

    const-string v10, "Unexpected call to finish() in STATE_W4_SCREENSHOT_THEN_STOP"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 457
    :pswitch_3
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 458
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_1

    .line 487
    .restart local v1    # "currentAlpha":F
    .restart local v2    # "currentScale":F
    :cond_2
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 489
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 491
    .local v4, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 493
    .local v5, "postY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v1, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 495
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 498
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 500
    .local v3, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 502
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 503
    iget-object v9, p0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 498
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public finishAndToast(ILjava/lang/String;)V
    .locals 0
    .param p1, "finishMode"    # I
    .param p2, "toast"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p2, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/nfc/SendUi;->finish(I)V

    .line 436
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 876
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 872
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 683
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 666
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_2

    .line 669
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/SendUi;->dismiss()V

    .line 680
    :cond_1
    :goto_0
    return-void

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 674
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_1

    .line 676
    iget-boolean v0, p0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 677
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFireflyRenderer:Lcom/android/nfc/FireflyRenderer;

    iget-object v1, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/nfc/SendUi;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/nfc/SendUi;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/FireflyRenderer;->start(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 686
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 662
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 848
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 839
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 810
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 857
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 820
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 861
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 723
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/SendUi;->mRenderedFrames:I

    .line 725
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 726
    iput-object p1, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 727
    iput p2, p0, Lcom/android/nfc/SendUi;->mSurfaceWidth:I

    .line 728
    iput p3, p0, Lcom/android/nfc/SendUi;->mSurfaceHeight:I

    .line 730
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 741
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 735
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 745
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 691
    iget v0, p0, Lcom/android/nfc/SendUi;->mRenderedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/SendUi;->mRenderedFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 701
    :goto_0
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 699
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 705
    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 706
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    .line 708
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 710
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 713
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 714
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 716
    iget-object v0, p0, Lcom/android/nfc/SendUi;->mCallback:Lcom/android/nfc/SendUi$Callback;

    invoke-interface {v0}, Lcom/android/nfc/SendUi$Callback;->onSendConfirmed()V

    .line 717
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 835
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 843
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method public showPreSend(Z)V
    .locals 9
    .param p1, "promptToNfcTap"    # Z

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 323
    iget v4, p0, Lcom/android/nfc/SendUi;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 344
    :pswitch_0
    const-string v2, "SendUi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected showPreSend() in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/SendUi;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    return-void

    .line 325
    :pswitch_1
    const-string v2, "SendUi"

    const-string v3, "Unexpected showPreSend() in STATE_IDLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :pswitch_2
    if-eqz p1, :cond_0

    .line 331
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_0

    .line 333
    :cond_0
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_0

    .line 338
    :pswitch_3
    const-string v2, "SendUi"

    const-string v3, "Unexpected showPreSend() in STATE_W4_SCREENSHOT_PRESEND_REQUESTED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    :pswitch_4
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 350
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 353
    .local v1, "statusBarHeight":I
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 355
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 356
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 357
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 358
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 359
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 361
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 363
    if-eqz p1, :cond_2

    .line 364
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 369
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 378
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->orientation:I

    .line 380
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_1

    .line 390
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 395
    :goto_2
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mDecor:Landroid/view/View;

    iget-object v6, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 399
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/SendUi;->mToastString:Ljava/lang/String;

    .line 401
    iget-boolean v4, p0, Lcom/android/nfc/SendUi;->mHardwareAccelerated:Z

    if-nez v4, :cond_1

    .line 402
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 404
    :cond_1
    if-eqz p1, :cond_3

    :goto_3
    iput v2, p0, Lcom/android/nfc/SendUi;->mState:I

    goto/16 :goto_0

    .line 366
    .end local v0    # "orientation":I
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 382
    .restart local v0    # "orientation":I
    :pswitch_5
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 386
    :pswitch_6
    iget-object v4, p0, Lcom/android/nfc/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    :cond_3
    move v2, v3

    .line 404
    goto :goto_3

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 380
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public showSendHint()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 748
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 751
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 752
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 755
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScaleY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 756
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 757
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 759
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v4

    const v3, 0x3f666666    # 0.9f

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 764
    .local v0, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 765
    iget-object v1, p0, Lcom/android/nfc/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 766
    return-void
.end method

.method public showStartSend()V
    .locals 11

    .prologue
    const/16 v6, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 409
    iget v5, p0, Lcom/android/nfc/SendUi;->mState:I

    if-ge v5, v6, :cond_0

    .line 430
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleX()F

    move-result v2

    .line 415
    .local v2, "currentScale":F
    const-string v5, "scaleX"

    new-array v6, v10, [F

    aput v2, v6, v7

    aput v9, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 417
    .local v3, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v10, [F

    aput v2, v6, v7

    aput v9, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 420
    .local v4, "postY":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 422
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    .line 423
    .local v1, "currentAlpha":F
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1

    cmpl-float v5, v1, v9

    if-lez v5, :cond_1

    .line 424
    const-string v5, "alpha"

    new-array v6, v10, [F

    aput v1, v6, v7

    aput v9, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 426
    .local v0, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 427
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 429
    .end local v0    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public takeScreenshot()V
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/SendUi;->mState:I

    .line 318
    new-instance v0, Lcom/android/nfc/SendUi$ScreenshotTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/SendUi$ScreenshotTask;-><init>(Lcom/android/nfc/SendUi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/SendUi$ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

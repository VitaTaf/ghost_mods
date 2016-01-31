.class public final Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;
.super Ljava/lang/Object;
.source "GestureSharingTouchInputReceiver.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# static fields
.field private static final LONG_DISTANCE_MIN_VELOCITY:F = 400.0f

.field private static final MIN_DISTANCE_PER_POINTER:F = 100.0f

.field private static final MIN_LONG_DISTANCE:F = 400.0f

.field private static final MIN_SHORT_DISTANCE:F = 200.0f

.field private static final SHORT_DISTANCE_MIN_VELOCITY:F = 2000.0f

.field private static final SWIPE_ALLOW_ANGLE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "GSTouchInputReceiver"

.field private static final TANGENT_OF_ANGLE:D


# instance fields
.field private accumPointer0X:F

.field private accumPointer0Y:F

.field private accumPointer1X:F

.field private accumPointer1Y:F

.field private firstDown:Z

.field private gestureStartTime:J

.field private mContext:Landroid/content/Context;

.field private mDiscardNumPixels:I

.field private mDisplay:Landroid/view/Display;

.field private mNotificationBarStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationExpanded:Z

.field private mStartedInAllowedArea:Z

.field private prevPointer0X:F

.field private prevPointer0Y:F

.field private prevPointer1X:F

.field private prevPointer1Y:F

.field private secondDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->TANGENT_OF_ANGLE:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->gestureStartTime:J

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer0X:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer0Y:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer1X:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer1Y:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0X:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1X:F

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    iput-boolean v4, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->firstDown:Z

    iput-boolean v4, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    iput-object v5, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mContext:Landroid/content/Context;

    iput-object v5, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDisplay:Landroid/view/Display;

    const/16 v1, 0x50

    iput v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDiscardNumPixels:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mStartedInAllowedArea:Z

    iput-boolean v4, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mNotificationExpanded:Z

    new-instance v1, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver$1;

    invoke-direct {v1, p0}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver$1;-><init>(Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;)V

    iput-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mNotificationBarStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDisplay:Landroid/view/Display;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.internal.policy.statusbar.NOTIFICATION_VIEW_FULLY_COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mNotificationBarStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.STATUS_BAR"

    invoke-virtual {p1, v1, v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->setNotificationExpanded(Z)V

    return-void
.end method

.method private getScreenHeight()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDisplay:Landroid/view/Display;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v2, v13, 0xff

    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const v14, 0xff00

    and-int/2addr v13, v14

    shr-int/lit8 v5, v13, 0x8

    .local v5, "pointerIndex":I
    const/4 v11, 0x0

    .local v11, "startingNow":Z
    if-nez v2, :cond_2

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->firstDown:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->firstDown:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_5

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v13, 0x5

    if-ne v2, v13, :cond_3

    const/4 v13, 0x1

    if-ne v5, v13, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->firstDown:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    if-nez v13, :cond_0

    const/4 v11, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->gestureStartTime:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1X:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0X:F

    goto :goto_0

    :cond_3
    const/4 v13, 0x1

    if-eq v2, v13, :cond_4

    const/4 v13, 0x6

    if-eq v2, v13, :cond_4

    const/4 v13, 0x5

    if-ne v2, v13, :cond_0

    const/4 v13, 0x2

    if-ne v5, v13, :cond_0

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->firstDown:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    goto :goto_0

    :cond_5
    if-eqz v11, :cond_d

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mStartedInAllowedArea:Z

    invoke-direct/range {p0 .. p0}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->getScreenHeight()I

    move-result v8

    .local v8, "screenHeight":I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .local v9, "startY0":F
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .local v10, "startY1":F
    invoke-direct/range {p0 .. p0}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->isLandscape()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDiscardNumPixels:I

    int-to-float v13, v13

    cmpl-float v13, v9, v13

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDiscardNumPixels:I

    int-to-float v13, v13

    cmpl-float v13, v10, v13

    if-lez v13, :cond_a

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mStartedInAllowedArea:Z

    .end local v8    # "screenHeight":I
    .end local v9    # "startY0":F
    .end local v10    # "startY1":F
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer0X:F

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer0Y:F

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer1X:F

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer1Y:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "now":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    mul-float/2addr v13, v14

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    float-to-double v14, v13

    sget-wide v16, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->TANGENT_OF_ANGLE:D

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0X:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    float-to-double v14, v13

    sget-wide v16, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->TANGENT_OF_ANGLE:D

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1X:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v0, v13

    move-wide/from16 v16, v0

    cmpl-double v13, v14, v16

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    add-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v3, v13, v14

    .local v3, "deltaY":F
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->gestureStartTime:J

    sub-long v14, v6, v14

    long-to-float v13, v14

    div-float v13, v3, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .local v12, "velocityY":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x43480000    # 200.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x44fa0000    # 2000.0f

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_7

    :cond_6
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x43c80000    # 400.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x43c80000    # 400.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1

    :cond_7
    const/4 v13, 0x0

    cmpg-float v13, v3, v13

    if-gez v13, :cond_e

    const-string v13, "GSTouchInputReceiver"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "GSTouchInputReceiver"

    const-string v14, "** UP **"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mStartedInAllowedArea:Z

    if-eqz v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->isNotificationExpanded()Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.motorola.internal.intent.action.GS_SWIPE_UP"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->firstDown:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->secondDown:Z

    goto/16 :goto_1

    .end local v3    # "deltaY":F
    .end local v6    # "now":J
    .end local v12    # "velocityY":F
    .restart local v8    # "screenHeight":I
    .restart local v9    # "startY0":F
    .restart local v10    # "startY1":F
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDiscardNumPixels:I

    sub-int v4, v8, v13

    .local v4, "discardBottom":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDiscardNumPixels:I

    int-to-float v13, v13

    cmpl-float v13, v9, v13

    if-lez v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDiscardNumPixels:I

    int-to-float v13, v13

    cmpl-float v13, v10, v13

    if-lez v13, :cond_c

    int-to-float v13, v4

    cmpg-float v13, v9, v13

    if-gez v13, :cond_c

    int-to-float v13, v4

    cmpg-float v13, v10, v13

    if-gez v13, :cond_c

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mStartedInAllowedArea:Z

    goto/16 :goto_3

    :cond_c
    const/4 v13, 0x0

    goto :goto_5

    .end local v4    # "discardBottom":I
    .end local v8    # "screenHeight":I
    .end local v9    # "startY0":F
    .end local v10    # "startY1":F
    :cond_d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0X:F

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer0X:F

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer0Y:F

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer0Y:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1X:F

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer1X:F

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1X:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->prevPointer1Y:F

    sub-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->accumPointer1Y:F

    goto/16 :goto_3

    .restart local v3    # "deltaY":F
    .restart local v6    # "now":J
    .restart local v12    # "velocityY":F
    :cond_e
    const-string v13, "GSTouchInputReceiver"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "GSTouchInputReceiver"

    const-string v14, "** DOWN **"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mStartedInAllowedArea:Z

    if-eqz v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->isNotificationExpanded()Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.motorola.internal.intent.action.GS_SWIPE_DOWN"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4
.end method

.method private isLandscape()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDisplay:Landroid/view/Display;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v0

    .local v0, "rotation":I
    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private declared-synchronized isNotificationExpanded()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mNotificationExpanded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setNotificationExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->mNotificationExpanded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/motorola/internal/widget/GestureSharingTouchInputReceiver;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

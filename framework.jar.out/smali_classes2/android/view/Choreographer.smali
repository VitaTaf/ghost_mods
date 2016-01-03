.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x3

.field public static final CALLBACK_INPUT:I = 0x0

.field private static final CALLBACK_LAST:I = 0x3

.field public static final CALLBACK_TRAVERSAL:I = 0x2

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static volatile sFrameDelay:J

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mFrameIntervalNanos:J

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mLastFrameTimeNanos:J

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 95
    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    .line 108
    const-string v0, "debug.choreographer.vsync"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    .line 112
    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    .line 117
    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    .line 125
    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    .line 183
    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    .line 184
    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    .line 185
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    :goto_0
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    .line 186
    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 188
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v3

    div-float/2addr v1, v3

    float-to-long v4, v1

    iput-wide v4, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    .line 190
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v3, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v3, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V

    aput-object v3, v1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move-object v1, v2

    .line 185
    goto :goto_0

    .line 194
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Landroid/view/Choreographer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Landroid/view/Choreographer$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .locals 1
    .param p0, "x0"    # Landroid/view/Choreographer;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 1
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/Choreographer;
    .param p1, "x1"    # Landroid/view/Choreographer$CallbackRecord;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method public static getFrameDelay()J
    .locals 2

    .prologue
    .line 229
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 199
    .local v0, "di":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->refreshRate:F

    return v1
.end method

.method private isRunningOnLooperThreadLocked()Z
    .locals 2

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .locals 3
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 676
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 677
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    if-nez v0, :cond_0

    .line 678
    new-instance v0, Landroid/view/Choreographer$CallbackRecord;

    .end local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    invoke-direct {v0, v2}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$1;)V

    .line 683
    .restart local v0    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    .line 684
    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 685
    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 686
    return-object v0

    .line 680
    :cond_0
    iget-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 681
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .locals 8
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 346
    iget-object v6, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 347
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 348
    .local v4, "now":J
    add-long v0, v4, p4

    .line 349
    .local v0, "dueTime":J
    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v0, v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 351
    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 352
    invoke-direct {p0, v4, v5}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 359
    :goto_0
    monitor-exit v6

    .line 360
    return-void

    .line 354
    :cond_0
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v7, 0x2

    invoke-virtual {v3, v7, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 355
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 356
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 357
    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 359
    .end local v0    # "dueTime":J
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "now":J
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/Choreographer$CallbackRecord;

    .prologue
    const/4 v0, 0x0

    .line 690
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    .line 691
    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 693
    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    .line 694
    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Object;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 389
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 392
    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    .line 394
    :cond_0
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleFrameLocked(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v8, 0x1

    .line 497
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_0

    .line 498
    iput-boolean v8, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 499
    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    if-eqz v1, :cond_2

    .line 507
    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v8}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 511
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 512
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 515
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-wide v4, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sget-wide v6, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v4, v6

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 520
    .local v2, "nextFrameTime":J
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 521
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 522
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private scheduleVsyncLocked()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 669
    return-void
.end method

.method public static setFrameDelay(J)V
    .locals 0
    .param p0, "frameDelay"    # J

    .prologue
    .line 248
    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 249
    return-void
.end method

.method public static subtractFrameDelay(J)J
    .locals 4
    .param p0, "delayMillis"    # J

    .prologue
    .line 274
    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    .line 275
    .local v0, "frameDelay":J
    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    sub-long v2, p0, v0

    goto :goto_0
.end method


# virtual methods
.method doCallbacks(IJ)V
    .locals 20
    .param p1, "callbackType"    # I
    .param p2, "frameTimeNanos"    # J

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 593
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 594
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v11, v11, p1

    const-wide/32 v16, 0xf4240

    div-long v16, v12, v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v5

    .line 596
    .local v5, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    if-nez v5, :cond_0

    .line 597
    monitor-exit v14

    .line 646
    :goto_0
    return-void

    .line 599
    :cond_0
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 609
    const/4 v11, 0x3

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    .line 610
    sub-long v6, v12, p2

    .line 611
    .local v6, "jitterNanos":J
    const-wide/16 v16, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    cmp-long v11, v6, v16

    if-ltz v11, :cond_1

    .line 612
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    rem-long v16, v6, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v18, v0

    add-long v8, v16, v18

    .line 622
    .local v8, "lastFrameOffset":J
    sub-long p2, v12, v8

    .line 623
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 626
    .end local v6    # "jitterNanos":J
    .end local v8    # "lastFrameOffset":J
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    move-object v4, v5

    .local v4, "c":Landroid/view/Choreographer$CallbackRecord;
    :goto_1
    if-eqz v4, :cond_2

    .line 634
    :try_start_1
    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Landroid/view/Choreographer$CallbackRecord;->run(J)V

    .line 628
    iget-object v4, v4, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 626
    .end local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .end local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .end local v12    # "now":J
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 637
    .restart local v4    # "c":Landroid/view/Choreographer$CallbackRecord;
    .restart local v5    # "callbacks":Landroid/view/Choreographer$CallbackRecord;
    .restart local v12    # "now":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 638
    const/4 v11, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 640
    :cond_3
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 641
    .local v10, "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 642
    move-object v5, v10

    .line 643
    if-nez v5, :cond_3

    .line 644
    monitor-exit v14

    goto :goto_0

    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_1
    move-exception v11

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 637
    :catchall_2
    move-exception v11

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 638
    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    .line 640
    :cond_4
    iget-object v10, v5, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 641
    .restart local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    .line 642
    move-object v5, v10

    .line 643
    if-nez v5, :cond_4

    .line 644
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v11

    .end local v10    # "next":Landroid/view/Choreographer$CallbackRecord;
    :catchall_3
    move-exception v11

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v11
.end method

.method doFrame(JI)V
    .locals 19
    .param p1, "frameTimeNanos"    # J
    .param p3, "frame"    # I

    .prologue
    .line 529
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 530
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v14, :cond_0

    .line 531
    monitor-exit v15

    .line 585
    :goto_0
    return-void

    .line 540
    :cond_0
    move-wide/from16 v4, p1

    .line 541
    .local v4, "intendedFrameTimeNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 542
    .local v12, "startNanos":J
    sub-long v6, v12, p1

    .line 543
    .local v6, "jitterNanos":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    cmp-long v14, v6, v16

    if-ltz v14, :cond_2

    .line 544
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    div-long v10, v6, v16

    .line 545
    .local v10, "skippedFrames":J
    sget v14, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    int-to-long v0, v14

    move-wide/from16 v16, v0

    cmp-long v14, v10, v16

    if-ltz v14, :cond_1

    .line 546
    const-string v14, "Choreographer"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipped "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " frames!  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "The application may be doing too much work on its main thread."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    move-wide/from16 v16, v0

    rem-long v8, v6, v16

    .line 557
    .local v8, "lastFrameOffset":J
    sub-long p1, v12, v8

    .line 560
    .end local v8    # "lastFrameOffset":J
    .end local v10    # "skippedFrames":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    move-wide/from16 v16, v0

    cmp-long v14, p1, v16

    if-gez v14, :cond_3

    .line 565
    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 566
    monitor-exit v15

    goto :goto_0

    .line 571
    .end local v4    # "intendedFrameTimeNanos":J
    .end local v6    # "jitterNanos":J
    .end local v12    # "startNanos":J
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 569
    .restart local v4    # "intendedFrameTimeNanos":J
    .restart local v6    # "jitterNanos":J
    .restart local v12    # "startNanos":J
    :cond_3
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/view/Choreographer;->mFrameScheduled:Z

    .line 570
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    .line 571
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 574
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 575
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    .line 577
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v14, v1, v2}, Landroid/view/Choreographer;->doCallbacks(IJ)V

    goto/16 :goto_0
.end method

.method doScheduleCallback(I)V
    .locals 4
    .param p1, "callbackType"    # I

    .prologue
    .line 657
    iget-object v3, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 658
    :try_start_0
    iget-boolean v2, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v2, :cond_0

    .line 659
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 660
    .local v0, "now":J
    iget-object v2, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    invoke-direct {p0, v0, v1}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    .line 664
    .end local v0    # "now":J
    :cond_0
    monitor-exit v3

    .line 665
    return-void

    .line 664
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method doScheduleVsync()V
    .locals 2

    .prologue
    .line 649
    iget-object v1, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    .line 653
    :cond_0
    monitor-exit v1

    .line 654
    return-void

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 291
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-wide v2, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public getFrameIntervalNanos()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    return-wide v0
.end method

.method public getFrameTime()J
    .locals 4

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .locals 3

    .prologue
    .line 487
    iget-object v2, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_0
    iget-boolean v0, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 492
    :cond_0
    :try_start_1
    sget-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 309
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 310
    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .prologue
    .line 328
    if-nez p2, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-le p1, v0, :cond_2

    .line 332
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_2
    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 336
    return-void
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 409
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 410
    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .locals 6
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;
    .param p2, "delayMillis"    # J

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 431
    return-void
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/Runnable;
    .param p3, "token"    # Ljava/lang/Object;

    .prologue
    .line 376
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/Choreographer$FrameCallback;

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 447
    return-void
.end method

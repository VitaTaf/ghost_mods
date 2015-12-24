.class public final Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MovementMonitor"
.end annotation


# static fields
.field public static final EXTRA_GPS_SAVINGS_ON:Ljava/lang/String; = "savings_on"

.field public static final GPS_SAVINGS_CHANGE_ACTION:Ljava/lang/String; = "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

.field private static final MIN_PROPAGATION_INTERVAL:I = 0x1388

.field private static final NO_FIX_MVMT_MON_RESET_TIMEOUT:I = 0xea60

.field private static final NO_MVMT_FIX_TIMEOUT:I = 0x249f0

.field private static final NO_MVMT_NO_FIX_TIMEOUT:I = 0x1d4c0

.field private static final STATE_MON_FIX:I = 0x2

.field private static final STATE_MON_NO_FIX:I = 0x1

.field private static final STATE_PROPAGATE:I = 0x3

.field private static final STATE_SLEEP:I = 0x4

.field private static final STATE_STOP:I


# instance fields
.field private mAlarmActive:Z

.field private mCharging:Z

.field private mEndDuration:I

.field private mExpectEnd:Z

.field private mFirstCb:Z

.field private final mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

.field private final mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

.field private mPropInterval:I

.field private mPropagateTime:J

.field private mState:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;Lcom/motorola/slpc/ModalityManager;)V
    .locals 2
    .param p2, "mvmtMgr"    # Lcom/motorola/slpc/ModalityManager;

    .prologue
    const/4 v1, 0x0

    .line 2708
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2947
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;-><init>(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    .line 2709
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    .line 2710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2711
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    .line 2712
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2713
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2714
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    .line 2715
    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .prologue
    .line 2672
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return v0
.end method

.method static synthetic access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 2672
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    return p1
.end method

.method static synthetic access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .prologue
    .line 2672
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return v0
.end method

.method static synthetic access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 2672
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .prologue
    .line 2672
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 2672
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    return p1
.end method

.method static synthetic access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 2672
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    return-void
.end method

.method static synthetic access$7002(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    .param p1, "x1"    # J

    .prologue
    .line 2672
    iput-wide p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    return-wide p1
.end method

.method static synthetic access$7100(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .prologue
    .line 2672
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    .prologue
    .line 2672
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    return v0
.end method

.method private broadcastSavings(Z)V
    .locals 2
    .param p1, "savingsOn"    # Z

    .prologue
    .line 2850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.GPS_SAVINGS_CHANGE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2851
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "savings_on"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2852
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2853
    return-void
.end method

.method private propagate()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 2924
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v6, "MovementMonitor propagate"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v6, 0x3

    if-eq v1, v6, :cond_1

    .line 2926
    const-string v1, "GpsLocationProvider"

    const-string v6, "propagate() called when not propagating!"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    :goto_0
    return-void

    .line 2932
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2933
    .local v4, "now":J
    iget-wide v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    sub-long v2, v4, v6

    .line 2934
    .local v2, "elapsed":J
    iput-wide v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J

    .line 2935
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setTime(J)V

    .line 2936
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    mul-long v8, v2, v10

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 2938
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6400(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/ILocationManager;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$6300(Lcom/android/server/location/GpsLocationProvider;)Landroid/location/Location;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V

    .line 2939
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v1, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$6502(Lcom/android/server/location/GpsLocationProvider;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2944
    .end local v2    # "elapsed":J
    .end local v4    # "now":J
    :goto_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v7

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 2940
    :catch_0
    move-exception v0

    .line 2941
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GpsLocationProvider"

    const-string v6, "RemoteException calling reportLocation"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized start(Z)V
    .locals 8
    .param p1, "fix"    # Z

    .prologue
    const v3, 0x249f0

    const/16 v0, 0x1388

    const/4 v7, 0x1

    .line 2875
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2876
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 2881
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    const v2, 0xea60

    if-lt v1, v2, :cond_2

    .line 2882
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor start, fix interval too long"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2910
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2886
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v1

    if-le v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    :cond_3
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    .line 2888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z

    .line 2890
    if-eqz p1, :cond_6

    .line 2891
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    if-gt v0, v3, :cond_5

    .line 2892
    const v0, 0x249f0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    .line 2900
    :goto_1
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovementMonitor start, prop interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    const-wide/16 v2, 0x3e8

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/slpc/ModalityManager;->addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2905
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to register movement listener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2875
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2894
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 2897
    :cond_6
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I

    goto :goto_1

    .line 2907
    :cond_7
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GpsLocationProvider"

    const-string v1, "registered MovementListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_8
    if-eqz p1, :cond_9

    const/4 v0, 0x2

    :goto_2
    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_9
    move v0, v7

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized cancelAlarm()V
    .locals 2

    .prologue
    .line 2730
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mAlarmActive:Z

    .line 2731
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2732
    monitor-exit p0

    return-void

    .line 2730
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 2747
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropagating()Z
    .locals 2

    .prologue
    .line 2751
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public monitor(Z)V
    .locals 3
    .param p1, "fix"    # Z

    .prologue
    .line 2856
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eqz v0, :cond_1

    .line 2857
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "monitor() ignoring monitor for charging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_0
    :goto_0
    return-void

    .line 2861
    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2863
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor monitor, fix in mon fix state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2867
    :cond_2
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MovementMonitor monitor, fix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fix interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->cancelAlarm()V

    .line 2871
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->start(Z)V

    goto :goto_0
.end method

.method public declared-synchronized receivedAlarm()V
    .locals 3

    .prologue
    .line 2735
    monitor-enter p0

    :try_start_0
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALARM_MVMT_MON alarmActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mAlarmActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mAlarmActive:Z

    if-eqz v0, :cond_1

    .line 2737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mAlarmActive:Z

    .line 2738
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isPropagating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2739
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->propagate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2741
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->monitor(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAlarm(I)V
    .locals 6
    .param p1, "triggerOffset"    # I

    .prologue
    .line 2722
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mAlarmActive:Z

    .line 2723
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$5700(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    monitor-exit p0

    return-void

    .line 2722
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNoFixAlarm(I)V
    .locals 0
    .param p1, "triggerOffset"    # I

    .prologue
    .line 2718
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setAlarm(I)V

    .line 2719
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 2914
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2921
    :goto_0
    monitor-exit p0

    return-void

    .line 2918
    :cond_0
    :try_start_1
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    .line 2920
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mMvmtMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCharging(Z)V
    .locals 6
    .param p1, "charging"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2778
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    if-eq v1, p1, :cond_3

    .line 2779
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2780
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "stopping for charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 2784
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 2786
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .line 2789
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    .line 2790
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2793
    if-eqz v0, :cond_1

    .line 2794
    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 2798
    .end local v0    # "changed":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    .line 2799
    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$5900(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2801
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMon:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    move-result-object v1

    const v3, 0xea60

    invoke-virtual {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 2803
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2805
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mCharging:Z

    .line 2807
    :cond_3
    return-void

    .line 2790
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2803
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public updateFixInterval()V
    .locals 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v0

    const v1, 0xea60

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2756
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "MovementMonitor stopping for long fix interval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 2759
    :cond_1
    return-void
.end method

.method public updateHibernate()V
    .locals 2

    .prologue
    .line 2762
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GpsLocationProvider"

    const-string v1, "updateHibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2764
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GpsLocationProvider"

    const-string v1, "stopping for hibernate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->stop()V

    .line 2767
    :cond_2
    return-void
.end method

.method public updateNoFix()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2771
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    if-eq v0, v1, :cond_0

    .line 2772
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->setNoFixAlarm(I)V

    .line 2773
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I

    .line 2775
    :cond_0
    return-void
.end method

.method public updateSavings(ZZ)Z
    .locals 10
    .param p1, "savingsOn"    # Z
    .param p2, "broadcast"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 2812
    const-wide/16 v2, 0x0

    .line 2814
    .local v2, "smartGpsUptime":J
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSaving:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 2815
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mSaving:Z
    invoke-static {v1, p1}, Lcom/android/server/location/GpsLocationProvider;->access$6002(Lcom/android/server/location/GpsLocationProvider;Z)Z

    .line 2816
    if-eqz p2, :cond_0

    .line 2817
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V

    .line 2820
    :cond_0
    if-eqz p1, :cond_1

    .line 2821
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStartTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$6102(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.instrumentation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2823
    .local v0, "instrumentationIntent":Landroid/content/Intent;
    const-string v1, "com.motorola.location.insttype"

    const-string v4, "smartGpsCount"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2824
    const-string v1, "com.motorola.location.instincvalue"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2825
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2844
    .end local v0    # "instrumentationIntent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    .line 2846
    :goto_1
    return v1

    .line 2827
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStopTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$6202(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2828
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStopTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStartTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 2829
    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    .line 2830
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.location.instrumentation"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2831
    .restart local v0    # "instrumentationIntent":Landroid/content/Intent;
    const-string v1, "com.motorola.location.insttype"

    const-string v4, "smartGpsUptime"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2832
    const-string v1, "com.motorola.location.instincvalue"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2833
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.motorola.android.permission.LOC_INST_RECEIVE"

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2834
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2835
    const-string v1, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending smartGpsUptime Intent - mSmartGpsStopTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStopTime:J
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$6200(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSmartGpsStartTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStartTime:J
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$6100(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " smartGpsUptime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    .end local v0    # "instrumentationIntent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStopTime:J
    invoke-static {v1, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$6202(Lcom/android/server/location/GpsLocationProvider;J)J

    .line 2841
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mSmartGpsStartTime:J
    invoke-static {v1, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->access$6102(Lcom/android/server/location/GpsLocationProvider;J)J

    goto/16 :goto_0

    .line 2846
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.class public Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
.super Ljava/lang/Object;
.source "GestureSharingModalitySHubHandler.java"


# static fields
.field private static final DEFAULT_END_DURATION:J = 0xea60L

.field private static final DEFAULT_START_DURATION:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "GSModalitySHubHandler"

.field private static sInstance:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureSharingReceiver:Landroid/content/BroadcastReceiver;

.field private mLastNotified:Ljava/lang/String;

.field private mModalityMgr:Lcom/motorola/slpc/ModalityManager;

.field private mModalityRunningListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

.field private mModalityVehicleListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

.field private mModalityWalkingListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

.field private mRegisterAll:Z

.field private mRunningExpire:J

.field private mRunningRegistered:Z

.field private mVehicleExpire:J

.field private mVehicleRegistered:Z

.field private mWalkingExpire:J

.field private mWalkingRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mLastNotified:Ljava/lang/String;

    .line 33
    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingExpire:J

    .line 34
    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningExpire:J

    .line 35
    iput-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleExpire:J

    .line 36
    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRegisterAll:Z

    .line 38
    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingRegistered:Z

    .line 39
    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningRegistered:Z

    .line 40
    iput-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleRegistered:Z

    .line 42
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$1;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$1;-><init>(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityWalkingListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    .line 53
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$2;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$2;-><init>(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityRunningListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    .line 64
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$3;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$3;-><init>(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityVehicleListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    .line 75
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;-><init>(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    iput-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mGestureSharingReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mContext:Landroid/content/Context;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;Lcom/motorola/slpc/Transition;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
    .param p1, "x1"    # Lcom/motorola/slpc/Transition;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->handleModalityChange(Lcom/motorola/slpc/Transition;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->registerWalking(JJJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->registerRunning(JJJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;JJJ)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->registerVehicle(JJJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterWalking()V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterRunning()V

    return-void
.end method

.method static synthetic access$600(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterVehicle()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const-class v1, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    invoke-direct {v0, p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    .line 138
    :cond_0
    sget-object v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->sInstance:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized handleModalityChange(Lcom/motorola/slpc/Transition;)V
    .locals 3
    .param p1, "transition"    # Lcom/motorola/slpc/Transition;

    .prologue
    .line 269
    monitor-enter p0

    if-nez p1, :cond_0

    .line 297
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/slpc/Transition;->getNewState()I

    move-result v0

    .line 271
    .local v0, "newState":I
    sparse-switch v0, :sswitch_data_0

    .line 291
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "Modality Change -> NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_1
    const-string v1, "MODALITY_NONE"

    invoke-direct {p0, v1}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyGestureSharing(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterExpired()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    .end local v0    # "newState":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 273
    .restart local v0    # "newState":I
    :sswitch_0
    :try_start_1
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "Modality Change -> WALKING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    const-string v1, "MODALITY_WALKING"

    invoke-direct {p0, v1}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyGestureSharing(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :sswitch_1
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "Modality Change -> RUNNING"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3
    const-string v1, "MODALITY_RUNNING"

    invoke-direct {p0, v1}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyGestureSharing(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :sswitch_2
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 286
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "Modality Change -> VEHICLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_4
    const-string v1, "MODALITY_VEHICLE"

    invoke-direct {p0, v1}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyGestureSharing(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private declared-synchronized notifyGestureSharing(Ljava/lang/String;)V
    .locals 2
    .param p1, "modality"    # Ljava/lang/String;

    .prologue
    .line 300
    monitor-enter p0

    if-nez p1, :cond_1

    .line 306
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 301
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mLastNotified:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mLastNotified:Ljava/lang/String;

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.internal.intent.action.GS_MODALITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.motorola.internal.intent.action.GS_NEW_MODALITY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 300
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyIfAllUnregistered()V
    .locals 2

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingRegistered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningRegistered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleRegistered:Z

    if-nez v0, :cond_1

    .line 338
    const-string v0, "GSModalitySHubHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "All Modalities Un-Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    const-string v0, "MODALITY_UNREGISTERED"

    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyGestureSharing(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_1
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private register(ILcom/motorola/slpc/ModalityManager$ModalityListener;JJ)Z
    .locals 9
    .param p1, "modality"    # I
    .param p2, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 235
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "Registering for Modality"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    if-nez v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "modality"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager;

    iput-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    .line 243
    :cond_1
    const/4 v8, 0x0

    .line 245
    .local v8, "status":Z
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    if-eqz v1, :cond_3

    .line 246
    iget-boolean v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRegisterAll:Z

    if-eqz v1, :cond_2

    const p1, 0xffff

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    move-object v2, p2

    move v3, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/slpc/ModalityManager;->addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJ)Z

    move-result v8

    .line 253
    :cond_3
    if-eqz v8, :cond_5

    .line 254
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "Modality registration SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    invoke-virtual {v1}, Lcom/motorola/slpc/ModalityManager;->getModality()Lcom/motorola/slpc/Transition;

    move-result-object v0

    .line 258
    .local v0, "lastTransition":Lcom/motorola/slpc/Transition;
    invoke-direct {p0, v0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->handleModalityChange(Lcom/motorola/slpc/Transition;)V

    .line 259
    const/4 v1, 0x1

    .line 264
    .end local v0    # "lastTransition":Lcom/motorola/slpc/Transition;
    :goto_0
    return v1

    .line 261
    :cond_5
    const-string v1, "GSModalitySHubHandler"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 262
    const-string v1, "GSModalitySHubHandler"

    const-string v2, "ERROR - Could not register for Modality"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerRunning(JJJ)V
    .locals 9
    .param p1, "expire"    # J
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    const/4 v8, 0x3

    .line 169
    const-string v0, "GSModalitySHubHandler"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Register Running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterRunning()V

    .line 173
    iput-wide p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningExpire:J

    .line 174
    const/16 v2, 0x10

    iget-object v3, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityRunningListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->register(ILcom/motorola/slpc/ModalityManager$ModalityListener;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "GSModalitySHubHandler"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Running successfully registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningRegistered:Z

    .line 181
    :cond_2
    return-void
.end method

.method private registerVehicle(JJJ)V
    .locals 9
    .param p1, "expire"    # J
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    const/4 v8, 0x3

    .line 184
    const-string v0, "GSModalitySHubHandler"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Register Vehicle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterVehicle()V

    .line 188
    iput-wide p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleExpire:J

    .line 189
    const/16 v2, 0x20

    iget-object v3, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityVehicleListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->register(ILcom/motorola/slpc/ModalityManager$ModalityListener;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    const-string v0, "GSModalitySHubHandler"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Vehicle successfully registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleRegistered:Z

    .line 196
    :cond_2
    return-void
.end method

.method private registerWalking(JJJ)V
    .locals 9
    .param p1, "expire"    # J
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    const/4 v8, 0x3

    .line 154
    const-string v0, "GSModalitySHubHandler"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Register Walking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterWalking()V

    .line 158
    iput-wide p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingExpire:J

    .line 159
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityWalkingListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    move-object v1, p0

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->register(ILcom/motorola/slpc/ModalityManager$ModalityListener;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "GSModalitySHubHandler"

    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Walking successfully registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingRegistered:Z

    .line 166
    :cond_2
    return-void
.end method

.method private declared-synchronized unregisterExpired()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 309
    monitor-enter p0

    :try_start_0
    const-string v2, "GSModalitySHubHandler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const-string v2, "GSModalitySHubHandler"

    const-string v3, "Checking expires"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, "now":J
    const-string v2, "GSModalitySHubHandler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const-string v2, "GSModalitySHubHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expire walking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingExpire:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1
    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingExpire:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingExpire:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 318
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterWalking()V

    .line 321
    :cond_2
    const-string v2, "GSModalitySHubHandler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    const-string v2, "GSModalitySHubHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expire running: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningExpire:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningExpire:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningExpire:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterRunning()V

    .line 328
    :cond_4
    const-string v2, "GSModalitySHubHandler"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 329
    const-string v2, "GSModalitySHubHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expire vehicle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleExpire:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_5
    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleExpire:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    iget-wide v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleExpire:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 332
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterVehicle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_6
    monitor-exit p0

    return-void

    .line 309
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private unregisterRunning()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "GSModalitySHubHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Unregister Running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityRunningListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;)V

    .line 217
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningExpire:J

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mRunningRegistered:Z

    .line 219
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyIfAllUnregistered()V

    .line 220
    return-void
.end method

.method private unregisterVehicle()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "GSModalitySHubHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Unregister Vehicle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityVehicleListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;)V

    .line 229
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleExpire:J

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mVehicleRegistered:Z

    .line 231
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyIfAllUnregistered()V

    .line 232
    return-void
.end method

.method private unregisterWalking()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "GSModalitySHubHandler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "GSModalitySHubHandler"

    const-string v1, "Unregister Walking"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityMgr:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mModalityWalkingListener:Lcom/motorola/slpc/ModalityManager$ModalityListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;)V

    .line 205
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingExpire:J

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mWalkingRegistered:Z

    .line 207
    invoke-direct {p0}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->notifyIfAllUnregistered()V

    .line 208
    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .prologue
    .line 146
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 147
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.internal.intent.action.GS_REGISTER_SH_MODALITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.motorola.internal.intent.action.GS_UNREGISTER_SH_MODALITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->mGestureSharingReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.motorola.blast.permission.TRIGGER_BLAST_ACTION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 151
    return-void
.end method

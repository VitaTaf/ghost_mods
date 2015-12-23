.class public Lcom/motorola/slpc/ModalityManager;
.super Ljava/lang/Object;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/ModalityManager$VehicleListener;,
        Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;,
        Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$MovementListener;,
        Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$StowedListener;,
        Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$OrientationListener;,
        Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$ModalityListener;,
        Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;,
        Lcom/motorola/slpc/ModalityManager$StatusListener;,
        Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DONT_CARE:I = 0x0

.field public static final DURATION_IGNORE:J = 0x7fffffffffffffffL

.field public static final MODALITY_ALL:I = 0xffff

.field public static final MODALITY_MICROMOTION:I = 0x4

.field public static final MODALITY_MOTIONLESS:I = 0x2

.field public static final MODALITY_RUNNING:I = 0x10

.field public static final MODALITY_UNKNOWN:I = 0x1

.field public static final MODALITY_VEHICLE:I = 0x20

.field public static final MODALITY_WALKING:I = 0x8

.field public static final ORIENTATION_ALL:I = 0xffff

.field public static final ORIENTATION_FACE_DOWN:I = 0x4

.field public static final ORIENTATION_FACE_SIDEWAYS:I = 0x8

.field public static final ORIENTATION_FACE_UP:I = 0x2

.field public static final ORIENTATION_UNKNOWN:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x0

.field public static final STOWED_ALL:I = 0xffff

.field public static final STOWED_FALSE:I = 0x4

.field public static final STOWED_TRUE:I = 0x2

.field public static final STOWED_UNKNOWN:I = 0x1

.field private static final SUPPORTED_ALL_ALGOS:I = 0xffff

.field private static final SUPPORTED_ENHANCED_VEHICLE:I = 0x100

.field private static final SUPPORTED_MODALITY_ALL:I = 0x3f

.field private static final SUPPORTED_MODALITY_MICROMOTION:I = 0x4

.field private static final SUPPORTED_MODALITY_MOTIONLESS:I = 0x2

.field private static final SUPPORTED_MODALITY_RUNNING:I = 0x10

.field private static final SUPPORTED_MODALITY_UNKNOWN:I = 0x1

.field private static final SUPPORTED_MODALITY_VEHICLE:I = 0x20

.field private static final SUPPORTED_MODALITY_WALKING:I = 0x8

.field private static final SUPPORTED_ORIENTATION_FACE_UP_DN:I = 0x200

.field private static final SUPPORTED_STOWED:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ModalityManager"


# instance fields
.field private mAccumMvmtListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;",
            "Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMainLooper:Landroid/os/Looper;

.field private mModalityListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$ModalityListener;",
            "Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mMovementListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$MovementListener;",
            "Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientationListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$OrientationListener;",
            "Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/motorola/slpc/IModalityService;

.field private mStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$StatusListener;",
            "Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mStowedListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$StowedListener;",
            "Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedAlgos:I

.field private mVehicleListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/slpc/ModalityManager$VehicleListener;",
            "Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/slpc/IModalityService;Landroid/os/Looper;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/motorola/slpc/IModalityService;
    .param p3, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    .line 324
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    .line 597
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    .line 845
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    .line 1093
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    .line 1268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    .line 1552
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    .line 197
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    .line 199
    iput-object p3, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "ModalityManager"

    const-string v2, "Supported modality config not found. Default to all algos."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const v1, 0xffff

    iput v1, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/motorola/slpc/ModalityManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/slpc/ModalityManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static modalityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "modality"    # I

    .prologue
    .line 1501
    const-string/jumbo v0, "undefined"

    .line 1502
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1511
    :goto_0
    return-object v0

    .line 1503
    :sswitch_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 1504
    :sswitch_1
    const-string/jumbo v0, "motionless"

    goto :goto_0

    .line 1505
    :sswitch_2
    const-string/jumbo v0, "micromotion"

    goto :goto_0

    .line 1506
    :sswitch_3
    const-string/jumbo v0, "walking"

    goto :goto_0

    .line 1507
    :sswitch_4
    const-string/jumbo v0, "running"

    goto :goto_0

    .line 1508
    :sswitch_5
    const-string/jumbo v0, "vehicle"

    goto :goto_0

    .line 1509
    :sswitch_6
    const-string v0, "all"

    goto :goto_0

    .line 1502
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0xffff -> :sswitch_6
    .end sparse-switch
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 1522
    const-string/jumbo v0, "undefined"

    .line 1523
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1530
    :goto_0
    return-object v0

    .line 1524
    :sswitch_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 1525
    :sswitch_1
    const-string/jumbo v0, "up"

    goto :goto_0

    .line 1526
    :sswitch_2
    const-string v0, "down"

    goto :goto_0

    .line 1527
    :sswitch_3
    const-string/jumbo v0, "sideways"

    goto :goto_0

    .line 1528
    :sswitch_4
    const-string v0, "all"

    goto :goto_0

    .line 1523
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0xffff -> :sswitch_4
    .end sparse-switch
.end method

.method public static stowedToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stowedState"    # I

    .prologue
    .line 1541
    const-string/jumbo v0, "undefined"

    .line 1542
    .local v0, "name":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 1548
    :goto_0
    return-object v0

    .line 1543
    :sswitch_0
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 1544
    :sswitch_1
    const-string/jumbo v0, "stowed"

    goto :goto_0

    .line 1545
    :sswitch_2
    const-string/jumbo v0, "not stowed"

    goto :goto_0

    .line 1546
    :sswitch_3
    const-string v0, "all"

    goto :goto_0

    .line 1542
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0xffff -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public addAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;III)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;
    .param p2, "time"    # I
    .param p3, "distance"    # I
    .param p4, "holdoff"    # I

    .prologue
    .line 1429
    iget-object v5, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/slpc/ModalityManager;->addAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;IIILandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;IIILandroid/os/Looper;)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;
    .param p2, "time"    # I
    .param p3, "distance"    # I
    .param p4, "holdoff"    # I
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 1382
    const-string v3, "ModalityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\naddAccumulatedMovementListener(), package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_0

    .line 1385
    const-string v3, "ModalityManager"

    const-string v4, "accumulated movement not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :goto_0
    return v2

    .line 1389
    :cond_0
    if-gez p2, :cond_1

    .line 1390
    const/4 p2, 0x0

    .line 1392
    :cond_1
    if-gez p3, :cond_2

    .line 1393
    const/4 p3, 0x0

    .line 1395
    :cond_2
    if-gez p4, :cond_3

    .line 1396
    const/4 p4, 0x0

    .line 1400
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :try_start_1
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1402
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-nez v1, :cond_4

    .line 1403
    new-instance v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    invoke-direct {v1, p0, p1, p5}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;Landroid/os/Looper;)V

    .line 1405
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_4
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v1, p2, p3, p4}, Lcom/motorola/slpc/IModalityService;->addAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;III)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1406
    const-string v3, "ModalityManager"

    const-string v5, "mService.addAccumulatedMovementListener() succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    monitor-exit v4

    .line 1417
    const/4 v2, 0x1

    goto :goto_0

    .line 1409
    :cond_5
    const-string v3, "ModalityManager"

    const-string v5, "mService.addAccumulatedMovementListener() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    monitor-exit v4

    goto :goto_0

    .line 1412
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1413
    :catch_0
    move-exception v0

    .line 1414
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "ModalityManager"

    const-string v4, "addAccumulatedMovementListener(): Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJ)Z
    .locals 9
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p2, "modalities"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 532
    iget-object v8, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/motorola/slpc/ModalityManager;->addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;IJJLandroid/os/Looper;)Z
    .locals 11
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p2, "modalities"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 476
    const-string v3, "ModalityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\naddModalityListener(), package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    :cond_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    :cond_2
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    :cond_3
    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    :cond_4
    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_6

    .line 490
    :cond_5
    const-string v3, "ModalityManager"

    const-string v5, "Unsupported modality"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v3, 0x0

    .line 520
    :goto_0
    return v3

    .line 494
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-gez v3, :cond_7

    .line 495
    const-wide/16 p3, 0x0

    .line 497
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v3, p5, v6

    if-gez v3, :cond_8

    .line 498
    const-wide/16 p5, 0x0

    .line 502
    :cond_8
    :try_start_0
    iget-object v10, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :try_start_1
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;

    .line 504
    .local v4, "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    if-nez v4, :cond_9

    .line 505
    new-instance v4, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;

    .end local v4    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    move-object/from16 v0, p7

    invoke-direct {v4, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$ModalityListener;Landroid/os/Looper;)V

    .line 507
    .restart local v4    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :cond_9
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/motorola/slpc/IModalityService;->addModalityListener(Lcom/motorola/slpc/IModalityListener;IJJ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 509
    const-string v3, "ModalityManager"

    const-string v5, "mService.addModalityListener() succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    monitor-exit v10

    .line 520
    const/4 v3, 0x1

    goto :goto_0

    .line 512
    :cond_a
    const-string v3, "ModalityManager"

    const-string v5, "mService.addModalityListener() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v3, 0x0

    monitor-exit v10

    goto :goto_0

    .line 515
    .end local v4    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 516
    :catch_0
    move-exception v2

    .line 517
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "ModalityManager"

    const-string v5, "addModalityListener(): Exception"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJ)Z
    .locals 8
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;
    .param p2, "startDuration"    # J
    .param p4, "endDuration"    # J

    .prologue
    .line 1247
    iget-object v6, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/motorola/slpc/ModalityManager;->addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;JJLandroid/os/Looper;)Z
    .locals 12
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;
    .param p2, "startDuration"    # J
    .param p4, "endDuration"    # J
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    .line 1202
    const-string v2, "ModalityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\naddMovementListener(), package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget v2, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 1206
    :cond_0
    const-string v2, "ModalityManager"

    const-string/jumbo v4, "meaningful movement not supported"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    .line 1235
    :goto_0
    return v2

    .line 1210
    :cond_1
    cmp-long v2, p2, v6

    if-gez v2, :cond_2

    .line 1211
    const-wide/16 p2, 0x0

    .line 1213
    :cond_2
    cmp-long v2, p4, v6

    if-gez v2, :cond_3

    .line 1214
    const-wide/16 p4, 0x0

    .line 1218
    :cond_3
    :try_start_0
    iget-object v10, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :try_start_1
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    .line 1220
    .local v3, "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    if-nez v3, :cond_4

    .line 1221
    new-instance v3, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    .end local v3    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    move-object/from16 v0, p6

    invoke-direct {v3, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$MovementListener;Landroid/os/Looper;)V

    .line 1223
    .restart local v3    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :cond_4
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/motorola/slpc/IModalityService;->addMovementListener(Lcom/motorola/slpc/IMovementListener;JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1224
    const-string v2, "ModalityManager"

    const-string v4, "mService.addMovementListener() succeeded"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    monitor-exit v10

    .line 1235
    const/4 v2, 0x1

    goto :goto_0

    .line 1227
    :cond_5
    const-string v2, "ModalityManager"

    const-string v4, "mService.addMovementListener() failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    monitor-exit v10

    move v2, v9

    goto :goto_0

    .line 1230
    .end local v3    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1231
    :catch_0
    move-exception v8

    .line 1232
    .local v8, "ex":Ljava/lang/Exception;
    const-string v2, "ModalityManager"

    const-string v4, "addMovementListener(): Exception"

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v9

    .line 1233
    goto :goto_0
.end method

.method public addOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;IJJ)Z
    .locals 9
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p2, "orientations"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 780
    iget-object v8, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/motorola/slpc/ModalityManager;->addOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;IJJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;IJJLandroid/os/Looper;)Z
    .locals 11
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p2, "orientations"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 735
    const-string v3, "ModalityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\naddOrientationListener(), package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit16 v3, v3, 0x200

    if-nez v3, :cond_0

    .line 738
    const-string v3, "ModalityManager"

    const-string/jumbo v5, "orientation face up/dn not supported"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/4 v3, 0x0

    .line 768
    :goto_0
    return v3

    .line 742
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-gez v3, :cond_1

    .line 743
    const-wide/16 p3, 0x0

    .line 745
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, p5, v6

    if-gez v3, :cond_2

    .line 746
    const-wide/16 p5, 0x0

    .line 750
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :try_start_1
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    .line 752
    .local v4, "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    if-nez v4, :cond_3

    .line 753
    new-instance v4, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    .end local v4    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    move-object/from16 v0, p7

    invoke-direct {v4, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$OrientationListener;Landroid/os/Looper;)V

    .line 755
    .restart local v4    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :cond_3
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/motorola/slpc/IModalityService;->addOrientationListener(Lcom/motorola/slpc/IOrientationListener;IJJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 757
    const-string v3, "ModalityManager"

    const-string v5, "mService.addOrientationListener() succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    monitor-exit v10

    .line 768
    const/4 v3, 0x1

    goto :goto_0

    .line 760
    :cond_4
    const-string v3, "ModalityManager"

    const-string v5, "mService.addOrientationListener() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v3, 0x0

    monitor-exit v10

    goto :goto_0

    .line 763
    .end local v4    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 764
    :catch_0
    move-exception v2

    .line 765
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "ModalityManager"

    const-string v5, "addOrientationListener(): Exception"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addStatusListener(Lcom/motorola/slpc/ModalityManager$StatusListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StatusListener;

    .prologue
    .line 269
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 271
    const/4 v1, 0x1

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    :try_start_0
    new-instance v2, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    invoke-direct {v2, p0, p1}, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$StatusListener;)V

    .line 275
    .local v2, "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v2}, Lcom/motorola/slpc/IModalityService;->addStatusListener(Lcom/motorola/slpc/IStatusListener;)Z

    move-result v1

    .line 276
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 277
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    .end local v1    # "result":Z
    .end local v2    # "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ModalityManager"

    const-string v4, "addStatusListener(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public addStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;IJJ)Z
    .locals 9
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;
    .param p2, "stowedStates"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J

    .prologue
    .line 1028
    iget-object v8, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/motorola/slpc/ModalityManager;->addStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;IJJLandroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;IJJLandroid/os/Looper;)Z
    .locals 11
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;
    .param p2, "stowedStates"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .param p7, "looper"    # Landroid/os/Looper;

    .prologue
    .line 983
    const-string v3, "ModalityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\naddStowedListener(), package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 986
    const-string v3, "ModalityManager"

    const-string/jumbo v5, "stowed not supported"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v3, 0x0

    .line 1016
    :goto_0
    return v3

    .line 990
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-gez v3, :cond_1

    .line 991
    const-wide/16 p3, 0x0

    .line 993
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v3, p5, v6

    if-gez v3, :cond_2

    .line 994
    const-wide/16 p5, 0x0

    .line 998
    :cond_2
    :try_start_0
    iget-object v10, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :try_start_1
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    .line 1000
    .local v4, "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    if-nez v4, :cond_3

    .line 1001
    new-instance v4, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    .end local v4    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    move-object/from16 v0, p7

    invoke-direct {v4, p0, p1, v0}, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$StowedListener;Landroid/os/Looper;)V

    .line 1003
    .restart local v4    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :cond_3
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/motorola/slpc/IModalityService;->addStowedListener(Lcom/motorola/slpc/IStowedListener;IJJ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1005
    const-string v3, "ModalityManager"

    const-string v5, "mService.addStowedListener() succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    monitor-exit v10

    .line 1016
    const/4 v3, 0x1

    goto :goto_0

    .line 1008
    :cond_4
    const-string v3, "ModalityManager"

    const-string v5, "mService.addStowedListener() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v3, 0x0

    monitor-exit v10

    goto :goto_0

    .line 1011
    .end local v4    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1012
    :catch_0
    move-exception v2

    .line 1013
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "ModalityManager"

    const-string v5, "addStowedListener(): Exception"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1014
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$VehicleListener;

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->addVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;Landroid/os/Looper;)Z

    move-result v0

    return v0
.end method

.method public addVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;Landroid/os/Looper;)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$VehicleListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 1653
    const-string v3, "ModalityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\naddVehicleListener(), package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget v3, p0, Lcom/motorola/slpc/ModalityManager;->mSupportedAlgos:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    .line 1656
    const-string v3, "ModalityManager"

    const-string v4, "enhanced vehicle detection not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    :goto_0
    return v2

    .line 1661
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    :try_start_1
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;

    .line 1663
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    if-nez v1, :cond_1

    .line 1664
    new-instance v1, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;

    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    invoke-direct {v1, p0, p1, p2}, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$VehicleListener;Landroid/os/Looper;)V

    .line 1666
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :cond_1
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v1}, Lcom/motorola/slpc/IModalityService;->addVehicleListener(Lcom/motorola/slpc/IVehicleListener;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1667
    const-string v3, "ModalityManager"

    const-string v5, "mService.addVehicleListener() succeeded"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    monitor-exit v4

    .line 1678
    const/4 v2, 0x1

    goto :goto_0

    .line 1670
    :cond_2
    const-string v3, "ModalityManager"

    const-string v5, "mService.addVehicleListener() failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    monitor-exit v4

    goto :goto_0

    .line 1673
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "ModalityManager"

    const-string v4, "addVehicleListener(): Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccumulatedDistance(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .prologue
    const/4 v2, 0x0

    .line 1481
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1482
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-nez v1, :cond_0

    .line 1483
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedDistance(): null transport"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :goto_0
    return v2

    .line 1486
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v1}, Lcom/motorola/slpc/IModalityService;->getAccumulatedDistance(Lcom/motorola/slpc/IAccumulatedMovementListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1487
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedDistance(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAccumulatedTime(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .prologue
    const/4 v2, 0x0

    .line 1460
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1461
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-nez v1, :cond_0

    .line 1462
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedTime(): null transport"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :goto_0
    return v2

    .line 1465
    .restart local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v3, v1}, Lcom/motorola/slpc/IModalityService;->getAccumulatedTime(Lcom/motorola/slpc/IAccumulatedMovementListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1466
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ModalityManager"

    const-string v4, "getAccumulatedTime(): RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getModality()Lcom/motorola/slpc/Transition;
    .locals 4

    .prologue
    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getModality()Lcom/motorola/slpc/Transition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 593
    .local v1, "transition":Lcom/motorola/slpc/Transition;
    :goto_0
    return-object v1

    .line 589
    .end local v1    # "transition":Lcom/motorola/slpc/Transition;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getModality(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    new-instance v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v1}, Lcom/motorola/slpc/Transition;-><init>()V

    .restart local v1    # "transition":Lcom/motorola/slpc/Transition;
    goto :goto_0
.end method

.method public getOrientation()Lcom/motorola/slpc/Transition;
    .locals 4

    .prologue
    .line 836
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getOrientation()Lcom/motorola/slpc/Transition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 841
    .local v1, "transition":Lcom/motorola/slpc/Transition;
    :goto_0
    return-object v1

    .line 837
    .end local v1    # "transition":Lcom/motorola/slpc/Transition;
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getOrientation(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    new-instance v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v1}, Lcom/motorola/slpc/Transition;-><init>()V

    .restart local v1    # "transition":Lcom/motorola/slpc/Transition;
    goto :goto_0
.end method

.method public getStatus()I
    .locals 4

    .prologue
    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    .local v1, "status":I
    :goto_0
    return v1

    .line 315
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getStatus(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    const/4 v1, 0x0

    .restart local v1    # "status":I
    goto :goto_0
.end method

.method public getStowed()Lcom/motorola/slpc/Transition;
    .locals 4

    .prologue
    .line 1084
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2}, Lcom/motorola/slpc/IModalityService;->getStowed()Lcom/motorola/slpc/Transition;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1089
    .local v1, "transition":Lcom/motorola/slpc/Transition;
    :goto_0
    return-object v1

    .line 1085
    .end local v1    # "transition":Lcom/motorola/slpc/Transition;
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string v3, "getStowed(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    new-instance v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v1}, Lcom/motorola/slpc/Transition;-><init>()V

    .restart local v1    # "transition":Lcom/motorola/slpc/Transition;
    goto :goto_0
.end method

.method public removeAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .prologue
    .line 1440
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveAccumulatedMovementListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mAccumMvmtListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;

    .line 1443
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    if-eqz v1, :cond_0

    .line 1444
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeAccumulatedMovementListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;

    .prologue
    .line 568
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;I)V

    .line 569
    return-void
.end method

.method public removeModalityListener(Lcom/motorola/slpc/ModalityManager$ModalityListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$ModalityListener;
    .param p2, "modalities"    # I

    .prologue
    .line 549
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveModalityListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mModalityListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;

    .line 552
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    if-eqz v1, :cond_0

    .line 553
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2}, Lcom/motorola/slpc/IModalityService;->removeModalityListener(Lcom/motorola/slpc/IModalityListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$ModalityListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeModalityListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;

    .prologue
    .line 1256
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveMovementListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mMovementListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    .line 1259
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    if-eqz v1, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeMovementListener(Lcom/motorola/slpc/IMovementListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeMovementListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;

    .prologue
    .line 816
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;I)V

    .line 817
    return-void
.end method

.method public removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p2, "orientations"    # I

    .prologue
    .line 797
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveOrientationListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mOrientationListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    .line 800
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    if-eqz v1, :cond_0

    .line 801
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2}, Lcom/motorola/slpc/IModalityService;->removeOrientationListener(Lcom/motorola/slpc/IOrientationListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeOrientationListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeStatusListener(Lcom/motorola/slpc/ModalityManager$StatusListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StatusListener;

    .prologue
    .line 294
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    .line 295
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    if-eqz v1, :cond_0

    .line 296
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeStatusListener(Lcom/motorola/slpc/IStatusListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeStatusListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;

    .prologue
    .line 1062
    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/motorola/slpc/ModalityManager;->removeStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;I)V

    .line 1063
    return-void
.end method

.method public removeStowedListener(Lcom/motorola/slpc/ModalityManager$StowedListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$StowedListener;
    .param p2, "stowedStates"    # I

    .prologue
    .line 1043
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveStowedListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :try_start_0
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mStowedListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    .line 1046
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    if-eqz v1, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1, p2}, Lcom/motorola/slpc/IModalityService;->removeStowedListener(Lcom/motorola/slpc/IStowedListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;
    :cond_0
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v0

    .line 1050
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeStowedListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeVehicleListener(Lcom/motorola/slpc/ModalityManager$VehicleListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/ModalityManager$VehicleListener;

    .prologue
    .line 1697
    const-string v2, "ModalityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nremoveVehicleListener(), package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :try_start_0
    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :try_start_1
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mVehicleListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;

    .line 1701
    .local v1, "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    if-eqz v1, :cond_0

    .line 1702
    iget-object v2, p0, Lcom/motorola/slpc/ModalityManager;->mService:Lcom/motorola/slpc/IModalityService;

    invoke-interface {v2, v1}, Lcom/motorola/slpc/IModalityService;->removeVehicleListener(Lcom/motorola/slpc/IVehicleListener;)V

    .line 1704
    :cond_0
    monitor-exit v3

    .line 1708
    .end local v1    # "transport":Lcom/motorola/slpc/ModalityManager$VehicleListenerTransport;
    :goto_0
    return-void

    .line 1704
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1705
    :catch_0
    move-exception v0

    .line 1706
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ModalityManager"

    const-string/jumbo v3, "removeVehicleListener(): RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

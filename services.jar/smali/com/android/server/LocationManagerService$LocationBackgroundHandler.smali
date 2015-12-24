.class Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationBackgroundHandler"
.end annotation


# instance fields
.field public mLoggingFastUpdate:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Lcom/android/server/LocationManagerService$1;

    .prologue
    .line 2461
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    .line 2466
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v8, :cond_4

    .line 2467
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$800(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    :try_start_1
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v7}, Lcom/android/server/LocationManagerService;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 2470
    .local v4, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2472
    .local v0, "activeListeners":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 2473
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2475
    .local v6, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 2476
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 2477
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2478
    .local v5, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mUidName:Ljava/lang/String;

    const-string v9, "android.uid.system"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    const-string v9, "passive"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2480
    const/4 v0, 0x1

    .line 2482
    :cond_0
    const-string v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Running, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mUidName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mInterval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mFastestInterval: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mSmallestDisplacement: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mNumUpdates: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Receiver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    if-eqz v7, :cond_1

    .line 2493
    const-string v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Lat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Bearing: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getBearing()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Accuracy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 2472
    .end local v3    # "j":I
    .end local v5    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2502
    .end local v6    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_3
    if-eqz v0, :cond_5

    .line 2503
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->mLoggingFastUpdate:Z

    .line 2504
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mBackgroundHandler:Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->removeMessages(I)V

    .line 2505
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mBackgroundHandler:Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    const/4 v9, 0x1

    # getter for: Lcom/android/server/LocationManagerService;->mLogInterval:J
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$2500()J

    move-result-wide v10

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2513
    :goto_2
    monitor-exit v8

    .line 2519
    .end local v0    # "activeListeners":Z
    .end local v2    # "i":I
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_3
    return-void

    .line 2508
    .restart local v0    # "activeListeners":Z
    .restart local v2    # "i":I
    .restart local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->mLoggingFastUpdate:Z

    .line 2509
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mBackgroundHandler:Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->removeMessages(I)V

    .line 2510
    iget-object v7, p0, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mBackgroundHandler:Lcom/android/server/LocationManagerService$LocationBackgroundHandler;
    invoke-static {v7}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationBackgroundHandler;

    move-result-object v7

    const/4 v9, 0x1

    # getter for: Lcom/android/server/LocationManagerService;->mLogInterval:J
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$2500()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/LocationManagerService$LocationBackgroundHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 2513
    .end local v0    # "activeListeners":Z
    .end local v2    # "i":I
    .end local v4    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2515
    :catch_0
    move-exception v1

    .line 2517
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "LocationManagerService"

    const-string v8, "Exception in LocationBackgroundHandler.handleMessage:"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

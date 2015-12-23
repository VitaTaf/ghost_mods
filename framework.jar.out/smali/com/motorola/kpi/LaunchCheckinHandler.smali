.class Lcom/motorola/kpi/LaunchCheckinHandler;
.super Ljava/lang/Object;
.source "LaunchCheckinHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;,
        Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;,
        Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    }
.end annotation


# static fields
.field private static final CHECKIN_ID:Ljava/lang/String; = "APPLAUNCH"

.field private static final CHECKIN_TAG:Ljava/lang/String; = "MOT_APP_STATS"

.field private static final CHECKIN_VERSION:Ljava/lang/String; = "1.0"

.field private static final CLEAR_PERIOD:J = 0x2710L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final STATS_FILE_NAME:Ljava/lang/String; = "LaunchStats.data"

.field private static final STATS_FILE_VERS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LaunchCheckinHandler"

.field private static final localLOGV:Z


# instance fields
.field private firstActTime:J

.field private firstComponent:Ljava/lang/String;

.field private firstLaunchTime:J

.field private lastCallTime:J

.field private lastColdAct:Z

.field private lastColdProc:Z

.field private lastLaunchTime:J

.field private lastTimeSaved:J

.field private lastTotalTime:J

.field private launchStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/io/File;

.field private processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    :try_start_0
    iput-object p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mContext:Landroid/content/Context;

    .line 273
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 274
    .local v0, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "system"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .local v4, "systemDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "usagestats"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mDir:Ljava/io/File;

    .line 277
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    .line 278
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 280
    .local v2, "now":J
    invoke-direct {p0, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->loadStats(J)V

    .line 281
    invoke-direct {p0, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->scheduleNextCheckin(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "dataDir":Ljava/io/File;
    .end local v2    # "now":J
    .end local v4    # "systemDir":Ljava/io/File;
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Throwable;
    const-string v5, "LaunchCheckinHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LaunchCheckinHandler constructor exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/kpi/LaunchCheckinHandler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/kpi/LaunchCheckinHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/kpi/LaunchCheckinHandler;J)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/kpi/LaunchCheckinHandler;
    .param p1, "x1"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/kpi/LaunchCheckinHandler;J)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/kpi/LaunchCheckinHandler;
    .param p1, "x1"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->sendStats(J)V

    return-void
.end method

.method private addData(Landroid/content/ComponentName;JZ)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "launchtime"    # J
    .param p4, "cold"    # Z

    .prologue
    .line 740
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    .line 741
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/kpi/LaunchCheckinHandler;->addDataLocked(Landroid/content/ComponentName;JZ)V

    .line 742
    monitor-exit v1

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addDataLocked(Landroid/content/ComponentName;JZ)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "launchtime"    # J
    .param p4, "cold"    # Z

    .prologue
    .line 746
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .line 747
    .local v0, "cls":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    if-nez v0, :cond_0

    .line 748
    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .end local v0    # "cls":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    invoke-direct {v0}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;-><init>()V

    .line 749
    .restart local v0    # "cls":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_0
    if-eqz p4, :cond_1

    .line 752
    invoke-virtual {v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->addCold(J)V

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->addWarm(J)V

    goto :goto_0
.end method

.method private cleanup(J)V
    .locals 5
    .param p1, "ms"    # J

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 315
    const-string v0, "LaunchCheckinHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanup(): cleared. Last call was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms ago"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/motorola/kpi/LaunchCheckinHandler;->reset()V

    .line 318
    :cond_0
    return-void
.end method

.method private displayedActivity(Landroid/content/ComponentName;Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;J)V
    .locals 17
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "al"    # Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .param p3, "ms"    # J

    .prologue
    .line 538
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->proc:Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    iget-wide v12, v7, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->coldTime:J

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->warmTime:J

    cmp-long v7, v12, v14

    if-lez v7, :cond_2

    const/4 v3, 0x1

    .line 539
    .local v3, "coldProc":Z
    :goto_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    .line 540
    .local v2, "coldAct":Z
    :goto_1
    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J

    .line 541
    .local v4, "launchTime":J
    :goto_2
    sub-long v8, p3, v4

    .line 542
    .local v8, "time":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    :goto_3
    sub-long v10, p3, v12

    .line 545
    .local v10, "totTime":J
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastLaunchTime:J

    .line 546
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    .line 547
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    if-nez v7, :cond_0

    if-eqz v3, :cond_6

    :cond_0
    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    .line 548
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    if-nez v7, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->addData(Landroid/content/ComponentName;JZ)V

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Displayed "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .local v6, "logstr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    if-eqz v3, :cond_8

    const-string v7, ",cp"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    if-eqz v2, :cond_9

    const-string v7, ",ca"

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 559
    const-string v7, "LaunchCheckinHandler"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void

    .line 538
    .end local v2    # "coldAct":Z
    .end local v3    # "coldProc":Z
    .end local v4    # "launchTime":J
    .end local v6    # "logstr":Ljava/lang/StringBuilder;
    .end local v8    # "time":J
    .end local v10    # "totTime":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 539
    .restart local v3    # "coldProc":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 540
    .restart local v2    # "coldAct":Z
    :cond_4
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->warmTime:J

    goto :goto_2

    .line 542
    .restart local v4    # "launchTime":J
    .restart local v8    # "time":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    goto :goto_3

    .line 547
    .restart local v10    # "totTime":J
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 548
    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .line 555
    .restart local v6    # "logstr":Ljava/lang/StringBuilder;
    :cond_8
    const-string v7, ",wp"

    goto :goto_6

    .line 556
    :cond_9
    const-string v7, ",wa"

    goto :goto_7
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 780
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 781
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 782
    .local v1, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 783
    .local v0, "in":Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 784
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 785
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 786
    return-object v0
.end method

.method private loadStats(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 577
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    .line 578
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->loadStatsLocked(J)V

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadStatsLocked(J)V
    .locals 11
    .param p1, "now"    # J

    .prologue
    .line 583
    iput-wide p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTimeSaved:J

    .line 584
    iget-object v7, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 586
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mDir:Ljava/io/File;

    const-string v8, "LaunchStats.data"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 587
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 588
    const-string v7, "LaunchCheckinHandler"

    const-string v8, "Launch stats file does not exist; done"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v3

    .line 594
    .local v3, "in":Landroid/os/Parcel;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 595
    .local v6, "vers":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 596
    const-string v7, "LaunchCheckinHandler"

    const-string v8, "Launch stats version changed; dropping"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    .end local v3    # "in":Landroid/os/Parcel;
    .end local v6    # "vers":I
    :catch_0
    move-exception v1

    .line 613
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "LaunchCheckinHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadStats(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Landroid/os/Parcel;
    .restart local v6    # "vers":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 601
    .local v4, "n":I
    :goto_1
    if-lez v4, :cond_0

    .line 602
    add-int/lit8 v4, v4, -0x1

    .line 603
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 604
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 608
    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    invoke-direct {v0, v3}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;-><init>(Landroid/os/Parcel;)V

    .line 609
    .local v0, "cld":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    iget-object v7, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v7, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private printTotalTime()V
    .locals 6

    .prologue
    .line 290
    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastLaunchTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Displayed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "logstr":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-boolean v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    if-eqz v1, :cond_1

    const-string v1, ",cp"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-boolean v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    if-eqz v1, :cond_2

    const-string v1, ",ca"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, " (total)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, "LaunchCheckinHandler"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .end local v0    # "logstr":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .line 294
    .restart local v0    # "logstr":Ljava/lang/StringBuilder;
    :cond_1
    const-string v1, ",wp"

    goto :goto_0

    .line 295
    :cond_2
    const-string v1, ",wa"

    goto :goto_1
.end method

.method private readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 790
    const/4 v4, 0x0

    .line 791
    .local v4, "pos":I
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 792
    .local v1, "avail":I
    new-array v2, v1, [B

    .line 794
    .local v2, "data":[B
    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 795
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 796
    return-object v2

    .line 798
    :cond_1
    add-int/2addr v4, v0

    .line 799
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 800
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    .line 801
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 802
    .local v3, "newData":[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 803
    move-object v2, v3

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 306
    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    .line 307
    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastLaunchTime:J

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    iput-boolean v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstComponent:Ljava/lang/String;

    .line 310
    return-void
.end method

.method private saveStatsLocked(J)V
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 635
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mDir:Ljava/io/File;

    const-string v10, "LaunchStats.data"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 636
    .local v2, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 638
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 641
    .local v4, "out":Landroid/os/Parcel;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    iget-object v9, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    iget-object v9, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 645
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 646
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 647
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 648
    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .line 650
    .local v6, "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v6, v4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->writeToParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 659
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .end local v4    # "out":Landroid/os/Parcel;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 660
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string v9, "LaunchCheckinHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveStats() error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    if-eqz v7, :cond_0

    .line 665
    :try_start_3
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 666
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 671
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 654
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .restart local v4    # "out":Landroid/os/Parcel;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 655
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 656
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 657
    iput-wide p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTimeSaved:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 663
    if-eqz v8, :cond_3

    .line 665
    :try_start_5
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 666
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

    .line 668
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 663
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .end local v4    # "out":Landroid/os/Parcel;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v7, :cond_2

    .line 665
    :try_start_6
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 666
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 668
    :cond_2
    :goto_4
    throw v9

    :catch_2
    move-exception v10

    goto :goto_4

    .line 663
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 668
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_2

    .line 659
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .restart local v4    # "out":Landroid/os/Parcel;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :cond_3
    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private scheduleNextCheckin(J)V
    .locals 13
    .param p1, "now"    # J

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x0

    .line 760
    new-instance v1, Lcom/motorola/kpi/LaunchCheckinHandler$2;

    invoke-direct {v1, p0}, Lcom/motorola/kpi/LaunchCheckinHandler$2;-><init>(Lcom/motorola/kpi/LaunchCheckinHandler;)V

    .line 765
    .local v1, "doCheckin":Ljava/lang/Runnable;
    const/16 v8, 0x5a0

    .line 767
    .local v8, "period":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 768
    .local v7, "cal":Ljava/util/Calendar;
    invoke-virtual {v7, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 769
    const/16 v4, 0xb

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 770
    invoke-virtual {v7, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 771
    const/16 v4, 0x5a0

    invoke-virtual {v7, v6, v4}, Ljava/util/Calendar;->add(II)V

    .line 772
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 v10, 0xea60

    div-long v2, v4, v10

    .line 774
    .local v2, "delay":J
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 775
    .local v0, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v4, 0x5a0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 776
    const-string v4, "LaunchCheckinHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Next checkin scheduled in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minutes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void
.end method

.method private sendStats(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 674
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 676
    monitor-exit v1

    .line 680
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->sendStatsLocked(J)V

    .line 679
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendStatsLocked(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 684
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 685
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 687
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 688
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .line 689
    .local v3, "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->sendStatsPackage(JLjava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;)V

    goto :goto_0

    .line 691
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    :cond_0
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 692
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V

    .line 693
    return-void
.end method

.method private sendStatsPackage(JLjava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;)V
    .locals 7
    .param p1, "now"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "stats"    # Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .prologue
    .line 696
    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeStats()V

    .line 698
    :try_start_0
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_APP_STATS"

    const-string v2, "APPLAUNCH"

    const-string v3, "1.0"

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 700
    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v1, "cn"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldN()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 703
    const-string v1, "cm"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldMedian()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    .line 704
    const-string v1, "ca"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldAvg()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    .line 705
    const-string v1, "cs"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldStdDev()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    .line 706
    const-string v1, "cmax"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldMax()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 707
    const-string v1, "cmin"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldMin()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 709
    const-string/jumbo v1, "wn"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmN()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 710
    const-string/jumbo v1, "wm"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmMedian()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    .line 711
    const-string/jumbo v1, "wa"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmAvg()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    .line 712
    const-string/jumbo v1, "ws"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmStdDev()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    .line 713
    const-string/jumbo v1, "wmax"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmMax()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 714
    const-string/jumbo v1, "wmin"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmMin()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 716
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v6

    .line 735
    .local v6, "e":Ljava/lang/Throwable;
    const-string v1, "LaunchCheckinHandler"

    const-string v2, "Exception posting check-in data"

    invoke-static {v1, v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private timeToSave(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 573
    iget-wide v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTimeSaved:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized displayed(Landroid/content/ComponentName;J)V
    .locals 12
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "ms"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 482
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    .line 535
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    .line 488
    iget-wide v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 492
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .line 494
    .local v3, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v3, :cond_3

    .line 495
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 496
    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    .line 497
    .local v0, "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    if-eqz v0, :cond_5

    .line 498
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->displayedActivity(Landroid/content/ComponentName;Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;J)V

    .line 499
    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_2
    :goto_1
    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 509
    iget-object v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 512
    invoke-direct {p0}, Lcom/motorola/kpi/LaunchCheckinHandler;->printTotalTime()V

    .line 513
    invoke-direct {p0}, Lcom/motorola/kpi/LaunchCheckinHandler;->reset()V

    .line 524
    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 525
    .local v4, "now":J
    invoke-direct {p0, v4, v5}, Lcom/motorola/kpi/LaunchCheckinHandler;->timeToSave(J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 526
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStats(JZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    .end local v4    # "now":J
    :cond_4
    :goto_2
    :try_start_2
    iget-wide v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 533
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 502
    .restart local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_5
    :try_start_3
    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    .restart local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->displayedActivity(Landroid/content/ComponentName;Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;J)V

    .line 504
    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 529
    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "LaunchCheckinHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayed() exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized newApp(Landroid/content/ComponentName;J)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "ms"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 377
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    .line 413
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 381
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    .line 383
    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 387
    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 388
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .line 393
    .local v3, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v3, :cond_3

    .line 394
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 395
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    .line 396
    .local v0, "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 397
    iput-wide p2, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_3
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "LaunchCheckinHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "newApp() exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized newProc(Ljava/lang/String;J)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "ms"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 418
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    .line 420
    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 438
    :goto_0
    monitor-exit p0

    return-void

    .line 423
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .line 424
    .local v1, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v1, :cond_1

    .line 425
    iget-wide v2, v1, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->coldTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 426
    iput-wide p2, v1, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->coldTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    .end local v1    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_1
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 418
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "LaunchCheckinHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newProc() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method saveStats(JZ)V
    .locals 3
    .param p1, "now"    # J
    .param p3, "blocking"    # Z

    .prologue
    .line 618
    if-eqz p3, :cond_0

    .line 619
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    .line 620
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V

    .line 621
    monitor-exit v1

    .line 632
    :goto_0
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 624
    :cond_0
    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler$1;-><init>(Lcom/motorola/kpi/LaunchCheckinHandler;J)V

    invoke-virtual {v0}, Lcom/motorola/kpi/LaunchCheckinHandler$1;->start()V

    goto :goto_0
.end method

.method declared-synchronized start(Landroid/content/ComponentName;J)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "ms"    # J

    .prologue
    .line 324
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    .line 371
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    .line 330
    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 331
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    .line 332
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstComponent:Ljava/lang/String;

    .line 335
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .line 337
    .local v3, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-nez v3, :cond_3

    .line 338
    new-instance v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    invoke-direct {v3, v2, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;-><init>(Ljava/lang/String;J)V

    .line 339
    .restart local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 346
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 347
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    iget-object v5, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_4
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 352
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_5
    :try_start_3
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 353
    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;-><init>(Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;J)V

    .line 354
    .local v0, "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 367
    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "LaunchCheckinHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start() exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized suspend(Landroid/content/ComponentName;J)V
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "ms"    # J

    .prologue
    .line 444
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    .line 476
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 448
    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    .line 450
    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .line 456
    .local v2, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v2, :cond_2

    .line 457
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 458
    iget-object v3, v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    iget-object v3, v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    iget-object v4, v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_2
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "LaunchCheckinHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suspend() exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

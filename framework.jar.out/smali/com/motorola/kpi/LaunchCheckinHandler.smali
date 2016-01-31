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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .local v0, "dataDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "system"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, "systemDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "usagestats"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mDir:Ljava/io/File;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    invoke-direct {p0, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->loadStats(J)V

    invoke-direct {p0, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->scheduleNextCheckin(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "dataDir":Ljava/io/File;
    .end local v2    # "now":J
    .end local v4    # "systemDir":Ljava/io/File;
    :goto_0
    return-void

    :catch_0
    move-exception v1

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
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/kpi/LaunchCheckinHandler;J)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/kpi/LaunchCheckinHandler;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/kpi/LaunchCheckinHandler;J)V
    .locals 1
    .param p0, "x0"    # Lcom/motorola/kpi/LaunchCheckinHandler;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->sendStats(J)V

    return-void
.end method

.method private addData(Landroid/content/ComponentName;JZ)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "launchtime"    # J
    .param p4, "cold"    # Z

    .prologue
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/kpi/LaunchCheckinHandler;->addDataLocked(Landroid/content/ComponentName;JZ)V

    monitor-exit v1

    return-void

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
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .local v0, "cls":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .end local v0    # "cls":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    invoke-direct {v0}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;-><init>()V

    .restart local v0    # "cls":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->addCold(J)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->addWarm(J)V

    goto :goto_0
.end method

.method private cleanup(J)V
    .locals 5
    .param p1, "ms"    # J

    .prologue
    iget-wide v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

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

    invoke-direct {p0}, Lcom/motorola/kpi/LaunchCheckinHandler;->reset()V

    :cond_0
    return-void
.end method

.method private displayedActivity(Landroid/content/ComponentName;Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;J)V
    .locals 17
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "al"    # Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .param p3, "ms"    # J

    .prologue
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->proc:Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    iget-wide v12, v7, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->coldTime:J

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->warmTime:J

    cmp-long v7, v12, v14

    if-lez v7, :cond_2

    const/4 v3, 0x1

    .local v3, "coldProc":Z
    :goto_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-eqz v7, :cond_3

    const/4 v2, 0x1

    .local v2, "coldAct":Z
    :goto_1
    if-eqz v2, :cond_4

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J

    .local v4, "launchTime":J
    :goto_2
    sub-long v8, p3, v4

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

    .local v10, "totTime":J
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastLaunchTime:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    if-nez v7, :cond_0

    if-eqz v3, :cond_6

    :cond_0
    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    if-nez v7, :cond_1

    if-eqz v2, :cond_7

    :cond_1
    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->addData(Landroid/content/ComponentName;JZ)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Displayed "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v6, "logstr":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    const-string v7, ",cp"

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_9

    const-string v7, ",ca"

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "LaunchCheckinHandler"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v2    # "coldAct":Z
    .end local v3    # "coldProc":Z
    .end local v4    # "launchTime":J
    .end local v6    # "logstr":Ljava/lang/StringBuilder;
    .end local v8    # "time":J
    .end local v10    # "totTime":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "coldProc":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .restart local v2    # "coldAct":Z
    :cond_4
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->warmTime:J

    goto :goto_2

    .restart local v4    # "launchTime":J
    .restart local v8    # "time":J
    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    goto :goto_3

    .restart local v10    # "totTime":J
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    .restart local v6    # "logstr":Ljava/lang/StringBuilder;
    :cond_8
    const-string v7, ",wp"

    goto :goto_6

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

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .local v1, "raw":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "in":Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method

.method private loadStats(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->loadStatsLocked(J)V

    monitor-exit v1

    return-void

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
    iput-wide p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTimeSaved:J

    iget-object v7, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mDir:Ljava/io/File;

    const-string v8, "LaunchStats.data"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "LaunchCheckinHandler"

    const-string v8, "Launch stats file does not exist; done"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v3

    .local v3, "in":Landroid/os/Parcel;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "vers":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const-string v7, "LaunchCheckinHandler"

    const-string v8, "Launch stats version changed; dropping"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "in":Landroid/os/Parcel;
    .end local v6    # "vers":I
    :catch_0
    move-exception v1

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

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "in":Landroid/os/Parcel;
    .restart local v6    # "vers":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "n":I
    :goto_1
    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_0

    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    invoke-direct {v0, v3}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;-><init>(Landroid/os/Parcel;)V

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
    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastLaunchTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Displayed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "logstr":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    if-eqz v1, :cond_1

    const-string v1, ",cp"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    if-eqz v1, :cond_2

    const-string v1, ",ca"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (total)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LaunchCheckinHandler"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "logstr":Ljava/lang/StringBuilder;
    :cond_0
    return-void

    .restart local v0    # "logstr":Ljava/lang/StringBuilder;
    :cond_1
    const-string v1, ",wp"

    goto :goto_0

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

    const/4 v4, 0x0

    .local v4, "pos":I
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .local v1, "avail":I
    new-array v2, v1, [B

    .local v2, "data":[B
    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .local v0, "amt":I
    if-gtz v0, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v4, v0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    add-int v5, v4, v1

    new-array v3, v5, [B

    .local v3, "newData":[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v2, v3

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTotalTime:J

    iput-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastLaunchTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdProc:Z

    iput-boolean v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastColdAct:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstComponent:Ljava/lang/String;

    return-void
.end method

.method private saveStatsLocked(J)V
    .locals 13
    .param p1, "now"    # J

    .prologue
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mDir:Ljava/io/File;

    const-string v10, "LaunchStats.data"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    const/4 v7, 0x0

    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .local v4, "out":Landroid/os/Parcel;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v9, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "packageName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .local v6, "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->writeToParcel(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .end local v4    # "out":Landroid/os/Parcel;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    :catch_0
    move-exception v0

    move-object v7, v8

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

    if-eqz v7, :cond_0

    :try_start_3
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .restart local v4    # "out":Landroid/os/Parcel;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    iput-wide p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastTimeSaved:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v8, :cond_3

    :try_start_5
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v8

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

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    .end local v4    # "out":Landroid/os/Parcel;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v7, :cond_2

    :try_start_6
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_4
    throw v9

    :catch_2
    move-exception v10

    goto :goto_4

    .end local v7    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_2

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

    new-instance v1, Lcom/motorola/kpi/LaunchCheckinHandler$2;

    invoke-direct {v1, p0}, Lcom/motorola/kpi/LaunchCheckinHandler$2;-><init>(Lcom/motorola/kpi/LaunchCheckinHandler;)V

    .local v1, "doCheckin":Ljava/lang/Runnable;
    const/16 v8, 0x5a0

    .local v8, "period":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .local v7, "cal":Ljava/util/Calendar;
    invoke-virtual {v7, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0xb

    invoke-virtual {v7, v4, v5}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v7, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0x5a0

    invoke-virtual {v7, v6, v4}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 v10, 0xea60

    div-long v2, v4, v10

    .local v2, "delay":J
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .local v0, "scheduler":Ljava/util/concurrent/ScheduledExecutorService;
    const-wide/16 v4, 0x5a0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

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

    return-void
.end method

.method private sendStats(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->sendStatsLocked(J)V

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
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .local v3, "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->sendStatsPackage(JLjava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "stats":Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
    :cond_0
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V

    return-void
.end method

.method private sendStatsPackage(JLjava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;)V
    .locals 7
    .param p1, "now"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "stats"    # Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;

    .prologue
    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeStats()V

    :try_start_0
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_APP_STATS"

    const-string v2, "APPLAUNCH"

    const-string v3, "1.0"

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .local v0, "event":Lcom/motorola/android/provider/CheckinEvent;
    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cn"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldN()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string v1, "cm"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldMedian()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    const-string v1, "ca"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldAvg()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    const-string v1, "cs"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldStdDev()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    const-string v1, "cmax"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldMax()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string v1, "cmin"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldMin()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string/jumbo v1, "wn"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmN()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    const-string/jumbo v1, "wm"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmMedian()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    const-string/jumbo v1, "wa"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmAvg()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    const-string/jumbo v1, "ws"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmStdDev()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;D)V

    const-string/jumbo v1, "wmax"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmMax()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    const-string/jumbo v1, "wmin"

    invoke-virtual {p4}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmMin()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "event":Lcom/motorola/android/provider/CheckinEvent;
    :goto_0
    return-void

    :catch_0
    move-exception v6

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

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    iget-wide v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .local v3, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    .local v0, "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->displayedActivity(Landroid/content/ComponentName;Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;J)V

    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/motorola/kpi/LaunchCheckinHandler;->printTotalTime()V

    invoke-direct {p0}, Lcom/motorola/kpi/LaunchCheckinHandler;->reset()V

    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "now":J
    invoke-direct {p0, v4, v5}, Lcom/motorola/kpi/LaunchCheckinHandler;->timeToSave(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStats(JZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    .end local v4    # "now":J
    :cond_4
    :goto_2
    :try_start_2
    iget-wide v6, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

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

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->displayedActivity(Landroid/content/ComponentName;Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;J)V

    iget-object v6, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :catch_0
    move-exception v1

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

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstActTime:J

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .local v3, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    .local v0, "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    if-eqz v0, :cond_3

    iget-wide v4, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iput-wide p2, v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->coldTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :catch_0
    move-exception v1

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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .local v1, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v1, :cond_1

    iget-wide v2, v1, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->coldTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide p2, v1, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->coldTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_1
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_0
    move-exception v0

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
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

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
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstComponent:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .local v3, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-nez v3, :cond_3

    new-instance v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    invoke-direct {v3, v2, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;-><init>(Ljava/lang/String;J)V

    .restart local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    iget-object v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    iget-object v5, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_4
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_5
    :try_start_3
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;-><init>(Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;J)V

    .local v0, "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    iget-object v4, v3, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "al":Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :catch_0
    move-exception v1

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
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/kpi/LaunchCheckinHandler;->cleanup(J)V

    iget-wide v4, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->firstLaunchTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->processes:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    .local v2, "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    iget-object v4, v2, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pl":Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    :cond_2
    :goto_1
    :try_start_2
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler;->lastCallTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_0
    move-exception v0

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

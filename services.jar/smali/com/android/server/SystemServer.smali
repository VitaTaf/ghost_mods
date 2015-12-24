.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private addSprintCdmaConnectivityService(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1359
    invoke-static {p1}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 1360
    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v1, :cond_0

    .line 1361
    const/4 v2, 0x0

    .line 1363
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "SprintExService"

    const-string v4, "createCdmaConnectivityService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1369
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    .line 1371
    :try_start_1
    const-string v3, "SystemServer"

    const-string v4, "Cdma Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string v3, "cdma"

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1378
    :cond_0
    :goto_1
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "starting cdma Service"

    invoke-direct {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1365
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private addSprintConnectivityService(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1334
    invoke-static {p1}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 1335
    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-eqz v1, :cond_0

    .line 1336
    const/4 v2, 0x0

    .line 1338
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "SprintExService"

    const-string v4, "createConnectivityService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1344
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    .line 1346
    :try_start_1
    const-string v3, "SystemServer"

    const-string v4, "Sprint Lte Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string v3, "lte"

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v3, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1353
    :cond_0
    :goto_1
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "starting Sprint Lte Service"

    invoke-direct {p0, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1341
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private createPixelPipeManagerService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v7, "com.motorola.pixelpipe.PixelPipeManagerService"

    invoke-virtual {v5, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 202
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    move-object v5, v6

    .line 211
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v5

    .line 203
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v3, v5

    .line 204
    .local v3, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 205
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v2, :cond_1

    move-object v5, v6

    goto :goto_0

    .line 206
    :cond_1
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    .line 207
    .local v0, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v7, "Exception = "

    invoke-static {v5, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 211
    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 334
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 335
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 336
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 337
    return-void
.end method

.method private initializeOMADM(Landroid/content/pm/IPackageManager;Landroid/content/Context;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1383
    invoke-static {p2}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .line 1384
    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    if-nez v1, :cond_0

    .line 1395
    :goto_0
    return-void

    .line 1388
    :cond_0
    :try_start_0
    const-string v2, "OMADM"

    const-string v3, "initialize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/pm/IPackageManager;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 190
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 317
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 320
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 323
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 324
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 331
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 326
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 312
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 222
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 227
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 237
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 242
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 243
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 252
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 256
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 260
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 264
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 267
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 270
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 273
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 276
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 281
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 287
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 288
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 293
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 308
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :catch_0
    move-exception v6

    .line 296
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 350
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 353
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 355
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 362
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 366
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 370
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 373
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 376
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 386
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 389
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 390
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 392
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 400
    return-void

    .line 380
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 387
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 410
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 413
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 414
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 417
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 420
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 421
    return-void
.end method

.method private startOtherServices()V
    .locals 106

    .prologue
    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 429
    .local v3, "context":Landroid/content/Context;
    const/16 v31, 0x0

    .line 430
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v47, 0x0

    .line 431
    .local v47, "contentService":Lcom/android/server/content/ContentService;
    const/16 v96, 0x0

    .line 432
    .local v96, "vibrator":Lcom/android/server/VibratorService;
    const/16 v33, 0x0

    .line 433
    .local v33, "alarm":Landroid/app/IAlarmManager;
    const/16 v74, 0x0

    .line 434
    .local v74, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 435
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 436
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v76, 0x0

    .line 437
    .local v76, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .line 438
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v77, 0x0

    .line 441
    .local v77, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v98, 0x0

    .line 444
    .local v98, "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    const/16 v88, 0x0

    .line 445
    .local v88, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v105, 0x0

    .line 446
    .local v105, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v38, 0x0

    .line 447
    .local v38, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v95, 0x0

    .line 448
    .local v95, "usb":Lcom/android/server/usb/UsbService;
    const/16 v86, 0x0

    .line 449
    .local v86, "serial":Lcom/android/server/SerialService;
    const/16 v80, 0x0

    .line 450
    .local v80, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .line 451
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v63, 0x0

    .line 452
    .local v63, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v91, 0x0

    .line 453
    .local v91, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v45, 0x0

    .line 454
    .local v45, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v36, 0x0

    .line 455
    .local v36, "audioService":Landroid/media/AudioService;
    const/16 v73, 0x0

    .line 457
    .local v73, "mmsService":Lcom/android/server/MmsServiceBroker;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 458
    .local v56, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 459
    .local v52, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 460
    .local v50, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 461
    .local v58, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 462
    .local v51, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 463
    .local v57, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 464
    .local v55, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 465
    .local v53, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 466
    .local v54, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    .line 469
    .local v65, "isEmulator":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 472
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 477
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v92, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v92

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_40

    .line 479
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v92, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 481
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 484
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 489
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v32, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 491
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_41

    move-object/from16 v31, v32

    .line 496
    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v47

    .line 500
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 503
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v97, Lcom/android/server/VibratorService;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 505
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .local v97, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v4, "vibrator"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 507
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    new-instance v46, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_42

    .line 509
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v4, "consumer_ir"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 512
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v33

    .line 515
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v104

    .line 517
    .local v104, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v104

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 519
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v64, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_43

    .line 522
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_2c

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v64

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v105

    .line 526
    const-string v4, "window"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 527
    const-string v4, "input"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v105

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 531
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 532
    invoke-virtual/range {v64 .. v64}, Lcom/android/server/input/InputManagerService;->start()V

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 538
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x112009f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v62

    .line 541
    .local v62, "initOMADM":Z
    if-eqz v62, :cond_0

    .line 543
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v83

    .line 544
    .local v83, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-direct {v0, v1, v3}, Lcom/android/server/SystemServer;->initializeOMADM(Landroid/content/pm/IPackageManager;Landroid/content/Context;)V

    .line 551
    .end local v83    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    if-eqz v65, :cond_2d

    .line 552
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SystemServer;->createPixelPipeManagerService(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v84

    .line 569
    .local v84, "ppManagerService":Landroid/os/IBinder;
    if-eqz v84, :cond_1

    .line 570
    const-string v4, "pixelpipe"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_1
    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v64

    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v96, v97

    .line 577
    .end local v62    # "initOMADM":Z
    .end local v84    # "ppManagerService":Landroid/os/IBinder;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .end local v104    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5
    const/16 v89, 0x0

    .line 578
    .local v89, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v82, 0x0

    .line 579
    .local v82, "notification":Landroid/app/INotificationManager;
    const/16 v60, 0x0

    .line 580
    .local v60, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v102, 0x0

    .line 581
    .local v102, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v66, 0x0

    .line 582
    .local v66, "location":Lcom/android/server/LocationManagerService;
    const/16 v48, 0x0

    .line 583
    .local v48, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v93, 0x0

    .line 584
    .local v93, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v68, 0x0

    .line 585
    .local v68, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v34, 0x0

    .line 586
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v70, 0x0

    .line 589
    .local v70, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 593
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v61, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v61

    move-object/from16 v1, v105

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    .line 595
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v61, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_9
    const-string v4, "input_method"

    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3f

    move-object/from16 v60, v61

    .line 601
    .end local v61    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 611
    :cond_2
    :goto_7
    :try_start_b
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 616
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 617
    if-nez v56, :cond_3

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 624
    :try_start_c
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v75, Lcom/android/server/MountService;

    move-object/from16 v0, v75

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    .line 626
    .end local v74    # "mountService":Lcom/android/server/MountService;
    .local v75, "mountService":Lcom/android/server/MountService;
    :try_start_d
    const-string v4, "mount"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3e

    move-object/from16 v74, v75

    .line 634
    .end local v75    # "mountService":Lcom/android/server/MountService;
    .restart local v74    # "mountService":Lcom/android/server/MountService;
    :cond_3
    :goto_9
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    .line 640
    :goto_a
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x104049d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_3d

    .line 647
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    .line 648
    if-nez v55, :cond_5

    .line 650
    :try_start_10
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v69, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    .line 652
    .end local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v69, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_11
    const-string v4, "lock_settings"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3c

    move-object/from16 v68, v69

    .line 657
    .end local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 663
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 666
    :cond_5
    if-nez v57, :cond_6

    .line 668
    :try_start_12
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v90, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v90

    move-object/from16 v1, v105

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    .line 670
    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v90, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_13
    const-string v4, "statusbar"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_3b

    move-object/from16 v89, v90

    .line 676
    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_d
    if-nez v55, :cond_7

    .line 678
    :try_start_14
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a

    .line 686
    :cond_7
    :goto_e
    if-nez v53, :cond_8

    .line 688
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 690
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_b

    .line 696
    :cond_8
    :goto_f
    if-nez v55, :cond_9

    .line 698
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    new-instance v94, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_c

    .line 700
    .end local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v94, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_17
    const-string v4, "textservices"

    move-object/from16 v0, v94

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3a

    move-object/from16 v93, v94

    .line 706
    .end local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_10
    if-nez v53, :cond_32

    .line 708
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v78, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v78

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_d

    .line 710
    .end local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v78, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_19
    const-string v4, "network_score"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_39

    move-object/from16 v77, v78

    .line 716
    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1a
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v79, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v79

    move-object/from16 v1, v33

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 718
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v79, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1b
    const-string v4, "netstats"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_38

    move-object/from16 v6, v79

    .line 724
    .end local v79    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1c
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 729
    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1d
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_37

    .line 734
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 739
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 746
    :cond_a
    :try_start_1e
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 749
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1f
    const-string v4, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 750
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 751
    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_36

    move-object/from16 v43, v44

    .line 757
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v100

    .line 759
    .local v100, "vzwConnectivityServiceInit":Z
    if-eqz v100, :cond_b

    .line 762
    :try_start_20
    const-string v4, "SystemServer"

    const-string v5, "VzwConnectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v99, Lcom/motorola/server/VzwConnectivityService;

    move-object/from16 v0, v99

    invoke-direct {v0, v3}, Lcom/motorola/server/VzwConnectivityService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 764
    .end local v98    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .local v99, "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    :try_start_21
    const-string v4, "vzwconnectivity"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 765
    move-object/from16 v0, v99

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/motorola/server/VzwConnectivityService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_35

    move-object/from16 v98, v99

    .line 774
    .end local v99    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v98    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    :cond_b
    :goto_15
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v88

    .line 776
    const-string v4, "servicediscovery"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 783
    .end local v100    # "vzwConnectivityServiceInit":Z
    :goto_16
    if-nez v55, :cond_c

    .line 785
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_13

    .line 798
    :cond_c
    :goto_17
    if-eqz v74, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_d

    .line 799
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 803
    :cond_d
    if-eqz v31, :cond_e

    .line 804
    :try_start_24
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 810
    :cond_e
    :goto_18
    if-eqz v47, :cond_f

    .line 811
    :try_start_25
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_15

    .line 816
    :cond_f
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 817
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v82

    .line 819
    move-object/from16 v0, v82

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 823
    if-nez v51, :cond_10

    .line 825
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v67, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_16

    .line 827
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .local v67, "location":Lcom/android/server/LocationManagerService;
    :try_start_27
    const-string v4, "location"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_34

    move-object/from16 v66, v67

    .line 833
    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v49, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17

    .line 835
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_29
    const-string v4, "country_detector"

    move-object/from16 v0, v49

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_33

    move-object/from16 v48, v49

    .line 842
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_10
    :goto_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SystemServer;->addSprintConnectivityService(Landroid/content/Context;)V

    .line 847
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SystemServer;->addSprintCdmaConnectivityService(Landroid/content/Context;)V

    .line 850
    if-nez v55, :cond_11

    .line 853
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    .line 862
    :cond_11
    :goto_1c
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 873
    :goto_1d
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Starting Checkin Mot Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const-string v4, "checkin_mot"

    new-instance v5, Lcom/motorola/android/server/checkin/CheckinService;

    invoke-direct {v5, v3}, Lcom/motorola/android/server/checkin/CheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1a

    .line 881
    :goto_1e
    if-nez v55, :cond_12

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 884
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    new-instance v103, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v103

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1b

    .line 886
    .end local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v103, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2e
    const-string v4, "wallpaper"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_32

    move-object/from16 v102, v103

    .line 892
    .end local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_12
    :goto_1f
    if-nez v52, :cond_13

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 894
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v37, Landroid/media/AudioService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c

    .line 896
    .end local v36    # "audioService":Landroid/media/AudioService;
    .local v37, "audioService":Landroid/media/AudioService;
    :try_start_30
    const-string v4, "audio"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_31

    move-object/from16 v36, v37

    .line 902
    .end local v37    # "audioService":Landroid/media/AudioService;
    .restart local v36    # "audioService":Landroid/media/AudioService;
    :cond_13
    :goto_20
    if-nez v55, :cond_14

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 906
    :cond_14
    if-nez v52, :cond_15

    .line 908
    :try_start_31
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v63

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1d

    .line 917
    :cond_15
    :goto_21
    if-nez v55, :cond_18

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 922
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 926
    :cond_17
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-instance v87, Lcom/android/server/SerialService;

    move-object/from16 v0, v87

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1e

    .line 929
    .end local v86    # "serial":Lcom/android/server/SerialService;
    .local v87, "serial":Lcom/android/server/SerialService;
    :try_start_33
    const-string v4, "serial"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_30

    move-object/from16 v86, v87

    .line 935
    .end local v87    # "serial":Lcom/android/server/SerialService;
    .restart local v86    # "serial":Lcom/android/server/SerialService;
    :cond_18
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 939
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 941
    if-nez v55, :cond_1b

    .line 942
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 943
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 946
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 950
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 956
    :cond_1b
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    .line 967
    :goto_23
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_20

    .line 974
    :goto_24
    if-nez v53, :cond_1c

    if-nez v54, :cond_1c

    .line 976
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v81, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_21

    .end local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v81, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v80, v81

    .line 983
    .end local v81    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1c
    :goto_25
    if-nez v52, :cond_1d

    .line 985
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_22

    .line 987
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_38
    const-string v4, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2f

    move-object/from16 v40, v41

    .line 993
    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1d
    :goto_26
    if-nez v53, :cond_1e

    .line 995
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_23

    .line 1002
    :cond_1e
    :goto_27
    if-nez v55, :cond_1f

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1007
    :cond_1f
    if-nez v55, :cond_20

    .line 1009
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v35, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_24

    .line 1011
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v35, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3b
    const-string v4, "assetatlas"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_2e

    move-object/from16 v34, v35

    .line 1017
    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_20
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1021
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1026
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1029
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1033
    :cond_23
    if-nez v55, :cond_24

    .line 1035
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v71, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_25

    .line 1037
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v71, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3d
    const-string v4, "media_router"

    move-object/from16 v0, v71

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_2d

    move-object/from16 v70, v71

    .line 1042
    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1047
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_26

    .line 1055
    :cond_24
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1058
    if-nez v55, :cond_26

    .line 1059
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10406fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10406fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1063
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/motorola/server/MotoPersDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1069
    :cond_26
    :goto_2b
    if-nez v55, :cond_27

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1075
    :cond_27
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v85

    .line 1076
    .local v85, "safeMode":Z
    if-eqz v85, :cond_31

    .line 1077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1079
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1086
    :goto_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v73

    .end local v73    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v73, Lcom/android/server/MmsServiceBroker;

    .line 1091
    .restart local v73    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_3f
    invoke-virtual/range {v96 .. v96}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_27

    .line 1096
    :goto_2d
    if-eqz v68, :cond_28

    .line 1098
    :try_start_40
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_28

    .line 1105
    :cond_28
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1110
    :try_start_41
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_29

    .line 1115
    :goto_2f
    if-eqz v85, :cond_29

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1122
    :cond_29
    invoke-virtual/range {v105 .. v105}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .line 1123
    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v72, Landroid/util/DisplayMetrics;

    invoke-direct/range {v72 .. v72}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1124
    .local v72, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/view/WindowManager;

    .line 1125
    .local v101, "w":Landroid/view/WindowManager;
    invoke-interface/range {v101 .. v101}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v72

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1126
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v72

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1130
    :try_start_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2a

    .line 1136
    :goto_30
    :try_start_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2b

    .line 1143
    :goto_31
    :try_start_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v85

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2c

    .line 1149
    :goto_32
    move-object/from16 v11, v74

    .line 1150
    .local v11, "mountServiceF":Lcom/android/server/MountService;
    move-object v13, v7

    .line 1151
    .local v13, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v14, v6

    .line 1152
    .local v14, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v15, v2

    .line 1153
    .local v15, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v16, v43

    .line 1154
    .local v16, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v12, v77

    .line 1155
    .local v12, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v18, v102

    .line 1156
    .local v18, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v19, v60

    .line 1157
    .local v19, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v21, v66

    .line 1158
    .local v21, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v22, v48

    .line 1159
    .local v22, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v23, v80

    .line 1160
    .local v23, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v24, v40

    .line 1161
    .local v24, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v25, v93

    .line 1162
    .local v25, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v20, v89

    .line 1163
    .local v20, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v26, v34

    .line 1164
    .local v26, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v27, v63

    .line 1165
    .local v27, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v28, v91

    .line 1166
    .local v28, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v29, v70

    .line 1167
    .local v29, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v36

    .line 1168
    .local v17, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v30, v73

    .line 1175
    .local v30, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v30}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1330
    return-void

    .line 492
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "mountServiceF":Lcom/android/server/MountService;
    .end local v12    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v13    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v14    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v15    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v17    # "audioServiceF":Landroid/media/AudioService;
    .end local v18    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v19    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v20    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v21    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v22    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v23    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v24    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v25    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v26    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v27    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v28    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v30    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .end local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v72    # "metrics":Landroid/util/DisplayMetrics;
    .end local v82    # "notification":Landroid/app/INotificationManager;
    .end local v85    # "safeMode":Z
    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v101    # "w":Landroid/view/WindowManager;
    .end local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v59

    .line 493
    .local v59, "e":Ljava/lang/Throwable;
    :goto_33
    :try_start_45
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_1

    goto/16 :goto_0

    .line 572
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v59

    move-object/from16 v91, v92

    .line 573
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v59, "e":Ljava/lang/RuntimeException;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_34
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 497
    .end local v59    # "e":Ljava/lang/RuntimeException;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 523
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2b
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    :cond_2c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 553
    .restart local v62    # "initOMADM":Z
    :cond_2d
    :try_start_46
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    .line 554
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 572
    .end local v62    # "initOMADM":Z
    :catch_2
    move-exception v59

    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v64

    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v96, v97

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_34

    .line 555
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v62    # "initOMADM":Z
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2e
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 557
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 558
    :cond_2f
    if-eqz v50, :cond_30

    .line 559
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 561
    :cond_30
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v39, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_2

    .line 563
    .end local v38    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v39, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_47
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_44

    move-object/from16 v38, v39

    .end local v39    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v38    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_4

    .line 596
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v62    # "initOMADM":Z
    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .end local v104    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "notification":Landroid/app/INotificationManager;
    .restart local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v59

    .line 597
    .local v59, "e":Ljava/lang/Throwable;
    :goto_35
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 604
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v59

    .line 605
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 612
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v59

    .line 613
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 627
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v59

    .line 628
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 635
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v59

    .line 636
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 653
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v59

    .line 654
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 671
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v59

    .line 672
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 681
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v59

    .line 682
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 691
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v59

    .line 692
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 701
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v59

    .line 702
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 711
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v59

    .line 712
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 719
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v59

    .line 720
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 730
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v59

    move-object/from16 v2, v76

    .line 731
    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 752
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v59

    .line 753
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 766
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v100    # "vzwConnectivityServiceInit":Z
    :catch_11
    move-exception v59

    .line 767
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting VzwConnectivityService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 778
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v59

    .line 779
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 788
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v100    # "vzwConnectivityServiceInit":Z
    :catch_13
    move-exception v59

    .line 789
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 805
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v59

    .line 806
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 812
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v59

    .line 813
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 828
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v59

    .line 829
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 836
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v59

    .line 837
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 856
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v59

    .line 857
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 865
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v59

    .line 866
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 876
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v59

    .line 877
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "Failure starting Checkin Mot Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 887
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v59

    .line 888
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 897
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v59

    .line 898
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 912
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v59

    .line 913
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 930
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v59

    .line 931
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v59

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 958
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v59

    .line 959
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 970
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v59

    .line 971
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 978
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v59

    .line 979
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 988
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v59

    .line 989
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 997
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v59

    .line 998
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 1012
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v59

    .line 1013
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1038
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v59

    .line 1039
    .restart local v59    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1049
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v59

    .line 1050
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1082
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v85    # "safeMode":Z
    :cond_31
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2c

    .line 1092
    :catch_27
    move-exception v59

    .line 1093
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1099
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v59

    .line 1100
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1111
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v59

    .line 1112
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1131
    .end local v59    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v72    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v101    # "w":Landroid/view/WindowManager;
    :catch_2a
    move-exception v59

    .line 1132
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1137
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v59

    .line 1138
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1144
    .end local v59    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v59

    .line 1145
    .restart local v59    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1038
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v59    # "e":Ljava/lang/Throwable;
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v72    # "metrics":Landroid/util/DisplayMetrics;
    .end local v85    # "safeMode":Z
    .end local v101    # "w":Landroid/view/WindowManager;
    .restart local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2d
    move-exception v59

    move-object/from16 v70, v71

    .end local v71    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto :goto_46

    .line 1012
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_2e
    move-exception v59

    move-object/from16 v34, v35

    .end local v35    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    goto :goto_45

    .line 988
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_2f
    move-exception v59

    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_44

    .line 930
    .end local v86    # "serial":Lcom/android/server/SerialService;
    .restart local v87    # "serial":Lcom/android/server/SerialService;
    :catch_30
    move-exception v59

    move-object/from16 v86, v87

    .end local v87    # "serial":Lcom/android/server/SerialService;
    .restart local v86    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_43

    .line 897
    .end local v36    # "audioService":Landroid/media/AudioService;
    .restart local v37    # "audioService":Landroid/media/AudioService;
    :catch_31
    move-exception v59

    move-object/from16 v36, v37

    .end local v37    # "audioService":Landroid/media/AudioService;
    .restart local v36    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_42

    .line 887
    .end local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_32
    move-exception v59

    move-object/from16 v102, v103

    .end local v103    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_41

    .line 836
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_33
    move-exception v59

    move-object/from16 v48, v49

    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_40

    .line 828
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v67    # "location":Lcom/android/server/LocationManagerService;
    :catch_34
    move-exception v59

    move-object/from16 v66, v67

    .end local v67    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3f

    .line 766
    .end local v98    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v99    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v100    # "vzwConnectivityServiceInit":Z
    :catch_35
    move-exception v59

    move-object/from16 v98, v99

    .end local v99    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    .restart local v98    # "vzwConnectivity":Lcom/motorola/server/VzwConnectivityService;
    goto/16 :goto_3e

    .line 752
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v100    # "vzwConnectivityServiceInit":Z
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_36
    move-exception v59

    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3d

    .line 730
    :catch_37
    move-exception v59

    goto/16 :goto_3c

    .line 719
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v79    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v59

    move-object/from16 v6, v79

    .end local v79    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3b

    .line 711
    .end local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_39
    move-exception v59

    move-object/from16 v77, v78

    .end local v78    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3a

    .line 701
    .end local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3a
    move-exception v59

    move-object/from16 v93, v94

    .end local v94    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_39

    .line 671
    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3b
    move-exception v59

    move-object/from16 v89, v90

    .end local v90    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_38

    .line 653
    .end local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3c
    move-exception v59

    move-object/from16 v68, v69

    .end local v69    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_37

    .line 644
    :catch_3d
    move-exception v4

    goto/16 :goto_b

    .line 627
    .end local v74    # "mountService":Lcom/android/server/MountService;
    .restart local v75    # "mountService":Lcom/android/server/MountService;
    :catch_3e
    move-exception v59

    move-object/from16 v74, v75

    .end local v75    # "mountService":Lcom/android/server/MountService;
    .restart local v74    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_36

    .line 596
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v61    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_3f
    move-exception v59

    move-object/from16 v60, v61

    .end local v61    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_35

    .line 572
    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v66    # "location":Lcom/android/server/LocationManagerService;
    .end local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "notification":Landroid/app/INotificationManager;
    .end local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_40
    move-exception v59

    goto/16 :goto_34

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_41
    move-exception v59

    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v31, v32

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    :catch_42
    move-exception v59

    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v96, v97

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    :catch_43
    move-exception v59

    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v96, v97

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .end local v38    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v96    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v39    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v62    # "initOMADM":Z
    .restart local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v104    # "watchdog":Lcom/android/server/Watchdog;
    :catch_44
    move-exception v59

    move-object/from16 v45, v46

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v45    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v91, v92

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v63, v64

    .end local v64    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v63    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v38, v39

    .end local v39    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v38    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v96, v97

    .end local v97    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v96    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_34

    .line 492
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v62    # "initOMADM":Z
    .end local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v59

    move-object/from16 v31, v32

    .end local v32    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_33

    .end local v92    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v48    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "location":Lcom/android/server/LocationManagerService;
    .restart local v68    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v70    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v82    # "notification":Landroid/app/INotificationManager;
    .restart local v89    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v91    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v93    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v102    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_32
    move-object/from16 v2, v76

    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_33
    move-object/from16 v2, v76

    .end local v76    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2b
.end method

.method static final startSprintExService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1411
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sprint.extension"

    const-string v3, "com.sprint.extension.SprintExtensionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1413
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1415
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1399
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1400
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1403
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1404
    return-void
.end method

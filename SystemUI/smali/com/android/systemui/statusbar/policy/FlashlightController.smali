.class public Lcom/android/systemui/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraAvailable:Z

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mFlashlightEnabled:Z

.field private mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mHandler:Landroid/os/Handler;

.field private final mKillFlashlightRunnable:Ljava/lang/Runnable;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mToggleReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateFlashlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    .line 365
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$2;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    .line 389
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$3;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    .line 410
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$4;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    .line 417
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$5;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    .line 428
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$6;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 93
    const-string v1, "camera"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->initialize()V

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mContext:Landroid/content/Context;

    .line 99
    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mToggleReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.ACTION_FLASHLIGHT_TOGGLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "com.motorola.ACTION_FLASHLIGHT_TURNOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mToggleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchToggle(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V

    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 359
    .local v0, "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 360
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 357
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 363
    .end local v0    # "found":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 325
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 326
    return-void
.end method

.method private dispatchError()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 316
    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 6
    .param p1, "message"    # I
    .param p2, "argument"    # Z

    .prologue
    .line 329
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 330
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    .local v0, "N":I
    const/4 v1, 0x0

    .line 332
    .local v1, "cleanup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 333
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .line 334
    .local v3, "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    if-eqz v3, :cond_4

    .line 335
    if-nez p1, :cond_1

    .line 336
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    .line 332
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 338
    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightOff()V

    goto :goto_1

    .line 353
    .end local v0    # "N":I
    .end local v1    # "cleanup":Z
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 340
    .restart local v0    # "N":I
    .restart local v1    # "cleanup":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_2
    const/16 v4, 0x63

    if-ne p1, v4, :cond_3

    .line 341
    :try_start_1
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightToggle(Z)V

    goto :goto_1

    .line 343
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 344
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_1

    .line 347
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 350
    .end local v3    # "l":Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    :cond_5
    if-eqz v1, :cond_6

    .line 351
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 353
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    return-void
.end method

.method private dispatchOff()V
    .locals 2

    .prologue
    .line 311
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 312
    return-void
.end method

.method private dispatchToggle(Z)V
    .locals 1
    .param p1, "newState"    # Z

    .prologue
    .line 320
    const/16 v0, 0x63

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    .line 321
    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 185
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 186
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 230
    .local v4, "id":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 231
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 232
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 233
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 238
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 229
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSmallestSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    .line 209
    .local v4, "outputSizes":[Landroid/util/Size;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_1

    .line 210
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "doesn\'t support any outputSize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    :cond_1
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 214
    .local v1, "chosen":Landroid/util/Size;
    move-object v0, v4

    .local v0, "arr$":[Landroid/util/Size;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 215
    .local v5, "s":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 216
    move-object v1, v5

    .line 214
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v5    # "s":Landroid/util/Size;
    :cond_3
    return-object v1
.end method

.method private handleError()V
    .locals 1

    .prologue
    .line 302
    monitor-enter p0

    .line 303
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 304
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchError()V

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V

    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V

    .line 308
    return-void

    .line 304
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postUpdateFlashlight()V
    .locals 2

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method private startDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 193
    return-void
.end method

.method private startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getSmallestSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    .line 198
    .local v1, "size":Landroid/util/Size;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 199
    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v0, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Surface;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 203
    return-void
.end method

.method private teardown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 291
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 292
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 297
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    .line 298
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 299
    return-void
.end method

.method private updateFlashlight(Z)V
    .locals 9
    .param p1, "forceDisable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 244
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    :try_start_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eqz v6, :cond_1

    if-nez p1, :cond_1

    .line 246
    .local v2, "enabled":Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    if-eqz v2, :cond_4

    .line 248
    :try_start_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v6, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->startDevice()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 287
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    return-void

    .line 245
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "FlashlightController"

    const-string v7, "Error in updateFlashlight"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V

    goto :goto_1

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "enabled":Z
    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v6, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->startSession()V

    goto :goto_1

    .line 283
    .end local v2    # "enabled":Z
    :catch_1
    move-exception v1

    goto :goto_2

    .line 256
    .restart local v2    # "enabled":Z
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v6, :cond_0

    .line 257
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 259
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 260
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 261
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 262
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 263
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 266
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.motorola.ACTION_FLASHLIGHT_ON"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v4, "flashOnIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.FLASHLIGHT"

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "enabled":Z
    .end local v4    # "flashOnIntent":Landroid/content/Intent;
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 271
    .restart local v2    # "enabled":Z
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v6, :cond_0

    .line 272
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.motorola.ACTION_FLASHLIGHT_OFF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "flashOffIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.FLASHLIGHT"

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 283
    .end local v2    # "enabled":Z
    .end local v3    # "flashOffIntent":Landroid/content/Intent;
    :catch_3
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "FlashlightController"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public killFlashlight()V
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 160
    .local v0, "enabled":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :cond_0
    return-void

    .line 160
    .end local v0    # "enabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 179
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setFlashlight(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

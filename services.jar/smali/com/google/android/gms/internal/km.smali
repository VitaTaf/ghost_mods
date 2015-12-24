.class public Lcom/google/android/gms/internal/km;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/km$a;
    }
.end annotation


# instance fields
.field private IJ:Lcom/google/android/gms/internal/km$a;

.field private final IK:Ljava/util/HashMap;

.field private final IL:Ljava/util/HashMap;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private a(Lcom/google/android/gms/internal/kk;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/km;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/km;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/kk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/km;->a(Lcom/google/android/gms/internal/kk;)V

    return-void
.end method


# virtual methods
.method fY()V
    .locals 2

    const-string v0, "CAR.SENSOR"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.SENSOR"

    const-string v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/km;->IK:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/km;->IK:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/km;->IJ:Lcom/google/android/gms/internal/km$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/km;->IL:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/km;->IL:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

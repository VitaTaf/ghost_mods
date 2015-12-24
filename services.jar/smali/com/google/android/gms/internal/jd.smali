.class public Lcom/google/android/gms/internal/jd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jd$a;
    }
.end annotation


# instance fields
.field private final GA:Lcom/google/android/gms/internal/jd$a;

.field private volatile GB:Z

.field private final Gu:Lcom/google/android/gms/internal/jb;

.field private final Gx:I

.field private final Gz:Lcom/google/android/gms/internal/kv;

.field private final mHandler:Landroid/os/Handler;

.field private mPlayState:I


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/jd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jd;->fZ()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jd;->ad(I)V

    return-void
.end method

.method private declared-synchronized ac(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/jd;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ad(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/jd;->ac(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jd;->ac(I)V

    goto :goto_0
.end method

.method private fZ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gz:Lcom/google/android/gms/internal/kv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jd;->GB:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gu:Lcom/google/android/gms/internal/jb;

    iget v1, p0, Lcom/google/android/gms/internal/jd;->Gx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->aa(I)V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jd;->GB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gu:Lcom/google/android/gms/internal/jb;

    iget v1, p0, Lcom/google/android/gms/internal/jd;->Gx:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->aa(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gz:Lcom/google/android/gms/internal/kv;

    iget-object v1, p0, Lcom/google/android/gms/internal/jd;->GA:Lcom/google/android/gms/internal/jd$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kw;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jd;->Gz:Lcom/google/android/gms/internal/kv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kv;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jd;->GB:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

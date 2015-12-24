.class public Lcom/google/android/gms/internal/jc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jc$a;
    }
.end annotation


# instance fields
.field private final Gu:Lcom/google/android/gms/internal/jb;

.field private final Gv:Lcom/google/android/gms/internal/kt;

.field private Gw:Ljava/io/InputStream;

.field private final Gx:I

.field private final Gy:Lcom/google/android/gms/internal/jc$a;

.field private volatile mState:I


# direct methods
.method private a(Landroid/os/RemoteException;)V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "CAR.AUDIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException from car service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gw:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gu:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jc;)V

    iput v3, p0, Lcom/google/android/gms/internal/jc;->mState:I

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized I(Z)V
    .locals 2

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jc;->stop()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gu:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/jc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gv:Lcom/google/android/gms/internal/kt;

    iget-object v1, p0, Lcom/google/android/gms/internal/jc;->Gy:Lcom/google/android/gms/internal/jc$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kt;->e(Lcom/google/android/gms/internal/ku;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x2

    :try_start_3
    iput v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    const-string v0, "CAR.AUDIO"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.AUDIO"

    const-string v1, "released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

.method public getStreamType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jc;->Gx:I

    return v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/jc;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "CAR.AUDIO"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.AUDIO"

    const-string v1, "stop while not started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/jc;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gv:Lcom/google/android/gms/internal/kt;

    iget-object v1, p0, Lcom/google/android/gms/internal/jc;->Gy:Lcom/google/android/gms/internal/jc$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kt;->b(Lcom/google/android/gms/internal/ku;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jc;->Gw:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    const-string v0, "CAR.AUDIO"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.AUDIO"

    const-string v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jc;->a(Landroid/os/RemoteException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

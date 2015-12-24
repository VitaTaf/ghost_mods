.class Lcom/google/android/gms/internal/jk$d;
.super Lcom/google/android/gms/internal/lb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final HB:Ljava/lang/Object;

.field private HD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/iy$d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile HE:Z

.field private final Hz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/lb$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/iy$d;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CAR.CLIENT"

    const-string v2, "ICarConnectionListenerImpl.notifyCarConnectionToClient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/jk$d$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jk$d$1;-><init>(Lcom/google/android/gms/internal/jk$d;Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/iy$d;I)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lr;->a(Landroid/os/Looper;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/internal/iy$d;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CAR.CLIENT"

    const-string v2, "ICarConnectionListenerImpl.notifyCarDisconnectionToClient"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/jk$d$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/jk$d$2;-><init>(Lcom/google/android/gms/internal/jk$d;Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/iy$d;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/lr;->a(Landroid/os/Looper;Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public Y(I)V
    .locals 5

    const/4 v1, 0x1

    const-string v0, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.CLIENT"

    const-string v2, "ICarConnectionListenerImpl.onConnected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v3, v0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-nez v0, :cond_3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    move v0, v1

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3, p1}, Lcom/google/android/gms/internal/jk$d;->a(Lcom/google/android/gms/internal/iy$d;I)V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/iy$d;

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v1, "CAR.CLIENT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not notifying car connection [listener="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shouldNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mConnectionNotified="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/internal/iy$d;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-nez p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Lcom/google/android/gms/internal/kg; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->gk()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-nez v4, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->gl()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/jk$d;->a(Lcom/google/android/gms/internal/iy$d;I)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/kg; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Lcom/google/android/gms/internal/kg; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d;->Hz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jk;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CAR.CLIENT"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CAR.CLIENT"

    const-string v3, "ICarConnectionListenerImpl.onDisconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/jk$d;->HB:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/jk$d;->HE:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/google/android/gms/internal/jk;->d(Lcom/google/android/gms/internal/jk;)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/jk$d;->b(Lcom/google/android/gms/internal/iy$d;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/jk$d;->HD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/iy$d;

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v2, v1

    goto :goto_1
.end method

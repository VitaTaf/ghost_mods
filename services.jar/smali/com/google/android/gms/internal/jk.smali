.class public Lcom/google/android/gms/internal/jk;
.super Lcom/google/android/gms/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jk$c;,
        Lcom/google/android/gms/internal/jk$d;,
        Lcom/google/android/gms/internal/jk$a;,
        Lcom/google/android/gms/internal/jk$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/i",
        "<",
        "Lcom/google/android/gms/internal/kp;",
        ">;"
    }
.end annotation


# instance fields
.field private final Hj:Ljava/lang/Object;

.field private Hk:Lcom/google/android/gms/internal/jb;

.field private Hl:Lcom/google/android/gms/internal/km;

.field private Hm:Lcom/google/android/gms/internal/kf;

.field private Hn:Lcom/google/android/gms/internal/kb;

.field private Ho:Lcom/google/android/gms/internal/jj;

.field private final Hp:Ljava/util/HashMap;

.field private Hq:Lcom/google/android/gms/internal/ke;

.field private Hr:Lcom/google/android/gms/internal/je;

.field private final Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Ht:Lcom/google/android/gms/internal/iy$d;

.field private final Hu:Lcom/google/android/gms/internal/jk$d;

.field private final Hv:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private Hw:Lcom/google/android/gms/internal/jk$c;

.field private Hx:Lcom/google/android/gms/internal/jk$a;

.field private Hy:Lcom/google/android/gms/internal/kp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/iy$d;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/4 v6, 0x0

    new-array v5, v6, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hj:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hp:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/jk$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk$d;-><init>(Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    new-instance v0, Lcom/google/android/gms/internal/jk$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk$b;-><init>(Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hv:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hv:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/jk;->Ht:Lcom/google/android/gms/internal/iy$d;

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/jk$d;->a(Lcom/google/android/gms/internal/iy$d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jk;)Lcom/google/android/gms/internal/jk$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    return-object v0
.end method

.method private a(Landroid/os/RemoteException;)V
    .locals 3

    const-string v0, "CAR.CLIENT"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.CLIENT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception from car service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CAR.CLIENT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CAR.CLIENT"

    const-string v1, "Already handling a remote exception, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk$d;->onDisconnected()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->disconnect()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jk;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jk;->a(Landroid/os/RemoteException;)V

    return-void
.end method

.method public static a(Ljava/lang/IllegalStateException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kg;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarNotConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/kg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kg;-><init>()V

    throw v0

    :cond_0
    throw p0
.end method

.method private b(Landroid/os/RemoteException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kg;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jk;->a(Landroid/os/RemoteException;)V

    new-instance v0, Lcom/google/android/gms/internal/kg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kg;-><init>()V

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gn()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/jk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gp()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/jk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->fY()V

    return-void
.end method

.method private fY()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gm()V

    return-void
.end method

.method private gm()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hk:Lcom/google/android/gms/internal/jb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hk:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hk:Lcom/google/android/gms/internal/jb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hl:Lcom/google/android/gms/internal/km;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hl:Lcom/google/android/gms/internal/km;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/km;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hl:Lcom/google/android/gms/internal/km;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hq:Lcom/google/android/gms/internal/ke;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hq:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ke;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hq:Lcom/google/android/gms/internal/ke;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hr:Lcom/google/android/gms/internal/je;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hr:Lcom/google/android/gms/internal/je;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/je;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hr:Lcom/google/android/gms/internal/je;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hm:Lcom/google/android/gms/internal/kf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hm:Lcom/google/android/gms/internal/kf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kf;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hm:Lcom/google/android/gms/internal/kf;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hn:Lcom/google/android/gms/internal/kb;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hn:Lcom/google/android/gms/internal/kb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kb;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hn:Lcom/google/android/gms/internal/kb;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Ho:Lcom/google/android/gms/internal/jj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Ho:Lcom/google/android/gms/internal/jj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jj;->fY()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Ho:Lcom/google/android/gms/internal/jj;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized gn()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/jk$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jk$a;-><init>(Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "CAR.CLIENT"

    const-string v1, "Unable to link death recipient to ICar."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized go()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hx:Lcom/google/android/gms/internal/jk$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hy:Lcom/google/android/gms/internal/kp;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gp()V
    .locals 2

    const-string v0, "CAR.CLIENT"

    const-string v1, "ICar died!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk$d;->onDisconnected()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->go()V

    return-void
.end method


# virtual methods
.method protected N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/kp$a;->O(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/android/gms/common/internal/q;Lcom/google/android/gms/common/internal/i$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    const-string v2, "car-1-0"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x6768a8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/q;->o(Lcom/google/android/gms/common/internal/p;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected bO()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.car.service.START"

    return-object v0
.end method

.method protected bP()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.car.ICar"

    return-object v0
.end method

.method public connect()V
    .locals 2

    const-string v0, "CAR.CLIENT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.CLIENT"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "CAR.CLIENT"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.CLIENT"

    const-string v2, "disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->go()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jk;->gm()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hu:Lcom/google/android/gms/internal/jk$d;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/lb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hw:Lcom/google/android/gms/internal/jk$c;

    if-eqz v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/jk;->Hw:Lcom/google/android/gms/internal/jk$c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kp;->b(Lcom/google/android/gms/internal/kq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jk;->Hw:Lcom/google/android/gms/internal/jk$c;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/i;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    :goto_3
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public gk()Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->gk()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jk;->a(Landroid/os/RemoteException;)V

    move v0, v1

    goto :goto_0
.end method

.method public gl()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kg;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->dZ()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jk;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kp;->gl()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jk;->b(Landroid/os/RemoteException;)V

    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jk;->a(Ljava/lang/IllegalStateException;)V

    goto :goto_1
.end method

.method protected synthetic m(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jk;->N(Landroid/os/IBinder;)Lcom/google/android/gms/internal/kp;

    move-result-object v0

    return-object v0
.end method

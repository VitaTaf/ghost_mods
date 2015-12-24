.class public Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jj$a;,
        Lcom/google/android/gms/internal/jj$b;
    }
.end annotation


# instance fields
.field private final GP:Lcom/google/android/gms/internal/kz;

.field private final GQ:Lcom/google/android/gms/internal/lk;

.field private GR:Lcom/google/android/gms/internal/jj$a;

.field private final GS:Lcom/google/android/gms/internal/jj$b;

.field private final GT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/jj;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jj;->b(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jj;->d(Lcom/google/android/gms/internal/jf;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->b(Lcom/google/android/gms/internal/jf;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->b(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->b(Lcom/google/android/gms/internal/jf;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->d(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/jj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/jj;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/jj;->b(ZII)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const-string v0, "CAR.TEL.CarCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/view/KeyEvent;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "dispatchPhoneKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/jj$1;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Landroid/view/KeyEvent;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/jf;I)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$8;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$8;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;I)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf$a;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onDetailsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$11;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$11;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf$a;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/jf;Ljava/lang/String;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onPostDialWait"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$2;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$2;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jj;->e(Lcom/google/android/gms/internal/jf;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->e(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    return-void
.end method

.method private b(ZII)V
    .locals 8

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onAudioStateChanged isMuted=%b\troute=%d\tsupportedRoutes=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ji;

    new-instance v0, Lcom/google/android/gms/internal/jj$5;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jj$5;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;ZII)V

    invoke-static {v0}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jj;->f(Lcom/google/android/gms/internal/jf;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/jf;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->f(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    return-void
.end method

.method private d(Lcom/google/android/gms/internal/jf;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$6;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/jj$6;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private d(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jf;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onChildrenChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$10;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$10;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private e(Lcom/google/android/gms/internal/jf;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/jj$7;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private e(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onCannedTextResponsesLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$12;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$12;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private f(Lcom/google/android/gms/internal/jf;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onCallDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/jj$3;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private f(Lcom/google/android/gms/internal/jf;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jf;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onConferenceableCallsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$4;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$4;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Ljava/util/List;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V
    .locals 4

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "onParentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ji;

    new-instance v3, Lcom/google/android/gms/internal/jj$9;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/google/android/gms/internal/jj$9;-><init>(Lcom/google/android/gms/internal/jj;Lcom/google/android/gms/internal/ji;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/jf;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/lr;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public fY()V
    .locals 2

    const-string v0, "CAR.TEL.CarCallManager"

    const-string v1, "handleCarDisconnection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GQ:Lcom/google/android/gms/internal/lk;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GS:Lcom/google/android/gms/internal/jj$b;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lk;->b(Lcom/google/android/gms/internal/ll;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jj;->GP:Lcom/google/android/gms/internal/kz;

    iget-object v1, p0, Lcom/google/android/gms/internal/jj;->GR:Lcom/google/android/gms/internal/jj$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/kz;->b(Lcom/google/android/gms/internal/la;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

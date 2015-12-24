.class public Lcom/google/android/gms/internal/kb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kb$c;,
        Lcom/google/android/gms/internal/kb$a;,
        Lcom/google/android/gms/internal/kb$b;
    }
.end annotation


# instance fields
.field private final Ih:Lcom/google/android/gms/internal/lc;

.field private final Ii:Lcom/google/android/gms/internal/kb$a;

.field private Ij:Lcom/google/android/gms/internal/kb$b;

.field private final Ik:Lcom/google/android/gms/internal/le;

.field private final Il:Lcom/google/android/gms/internal/kb$c;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/google/android/gms/internal/kb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kb;->ap(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kb;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/kb;->f(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kb;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/kb;->a(Ljava/lang/String;IZ)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ap(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private f(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method fY()V
    .locals 2

    const-string v0, "CAR.MEDIA"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.MEDIA"

    const-string v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kb;->gq()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->Ih:Lcom/google/android/gms/internal/lc;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->Ii:Lcom/google/android/gms/internal/kb$a;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lc;->b(Lcom/google/android/gms/internal/ld;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kb;->Ik:Lcom/google/android/gms/internal/le;

    iget-object v1, p0, Lcom/google/android/gms/internal/kb;->Il:Lcom/google/android/gms/internal/kb$c;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/le;->b(Lcom/google/android/gms/internal/lf;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public gq()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/kb;->Ij:Lcom/google/android/gms/internal/kb$b;

    return-void
.end method

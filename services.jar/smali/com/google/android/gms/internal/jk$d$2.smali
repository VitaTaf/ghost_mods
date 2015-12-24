.class Lcom/google/android/gms/internal/jk$d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jk$d;->b(Lcom/google/android/gms/internal/iy$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HF:Lcom/google/android/gms/internal/jk;

.field final synthetic HG:Lcom/google/android/gms/internal/iy$d;

.field final synthetic HI:Lcom/google/android/gms/internal/jk$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jk$d;Lcom/google/android/gms/internal/jk;Lcom/google/android/gms/internal/iy$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jk$d$2;->HI:Lcom/google/android/gms/internal/jk$d;

    iput-object p2, p0, Lcom/google/android/gms/internal/jk$d$2;->HF:Lcom/google/android/gms/internal/jk;

    iput-object p3, p0, Lcom/google/android/gms/internal/jk$d$2;->HG:Lcom/google/android/gms/internal/iy$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d$2;->HF:Lcom/google/android/gms/internal/jk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jk;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jk$d$2;->HG:Lcom/google/android/gms/internal/iy$d;

    invoke-interface {v0}, Lcom/google/android/gms/internal/iy$d;->onDisconnected()V

    :cond_0
    return-void
.end method

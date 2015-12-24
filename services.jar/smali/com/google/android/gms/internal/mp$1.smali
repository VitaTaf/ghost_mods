.class Lcom/google/android/gms/internal/mp$1;
.super Lcom/google/android/gms/internal/mq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/mp;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qx:Lcom/google/android/gms/internal/mp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mp;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mp$1;->Qx:Lcom/google/android/gms/internal/mp;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mq$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/mr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mp$1;->a(Lcom/google/android/gms/internal/mr;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/mr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mr;->iB()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mt;

    new-instance v1, Lcom/google/android/gms/internal/mp$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/mp$a;-><init>(Lcom/google/android/gms/common/api/a$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/mt;->a(Lcom/google/android/gms/internal/ms;)V

    return-void
.end method

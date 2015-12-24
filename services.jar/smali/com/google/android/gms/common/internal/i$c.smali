.class public final Lcom/google/android/gms/common/internal/i$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final PW:Lcom/google/android/gms/common/c$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i$c;->PW:Lcom/google/android/gms/common/c$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/google/android/gms/common/internal/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$c;->PW:Lcom/google/android/gms/common/c$a;

    check-cast p1, Lcom/google/android/gms/common/internal/i$c;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/gms/common/internal/i$c;->PW:Lcom/google/android/gms/common/c$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$c;->PW:Lcom/google/android/gms/common/c$a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$c;->PW:Lcom/google/android/gms/common/c$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/c$a;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$c;->PW:Lcom/google/android/gms/common/c$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/c$a;->onDisconnected()V

    return-void
.end method

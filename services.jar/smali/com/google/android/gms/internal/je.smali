.class public Lcom/google/android/gms/internal/je;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/je$a;
    }
.end annotation


# instance fields
.field private final GD:Lcom/google/android/gms/internal/je$a;


# virtual methods
.method fY()V
    .locals 2

    const-string v0, "CAR.BT"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jr;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.BT"

    const-string v1, "handleCarDisconnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/je;->GD:Lcom/google/android/gms/internal/je$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/je$a;->gb()V

    return-void
.end method

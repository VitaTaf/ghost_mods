.class public Lcom/google/android/gms/internal/lr;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/lr;->a(Landroid/os/Looper;Ljava/lang/Runnable;)V

    return-void
.end method

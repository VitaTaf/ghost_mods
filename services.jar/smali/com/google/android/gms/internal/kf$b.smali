.class Lcom/google/android/gms/internal/kf$b;
.super Lcom/google/android/gms/internal/lj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final Hi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/kf;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/kf$b;->Hi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kf;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/kf;->a(Lcom/google/android/gms/internal/kf;IIIII)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kf$b;->Hi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kf;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/kf;->a(Lcom/google/android/gms/internal/kf;)V

    :cond_0
    return-void
.end method

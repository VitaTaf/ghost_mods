.class Lcom/google/android/gms/internal/km$a;
.super Lcom/google/android/gms/internal/lo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/km;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final Hi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/km;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(Lcom/google/android/gms/internal/kk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/km$a;->Hi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/km;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/km;->a(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/kk;)V

    :cond_0
    return-void
.end method

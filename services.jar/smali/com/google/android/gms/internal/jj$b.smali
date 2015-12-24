.class Lcom/google/android/gms/internal/jj$b;
.super Lcom/google/android/gms/internal/ll$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jj;
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
            "Lcom/google/android/gms/internal/jj;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jj$b;->Hi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jj;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/internal/jj;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

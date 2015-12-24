.class public Lcom/google/android/gms/internal/rk$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final aqI:Lcom/google/android/gms/internal/rn;

.field public final aqJ:Lcom/google/android/gms/internal/rj;

.field public final aqK:Lcom/google/android/gms/internal/tt$d;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rn;

    iput-object v0, p0, Lcom/google/android/gms/internal/rk$a;->aqI:Lcom/google/android/gms/internal/rn;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rj;

    iput-object v0, p0, Lcom/google/android/gms/internal/rk$a;->aqJ:Lcom/google/android/gms/internal/rj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rk$a;->aqK:Lcom/google/android/gms/internal/tt$d;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;Lcom/google/android/gms/internal/rk$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/rk$a;-><init>(Lcom/google/android/gms/internal/rn;Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

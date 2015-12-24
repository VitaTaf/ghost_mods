.class public final Lcom/google/android/gms/internal/iy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iy$f;,
        Lcom/google/android/gms/internal/iy$c;,
        Lcom/google/android/gms/internal/iy$e;,
        Lcom/google/android/gms/internal/iy$b;,
        Lcom/google/android/gms/internal/iy$g;,
        Lcom/google/android/gms/internal/iy$a;,
        Lcom/google/android/gms/internal/iy$d;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/internal/iy$g;",
            ">;"
        }
    .end annotation
.end field

.field static final EC:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            ">;"
        }
    .end annotation
.end field

.field private static final ED:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            "Lcom/google/android/gms/internal/iy$g;",
            ">;"
        }
    .end annotation
.end field

.field public static final Gl:Lcom/google/android/gms/internal/iy$b;

.field public static final Gm:Lcom/google/android/gms/internal/iy$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/iy;->EC:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/internal/iy$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iy$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/iy;->ED:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/internal/iy;->ED:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/internal/iy;->EC:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/internal/iy;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/iy$c;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/iy$c;-><init>(Lcom/google/android/gms/internal/iy$1;)V

    sput-object v0, Lcom/google/android/gms/internal/iy;->Gl:Lcom/google/android/gms/internal/iy$b;

    new-instance v0, Lcom/google/android/gms/internal/iy$f;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/iy$f;-><init>(Lcom/google/android/gms/internal/iy$1;)V

    sput-object v0, Lcom/google/android/gms/internal/iy;->Gm:Lcom/google/android/gms/internal/iy$e;

    return-void
.end method

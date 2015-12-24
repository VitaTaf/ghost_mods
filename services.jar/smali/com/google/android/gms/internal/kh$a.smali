.class public Lcom/google/android/gms/internal/kh$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/kh$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field public IA:Ljava/lang/String;

.field public IB:Ljava/lang/String;

.field public IC:Ljava/lang/String;

.field public IE:[B

.field public Iz:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ki;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ki;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kh$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/kh$a;->Dw:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/kh$a;->Dw:I

    iput p2, p0, Lcom/google/android/gms/internal/kh$a;->state:I

    iput-object p4, p0, Lcom/google/android/gms/internal/kh$a;->IA:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/kh$a;->Iz:I

    iput-object p5, p0, Lcom/google/android/gms/internal/kh$a;->IB:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/kh$a;->IC:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/kh$a;->IE:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/kh$a;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ki;->a(Lcom/google/android/gms/internal/kh$a;Landroid/os/Parcel;I)V

    return-void
.end method

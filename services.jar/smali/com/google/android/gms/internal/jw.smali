.class public Lcom/google/android/gms/internal/jw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field public Ic:[B

.field public Id:Lcom/google/android/gms/internal/js$a;

.field public Ie:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jw;->Dw:I

    new-instance v0, Lcom/google/android/gms/internal/js$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/js$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jw;->Id:Lcom/google/android/gms/internal/js$a;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/js$a;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jw;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jw;->Id:Lcom/google/android/gms/internal/js$a;

    iput-object p3, p0, Lcom/google/android/gms/internal/jw;->Ic:[B

    iput p4, p0, Lcom/google/android/gms/internal/jw;->Ie:I

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

    iget v0, p0, Lcom/google/android/gms/internal/jw;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jx;->a(Lcom/google/android/gms/internal/jw;Landroid/os/Parcel;I)V

    return-void
.end method

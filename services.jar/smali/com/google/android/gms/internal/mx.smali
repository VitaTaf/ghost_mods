.class public Lcom/google/android/gms/internal/mx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/my;


# instance fields
.field private final Dw:I

.field private final QH:Lcom/google/android/gms/internal/mz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/my;

    invoke-direct {v0}, Lcom/google/android/gms/internal/my;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mx;->CREATOR:Lcom/google/android/gms/internal/my;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/mz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mx;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mx;->QH:Lcom/google/android/gms/internal/mz;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/mz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/mx;->Dw:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mx;->QH:Lcom/google/android/gms/internal/mz;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/nc$b;)Lcom/google/android/gms/internal/mx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/nc$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/mx;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/mz;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/mx;

    check-cast p0, Lcom/google/android/gms/internal/mz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mx;-><init>(Lcom/google/android/gms/internal/mz;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mx;->CREATOR:Lcom/google/android/gms/internal/my;

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mx;->Dw:I

    return v0
.end method

.method iI()Lcom/google/android/gms/internal/mz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->QH:Lcom/google/android/gms/internal/mz;

    return-object v0
.end method

.method public iJ()Lcom/google/android/gms/internal/nc$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/nc$b",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->QH:Lcom/google/android/gms/internal/mz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mx;->QH:Lcom/google/android/gms/internal/mz;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/mx;->CREATOR:Lcom/google/android/gms/internal/my;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/my;->a(Lcom/google/android/gms/internal/mx;Landroid/os/Parcel;I)V

    return-void
.end method

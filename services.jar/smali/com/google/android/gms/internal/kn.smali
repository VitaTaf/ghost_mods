.class public Lcom/google/android/gms/internal/kn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/kn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field private IM:Z

.field private IN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ko;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/kn;->Dw:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/kn;->IM:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/kn;->IN:Z

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

    iget v0, p0, Lcom/google/android/gms/internal/kn;->Dw:I

    return v0
.end method

.method public gs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kn;->IM:Z

    return v0
.end method

.method public gt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kn;->IN:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CarUiInfo (hasRotaryController: %b, hasTouchscreen: %b)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/kn;->IM:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/kn;->IN:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ko;->a(Lcom/google/android/gms/internal/kn;Landroid/os/Parcel;I)V

    return-void
.end method

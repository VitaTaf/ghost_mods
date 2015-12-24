.class public Lcom/google/android/gms/internal/iu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/iv;


# instance fields
.field final Fi:Landroid/os/Bundle;

.field final Fj:[B

.field final responseCode:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/iv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/iv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/iu;->CREATOR:Lcom/google/android/gms/internal/iv;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/iu;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/iu;->responseCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/iu;->Fi:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/iu;->Fj:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/iv;->a(Lcom/google/android/gms/internal/iu;Landroid/os/Parcel;I)V

    return-void
.end method

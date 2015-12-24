.class public Lcom/google/android/gms/internal/js;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/js$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Dw:I

.field public HV:Lcom/google/android/gms/internal/jy$a;

.field public HW:I

.field public HX:[Lcom/google/android/gms/internal/js$a;

.field public start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/js;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/jy$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jy$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/js;->HV:Lcom/google/android/gms/internal/jy$a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/js;->Dw:I

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/jy$a;II[Lcom/google/android/gms/internal/js$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/jy$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jy$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/js;->HV:Lcom/google/android/gms/internal/jy$a;

    iput p1, p0, Lcom/google/android/gms/internal/js;->Dw:I

    iput-object p2, p0, Lcom/google/android/gms/internal/js;->HV:Lcom/google/android/gms/internal/jy$a;

    iput p3, p0, Lcom/google/android/gms/internal/js;->start:I

    iput p4, p0, Lcom/google/android/gms/internal/js;->HW:I

    iput-object p5, p0, Lcom/google/android/gms/internal/js;->HX:[Lcom/google/android/gms/internal/js$a;

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

    iget v0, p0, Lcom/google/android/gms/internal/js;->Dw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jt;->a(Lcom/google/android/gms/internal/js;Landroid/os/Parcel;I)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/nl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nm;


# instance fields
.field final Dw:I

.field private final Rg:J

.field private Rh:Ljava/lang/String;

.field private final Ri:Ljava/lang/String;

.field private final Rj:Ljava/lang/String;

.field private final Rk:Ljava/lang/String;

.field private final Rl:Ljava/lang/String;

.field private final Rm:Ljava/lang/String;

.field private final Rn:J

.field private Ro:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nl;->CREATOR:Lcom/google/android/gms/internal/nm;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nl;->Dw:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/nl;->Rg:J

    iput-object p4, p0, Lcom/google/android/gms/internal/nl;->Rh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/nl;->Ri:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/nl;->Rj:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/nl;->Rk:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/nl;->Rl:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/nl;->Ro:J

    iput-object p9, p0, Lcom/google/android/gms/internal/nl;->Rm:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/internal/nl;->Rn:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/nl;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/nl;->Rg:J

    return-wide v0
.end method

.method public jh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->Rh:Ljava/lang/String;

    return-object v0
.end method

.method public ji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->Ri:Ljava/lang/String;

    return-object v0
.end method

.method public jj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->Rj:Ljava/lang/String;

    return-object v0
.end method

.method public jk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->Rk:Ljava/lang/String;

    return-object v0
.end method

.method public jl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->Rl:Ljava/lang/String;

    return-object v0
.end method

.method public jm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nl;->Rm:Ljava/lang/String;

    return-object v0
.end method

.method public jn()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/nl;->Rn:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nm;->a(Lcom/google/android/gms/internal/nl;Landroid/os/Parcel;I)V

    return-void
.end method

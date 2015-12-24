.class public final Lcom/google/android/gms/internal/tt$d;
.super Lcom/google/android/gms/internal/tj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/tj",
        "<",
        "Lcom/google/android/gms/internal/tt$d;",
        ">;"
    }
.end annotation


# instance fields
.field public aDi:J

.field public aDj:I

.field public aDk:I

.field public aDl:Z

.field public aDm:[Lcom/google/android/gms/internal/tt$e;

.field public aDn:Lcom/google/android/gms/internal/tt$b;

.field public aDo:[B

.field public aDp:[B

.field public aDq:[B

.field public aDr:Lcom/google/android/gms/internal/tt$a;

.field public aDs:Ljava/lang/String;

.field public aDt:J

.field public aDu:Lcom/google/android/gms/internal/tt$c;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/tj;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$d;->tE()Lcom/google/android/gms/internal/tt$d;

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/tt$d;->a(Lcom/google/android/gms/internal/th;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sY()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ts;->b(Lcom/google/android/gms/internal/th;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/tt$e;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/tt$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/tt$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sW()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/tt$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/tt$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/tt$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/tt$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->ta()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->sZ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/th;->tc()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/internal/tt$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/tt$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/th;->a(Lcom/google/android/gms/internal/tp;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
        0x82 -> :sswitch_e
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/ti;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ti;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    sget-object v1, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    sget-object v1, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->z(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->z(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    sget-object v1, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->b(ILjava/lang/String;)V

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ti;->c(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ti;->a(ILcom/google/android/gms/internal/tp;)V

    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/tj;->a(Lcom/google/android/gms/internal/ti;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$d;->B(Lcom/google/android/gms/internal/th;)Lcom/google/android/gms/internal/tt$d;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/tj;->c()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ti;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    sget-object v2, Lcom/google/android/gms/internal/ts;->aDa:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    const-wide/32 v4, 0x2bf20

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ti;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ti;->c(ILcom/google/android/gms/internal/tp;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/tt$d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/tt$d;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/tt$d;->aDi:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    iget v2, p1, Lcom/google/android/gms/internal/tt$d;->aDj:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    iget v2, p1, Lcom/google/android/gms/internal/tt$d;->aDk:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/tn;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/tt$d;->aDt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-nez v1, :cond_b

    iget-object v1, p1, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-nez v1, :cond_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/tt$d;->a(Lcom/google/android/gms/internal/tj;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/tt$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/tt$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    iget-object v2, p1, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/tt$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    invoke-static {v2}, Lcom/google/android/gms/internal/tn;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/tt$d;->tn()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tt$b;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tt$a;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/tt$c;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public tE()Lcom/google/android/gms/internal/tt$d;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDi:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->tag:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/internal/tt$d;->aDj:I

    iput v3, p0, Lcom/google/android/gms/internal/tt$d;->aDk:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/tt$d;->aDl:Z

    invoke-static {}, Lcom/google/android/gms/internal/tt$e;->tF()[Lcom/google/android/gms/internal/tt$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDm:[Lcom/google/android/gms/internal/tt$e;

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDn:Lcom/google/android/gms/internal/tt$b;

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDo:[B

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDp:[B

    sget-object v0, Lcom/google/android/gms/internal/ts;->aDa:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDq:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDr:Lcom/google/android/gms/internal/tt$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/tt$d;->aDs:Ljava/lang/String;

    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/google/android/gms/internal/tt$d;->aDt:J

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aDu:Lcom/google/android/gms/internal/tt$c;

    iput-object v2, p0, Lcom/google/android/gms/internal/tt$d;->aCG:Lcom/google/android/gms/internal/tl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/tt$d;->aCR:I

    return-object p0
.end method

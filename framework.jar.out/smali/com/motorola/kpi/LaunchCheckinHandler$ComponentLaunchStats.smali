.class Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;
.super Ljava/lang/Object;
.source "LaunchCheckinHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/LaunchCheckinHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentLaunchStats"
.end annotation


# instance fields
.field coldValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field coldavg:F

.field colddev:F

.field coldmed:F

.field warmValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field warmavg:F

.field warmdev:F

.field warmmed:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "size":I
    :goto_0
    if-eqz v0, :cond_0

    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 68
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    :goto_1
    if-eqz v0, :cond_1

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 75
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_1
    return-void
.end method

.method private computeAvg(Ljava/util/ArrayList;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 129
    :goto_0
    return v1

    .line 124
    :cond_0
    const-wide/16 v2, 0x0

    .line 125
    .local v2, "sum":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 129
    :cond_1
    long-to-float v1, v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    goto :goto_0
.end method

.method private computeMedian(Ljava/util/ArrayList;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 149
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 156
    :goto_0
    return v1

    .line 152
    :cond_0
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 153
    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v1, v2

    goto :goto_0

    .line 156
    :cond_1
    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private computeStdDev(Ljava/util/ArrayList;F)F
    .locals 10
    .param p2, "avg"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;F)F"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const/4 v5, 0x0

    .line 144
    :goto_0
    return v5

    .line 136
    :cond_0
    const-wide/16 v6, 0x0

    .line 138
    .local v6, "sum":J
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    .line 139
    .local v0, "avglong":J
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 140
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v2, v8, v0

    .line 142
    .local v2, "dif":J
    mul-long v8, v2, v2

    add-long/2addr v6, v8

    goto :goto_1

    .line 144
    .end local v2    # "dif":J
    :cond_1
    long-to-float v5, v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    goto :goto_0
.end method


# virtual methods
.method addCold(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method addWarm(J)V
    .locals 3
    .param p1, "ms"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method coldAvg()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldavg:F

    return v0
.end method

.method coldMax()J
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 178
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method coldMedian()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldmed:F

    return v0
.end method

.method coldMin()J
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 186
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method coldN()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method coldStdDev()F
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->colddev:F

    return v0
.end method

.method computeStats()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeAvg(Ljava/util/ArrayList;)F

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldavg:F

    .line 111
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldavg:F

    invoke-direct {p0, v0, v1}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeStdDev(Ljava/util/ArrayList;F)F

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->colddev:F

    .line 112
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeMedian(Ljava/util/ArrayList;)F

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldmed:F

    .line 114
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeAvg(Ljava/util/ArrayList;)F

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmavg:F

    .line 116
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmavg:F

    invoke-direct {p0, v0, v1}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeStdDev(Ljava/util/ArrayList;F)F

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmdev:F

    .line 117
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->computeMedian(Ljava/util/ArrayList;)F

    move-result v0

    iput v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmmed:F

    .line 118
    return-void
.end method

.method warmAvg()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmavg:F

    return v0
.end method

.method warmMax()J
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 207
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method warmMedian()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmmed:F

    return v0
.end method

.method warmMin()J
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 215
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method warmN()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method warmStdDev()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmdev:F

    return v0
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->coldValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 84
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ComponentLaunchStats;->warmValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method

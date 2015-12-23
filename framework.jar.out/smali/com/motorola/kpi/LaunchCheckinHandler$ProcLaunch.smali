.class Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
.super Ljava/lang/Object;
.source "LaunchCheckinHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/LaunchCheckinHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcLaunch"
.end annotation


# instance fields
.field coldTime:J

.field name:Ljava/lang/String;

.field started:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;",
            ">;"
        }
    .end annotation
.end field

.field suspended:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;",
            ">;"
        }
    .end annotation
.end field

.field warmTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ms"    # J

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->name:Ljava/lang/String;

    .line 242
    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->warmTime:J

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->started:Ljava/util/Map;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;->suspended:Ljava/util/Map;

    .line 245
    return-void
.end method

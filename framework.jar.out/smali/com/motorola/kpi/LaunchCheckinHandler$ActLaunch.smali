.class Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;
.super Ljava/lang/Object;
.source "LaunchCheckinHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/kpi/LaunchCheckinHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActLaunch"
.end annotation


# instance fields
.field coldTime:J

.field name:Ljava/lang/String;

.field proc:Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

.field warmTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;
    .param p3, "ms"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->proc:Lcom/motorola/kpi/LaunchCheckinHandler$ProcLaunch;

    iput-wide p3, p0, Lcom/motorola/kpi/LaunchCheckinHandler$ActLaunch;->warmTime:J

    return-void
.end method

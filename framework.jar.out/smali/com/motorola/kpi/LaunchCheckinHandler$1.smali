.class Lcom/motorola/kpi/LaunchCheckinHandler$1;
.super Ljava/lang/Thread;
.source "LaunchCheckinHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/kpi/LaunchCheckinHandler;->saveStats(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/kpi/LaunchCheckinHandler;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/motorola/kpi/LaunchCheckinHandler;J)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/motorola/kpi/LaunchCheckinHandler$1;->this$0:Lcom/motorola/kpi/LaunchCheckinHandler;

    iput-wide p2, p0, Lcom/motorola/kpi/LaunchCheckinHandler$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$1;->this$0:Lcom/motorola/kpi/LaunchCheckinHandler;

    # getter for: Lcom/motorola/kpi/LaunchCheckinHandler;->launchStats:Ljava/util/Map;
    invoke-static {v0}, Lcom/motorola/kpi/LaunchCheckinHandler;->access$000(Lcom/motorola/kpi/LaunchCheckinHandler;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/motorola/kpi/LaunchCheckinHandler$1;->this$0:Lcom/motorola/kpi/LaunchCheckinHandler;

    iget-wide v2, p0, Lcom/motorola/kpi/LaunchCheckinHandler$1;->val$now:J

    # invokes: Lcom/motorola/kpi/LaunchCheckinHandler;->saveStatsLocked(J)V
    invoke-static {v0, v2, v3}, Lcom/motorola/kpi/LaunchCheckinHandler;->access$100(Lcom/motorola/kpi/LaunchCheckinHandler;J)V

    .line 628
    monitor-exit v1

    .line 629
    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

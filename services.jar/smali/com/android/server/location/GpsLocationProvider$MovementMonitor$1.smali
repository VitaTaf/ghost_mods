.class Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/motorola/slpc/ModalityManager$MovementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider$MovementMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndMovement()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onEndMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onEndMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropagateTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7002(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;J)J

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .local v0, "changed":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$6500(Lcom/android/server/location/GpsLocationProvider;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mEndDuration:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7100(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MovementMonitor hibernate w/ prop interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x3

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mPropInterval:I
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$7200(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v4, v4, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mMvmtMonIntent:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$5600(Lcom/android/server/location/GpsLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v4

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$7300(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # invokes: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v8}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "GpsLocationProvider"

    const-string v3, "MovementMonitor hibernate until sensor hub wakes us"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x4

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6802(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;I)I

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, -0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate_Locked(ILandroid/app/PendingIntent;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$7300(Lcom/android/server/location/GpsLocationProvider;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartMovement()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->isMonitoring()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor onStartMovement when not monitoring!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6700(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GpsLocationProvider"

    const-string v2, "MovementMonitor *ignoring* onStartMovement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mExpectEnd:Z
    invoke-static {v1, v3}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6702(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->cancelAlarm()V

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6600(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # getter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mState:I
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6800(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;)I

    move-result v1

    if-eq v1, v3, :cond_5

    # getter for: Lcom/android/server/location/GpsLocationProvider;->DEBUG:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GpsLocationProvider"

    const-string v2, "onStartMovement(), calling updateNoFix()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    invoke-virtual {v1}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateNoFix()V

    :cond_5
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # setter for: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->mFirstCb:Z
    invoke-static {v1, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6602(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)Z

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v2, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->updateSavings(ZZ)Z

    move-result v0

    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$4800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    iget-object v1, v1, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v3, 0x0

    const/4 v4, 0x1

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating_Locked(ZZ)V
    invoke-static {v1, v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$5800(Lcom/android/server/location/GpsLocationProvider;ZZ)V

    :cond_6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$MovementMonitor$1;->this$1:Lcom/android/server/location/GpsLocationProvider$MovementMonitor;

    # invokes: Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->broadcastSavings(Z)V
    invoke-static {v1, v5}, Lcom/android/server/location/GpsLocationProvider$MovementMonitor;->access$6900(Lcom/android/server/location/GpsLocationProvider$MovementMonitor;Z)V

    goto :goto_0

    .end local v0    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.class Lcom/android/server/location/LocationMetrics$1;
.super Ljava/lang/Thread;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationMetrics;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/location/LocationMetrics$1;->this$0:Lcom/android/server/location/LocationMetrics;

    iput-object p2, p0, Lcom/android/server/location/LocationMetrics$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/location/LocationMetrics$1;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/location/LocationMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 131
    .local v4, "timestamp":J
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_CA_STATS_L2"

    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$1;->val$eventName:Ljava/lang/String;

    const-string v3, "1.0"

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    .local v0, "checkinEvent":Lcom/motorola/android/provider/CheckinEvent;
    const-string v9, ""

    .line 134
    .local v9, "paramLogStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationMetrics$1;->val$params:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/LocationMetrics$EventParam;

    .line 135
    .local v8, "p":Lcom/android/server/location/LocationMetrics$EventParam;
    iget-object v1, v8, Lcom/android/server/location/LocationMetrics$EventParam;->key:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/location/LocationMetrics$EventParam;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/location/LocationMetrics$EventParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 137
    goto :goto_0

    .line 138
    .end local v8    # "p":Lcom/android/server/location/LocationMetrics$EventParam;
    :cond_0
    # getter for: Lcom/android/server/location/LocationMetrics;->DBG:Z
    invoke-static {}, Lcom/android/server/location/LocationMetrics;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "Location Metrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publish event: tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/motorola/android/provider/CheckinEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", params ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/LocationMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0    # "checkinEvent":Lcom/motorola/android/provider/CheckinEvent;
    .end local v4    # "timestamp":J
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "paramLogStr":Ljava/lang/String;
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v6

    .line 145
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "Location Metrics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CheckinEvent exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

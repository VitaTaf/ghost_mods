.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->setupInstBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.motorola.location.instrumentation"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 322
    const-string v4, "com.motorola.location.insttype"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "instType":Ljava/lang/String;
    const-string v4, "com.motorola.location.instincvalue"

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 325
    .local v2, "instIncValue":J
    const-string v4, "gpsUptime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 326
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    .line 327
    # getter for: Lcom/android/server/LocationManagerService;->mBuildTypeUser:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$100()Z

    move-result v4

    if-nez v4, :cond_0

    .line 328
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gpsUptime incremented by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v1    # "instType":Ljava/lang/String;
    .end local v2    # "instIncValue":J
    :cond_0
    :goto_0
    return-void

    .line 331
    .restart local v1    # "instType":Ljava/lang/String;
    .restart local v2    # "instIncValue":J
    :cond_1
    const-string v4, "hardwareGeofenceCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->hardwareGeofenceCount:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->hardwareGeofenceCount:J

    goto :goto_0

    .line 333
    :cond_2
    const-string v4, "flpHwGeofenceCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 334
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->flpHwGeofenceCount:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->flpHwGeofenceCount:J

    goto :goto_0

    .line 335
    :cond_3
    const-string v4, "smartGpsCount"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 336
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsCount:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsCount:J

    goto :goto_0

    .line 337
    :cond_4
    const-string v4, "smartGpsUptime"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    add-long/2addr v6, v2

    iput-wide v6, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    .line 339
    # getter for: Lcom/android/server/LocationManagerService;->mBuildTypeUser:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$100()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smartGpsUptime incremented by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    .end local v1    # "instType":Ljava/lang/String;
    .end local v2    # "instIncValue":J
    :cond_5
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 347
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mSettingCheckinIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 348
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->saveInstrumentation()V
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)V

    .line 349
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mStatDB:Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->close()V

    goto/16 :goto_0

    .line 350
    :cond_6
    const-string v4, "com.android.internal.location.ALARM_SETTING_CHECKIN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mLocInstValues:Lcom/android/server/location/LocationMetrics$LocationStats;
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationMetrics$LocationStats;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-virtual {v5}, Lcom/android/server/LocationManagerService;->getLocationSetting()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/location/LocationMetrics$LocationStats;->locationSetting:Ljava/lang/String;

    .line 352
    iget-object v4, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    # invokes: Lcom/android/server/LocationManagerService;->checkinLocationDailyDetails()V
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    goto/16 :goto_0
.end method

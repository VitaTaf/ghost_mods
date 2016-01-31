.class public Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
.super Ljava/lang/Object;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/WifiMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiStats"
.end annotation


# instance fields
.field connectedTime:J

.field isConnectTimeLoggingNeeded:Z

.field numTurnOnsFromBoot:I

.field numTurnOnsFromNewBuild:I

.field reasonCode:I

.field screenState:Z

.field final synthetic this$0:Lcom/motorola/android/wifi/WifiMetrics;

.field totalConnectedTimeFromBoot:J

.field totalTurnOnDurationFromBoot:J

.field totalWifiConnectedDurationFromNewBuild:J

.field totalWifiOnDurationFromNewBuild:J

.field turnOnTime:J


# direct methods
.method private constructor <init>(Lcom/motorola/android/wifi/WifiMetrics;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->turnOnTime:J

    iput-wide v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalTurnOnDurationFromBoot:J

    iput-wide v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    iput-wide v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalConnectedTimeFromBoot:J

    iput v2, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->numTurnOnsFromBoot:I

    iput v2, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->numTurnOnsFromNewBuild:I

    iput-wide v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalWifiOnDurationFromNewBuild:J

    iput-wide v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalWifiConnectedDurationFromNewBuild:J

    iput-boolean v2, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->isConnectTimeLoggingNeeded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->screenState:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->reasonCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/wifi/WifiMetrics;Lcom/motorola/android/wifi/WifiMetrics$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/wifi/WifiMetrics;
    .param p2, "x1"    # Lcom/motorola/android/wifi/WifiMetrics$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;-><init>(Lcom/motorola/android/wifi/WifiMetrics;)V

    return-void
.end method


# virtual methods
.method public getReasonCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->reasonCode:I

    return v0
.end method

.method getScreenState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->screenState:Z

    return v0
.end method

.method public setReasonCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    iput p1, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->reasonCode:I

    return-void
.end method

.method public updateScreenState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->screenState:Z

    return-void
.end method

.method public updateWifiStatsonNetworkStateChange(Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo;)V
    .locals 8
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "now":J
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_1

    iput-wide v2, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->isConnectTimeLoggingNeeded:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->isConnectTimeLoggingNeeded:Z

    if-eqz v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    sub-long v0, v2, v4

    .local v0, "duration":J
    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalConnectedTimeFromBoot:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalConnectedTimeFromBoot:J

    const-string v4, "WifiMetrics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connected time updated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalConnectedTimeFromBoot:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current duration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->isConnectTimeLoggingNeeded:Z

    goto :goto_0
.end method

.method public updateWifiStatsonStateChange(I)V
    .locals 6
    .param p1, "wifiState"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "timeStamp":J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    iput-wide v2, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->turnOnTime:J

    iget v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->numTurnOnsFromBoot:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->numTurnOnsFromBoot:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->turnOnTime:J

    sub-long v0, v2, v4

    .local v0, "interval":J
    iget-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalTurnOnDurationFromBoot:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->totalTurnOnDurationFromBoot:J

    goto :goto_0
.end method

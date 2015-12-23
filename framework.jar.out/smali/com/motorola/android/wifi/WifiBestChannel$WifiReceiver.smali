.class Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiBestChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/wifi/WifiBestChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/WifiBestChannel;


# direct methods
.method private constructor <init>(Lcom/motorola/android/wifi/WifiBestChannel;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;->this$0:Lcom/motorola/android/wifi/WifiBestChannel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/wifi/WifiBestChannel;Lcom/motorola/android/wifi/WifiBestChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/wifi/WifiBestChannel;
    .param p2, "x1"    # Lcom/motorola/android/wifi/WifiBestChannel$1;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;-><init>(Lcom/motorola/android/wifi/WifiBestChannel;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, -0x1

    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 133
    :try_start_0
    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 134
    :cond_0
    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 136
    :cond_1
    const/4 v4, -0x1

    # setter for: Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I
    invoke-static {v4}, Lcom/motorola/android/wifi/WifiBestChannel;->access$302(I)I

    .line 137
    const/4 v4, -0x1

    # setter for: Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I
    invoke-static {v4}, Lcom/motorola/android/wifi/WifiBestChannel;->access$402(I)I

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0x18

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/motorola/android/wifi/WifiBestChannel;->access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0x18

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/motorola/android/wifi/WifiBestChannel;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 147
    iget-object v4, p0, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;->this$0:Lcom/motorola/android/wifi/WifiBestChannel;

    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/motorola/android/wifi/WifiBestChannel;->access$500(Lcom/motorola/android/wifi/WifiBestChannel;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_4

    .line 151
    const/4 v2, 0x0

    .local v2, "s":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 152
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 155
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    iget v4, v3, Landroid/net/wifi/ScanResult;->frequency:I

    # invokes: Lcom/motorola/android/wifi/WifiBestChannel;->getChannelFromFrequency(I)I
    invoke-static {v4}, Lcom/motorola/android/wifi/WifiBestChannel;->access$600(I)I

    move-result v4

    if-eq v4, v9, :cond_2

    .line 157
    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v6, -0xa

    if-ge v4, v6, :cond_2

    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    const/16 v6, -0x64

    if-le v4, v6, :cond_2

    .line 158
    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    # getter for: Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->access$200()Ljava/util/ArrayList;

    move-result-object v6

    iget v7, v3, Landroid/net/wifi/ScanResult;->frequency:I

    # invokes: Lcom/motorola/android/wifi/WifiBestChannel;->getChannelFromFrequency(I)I
    invoke-static {v7}, Lcom/motorola/android/wifi/WifiBestChannel;->access$600(I)I

    move-result v7

    iget v8, v3, Landroid/net/wifi/ScanResult;->level:I

    # invokes: Lcom/motorola/android/wifi/WifiBestChannel;->fillNumberOfApOnSpecificChannel(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    invoke-static {v4, v6, v7, v8}, Lcom/motorola/android/wifi/WifiBestChannel;->access$700(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 151
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    const/4 v4, 0x0

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    .line 166
    const/4 v4, 0x0

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    .line 167
    const/4 v4, 0x0

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    .line 183
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->getBestChannelofFiveGhz()I

    move-result v4

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    .line 185
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeBestChannelFor24Band()I

    .line 195
    .end local v2    # "s":I
    :cond_4
    monitor-exit v5

    .line 199
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    return-void

    .line 195
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

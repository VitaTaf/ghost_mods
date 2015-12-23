.class Lcom/motorola/android/wifi/WifiMetrics$1;
.super Ljava/lang/Thread;
.source "WifiMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/wifi/WifiMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/wifi/WifiMetrics;

.field final synthetic val$bt_state:Ljava/lang/String;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$wifi_info:Landroid/net/wifi/WifiInfo;


# direct methods
.method constructor <init>(Lcom/motorola/android/wifi/WifiMetrics;Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiInfo;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    iput-object p2, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$tag:Ljava/lang/String;

    iput-object p4, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    iput-object p5, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$bt_state:Ljava/lang/String;

    iput-object p6, p0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 544
    :try_start_0
    # invokes: Lcom/motorola/android/wifi/WifiMetrics;->now()J
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$100()J

    move-result-wide v18

    .line 548
    .local v18, "timestamp":J
    const-string v5, "1.0.0"

    .line 549
    .local v5, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    const-string v4, "DISCONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 550
    const-string v5, "1.1"

    .line 553
    :cond_0
    new-instance v2, Lcom/motorola/android/provider/CheckinEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 555
    .local v2, "event":Lcom/motorola/android/provider/CheckinEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v15

    .line 556
    .local v15, "ssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    .line 557
    .local v8, "bssid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v16

    .line 558
    .local v16, "supplicant_state":Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    .line 559
    .local v13, "rssi":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$wifi_info:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    .line 563
    .local v12, "link_speed":I
    if-nez v15, :cond_3

    .line 564
    const-string/jumbo v15, "none"

    .line 569
    :goto_0
    const-string/jumbo v3, "ssid"

    invoke-virtual {v2, v3, v15}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    if-nez v8, :cond_6

    .line 574
    const-string/jumbo v8, "none"

    .line 577
    :goto_1
    const-string v3, "bssid_prefix"

    invoke-virtual {v2, v3, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 582
    .local v14, "sb":Ljava/lang/StringBuffer;
    if-nez v16, :cond_1

    const-string/jumbo v16, "none"

    .end local v16    # "supplicant_state":Landroid/net/wifi/SupplicantState;
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 583
    const-string/jumbo v3, "supplicant"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string/jumbo v3, "rssi"

    invoke-virtual {v2, v3, v13}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 592
    const-string v3, "link_speed"

    invoke-virtual {v2, v3, v12}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 597
    const-string v3, "bluetooth"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$bt_state:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    const-string v4, "DISCONNECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    const-string/jumbo v3, "reason_code"

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v4

    iget v4, v4, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->reasonCode:I

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z
    invoke-static {v3}, Lcom/motorola/android/wifi/WifiMetrics;->access$300(Lcom/motorola/android/wifi/WifiMetrics;)Z

    move-result v3

    if-eqz v3, :cond_7

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v3

    iget-wide v6, v3, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-eqz v3, :cond_7

    .line 604
    # invokes: Lcom/motorola/android/wifi/WifiMetrics;->now()J
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$100()J

    move-result-wide v6

    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v3

    iget-wide v0, v3, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    move-wide/from16 v20, v0

    sub-long v10, v6, v20

    .line 605
    .local v10, "duration":J
    const-string/jumbo v3, "totalduration"

    const-wide/16 v6, 0x3e8

    div-long v6, v10, v6

    invoke-virtual {v2, v3, v6, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;J)V

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    const/4 v4, 0x0

    # setter for: Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z
    invoke-static {v3, v4}, Lcom/motorola/android/wifi/WifiMetrics;->access$302(Lcom/motorola/android/wifi/WifiMetrics;Z)Z

    .line 607
    # getter for: Lcom/motorola/android/wifi/WifiMetrics;->mWifiStats:Lcom/motorola/android/wifi/WifiMetrics$WifiStats;
    invoke-static {}, Lcom/motorola/android/wifi/WifiMetrics;->access$200()Lcom/motorola/android/wifi/WifiMetrics$WifiStats;

    move-result-object v3

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/motorola/android/wifi/WifiMetrics$WifiStats;->connectedTime:J

    .line 618
    .end local v10    # "duration":J
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->this$0:Lcom/motorola/android/wifi/WifiMetrics;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/android/wifi/WifiMetrics$1;->val$id:Ljava/lang/String;

    const-string v6, "CONNECT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    # setter for: Lcom/motorola/android/wifi/WifiMetrics;->isConnectLogged:Z
    invoke-static {v3, v4}, Lcom/motorola/android/wifi/WifiMetrics;->access$302(Lcom/motorola/android/wifi/WifiMetrics;Z)Z

    .line 623
    .end local v2    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .end local v5    # "version":Ljava/lang/String;
    .end local v8    # "bssid":Ljava/lang/String;
    .end local v12    # "link_speed":I
    .end local v13    # "rssi":I
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "ssid":Ljava/lang/String;
    .end local v18    # "timestamp":J
    :goto_3
    return-void

    .line 565
    .restart local v2    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .restart local v5    # "version":Ljava/lang/String;
    .restart local v8    # "bssid":Ljava/lang/String;
    .restart local v12    # "link_speed":I
    .restart local v13    # "rssi":I
    .restart local v15    # "ssid":Ljava/lang/String;
    .restart local v16    # "supplicant_state":Landroid/net/wifi/SupplicantState;
    .restart local v18    # "timestamp":J
    :cond_3
    const-string v3, "attwifi"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "orange"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 566
    :cond_4
    const-string v15, "carrier_ssid"

    goto/16 :goto_0

    .line 568
    :cond_5
    const-string/jumbo v15, "private_ssid"

    goto/16 :goto_0

    .line 576
    :cond_6
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 609
    .end local v16    # "supplicant_state":Landroid/net/wifi/SupplicantState;
    .restart local v14    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    const-string/jumbo v3, "totalduration"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 620
    .end local v2    # "event":Lcom/motorola/android/provider/CheckinEvent;
    .end local v5    # "version":Ljava/lang/String;
    .end local v8    # "bssid":Ljava/lang/String;
    .end local v12    # "link_speed":I
    .end local v13    # "rssi":I
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "ssid":Ljava/lang/String;
    .end local v18    # "timestamp":J
    :catch_0
    move-exception v9

    .line 621
    .local v9, "e":Ljava/lang/Exception;
    const-string v3, "WifiMetrics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckinEvent exception: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;
.super Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaWifiSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;",
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

.field private mCurrentContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

.field private final mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;ZLjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 23
    .param p1, "currentContext"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .param p3, "hasMobileData"    # Z
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;>;"
    .local p5, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;>;"
    const-string v3, "MotorolaWifiSignalController"

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v3, "MotorolaWifiSignalController (Constr): Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v19, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;)V

    .local v19, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v20

    .local v20, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move/from16 v0, p3

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    move/from16 v0, p3

    iput-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-object/from16 v21, v2

    check-cast v21, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-object/from16 v22, v2

    check-cast v22, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    new-instance v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    const-string v3, "Wi-Fi Icons"

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaAccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v7, 0x7f02014d

    const v8, 0x7f0200ab

    const v9, 0x7f02014d

    const v10, 0x7f0200ab

    const v11, 0x7f0c005e

    const/4 v12, 0x1

    sget-object v13, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->SB_WIFI_SIGNAL_WIDE:[I

    sget-object v14, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->QS_WIFI_SIGNAL_WIDE:[I

    sget-object v15, Lcom/android/systemui/statusbar/policy/MotorolaAccessibilityContentDescriptions;->WIFI_SIGNAL_DESCRIPTION:[I

    sget-object v16, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->SB_WIFI_ACTIVITY_WIDE:[I

    sget-object v17, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->QS_WIFI_ACTIVITY_WIDE:[I

    sget-object v18, Lcom/android/systemui/statusbar/policy/MotorolaAccessibilityContentDescriptions;->WIFI_ACTIVITY_DESCRIPTION:[I

    invoke-direct/range {v2 .. v18}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIZ[I[I[I[I[I[I)V

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->time:J

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v2, :cond_3

    const-string v2, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotorolaWifiSignalController (Constr): Completed: mCurrentState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v2, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v3, "MotorolaWifiSignalController (Constr): Completed:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSsid: Entered WifiInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_2

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSsid: Completed Returns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ssid":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_4

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v5, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSsid: Completed Returns:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v5, "getSsid: Completed Returns: (null)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private resolveWifiUIModeAndIconIds()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v3, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveWifiUIModeAndIconIds: Entered: mCurrentState.enabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .connected="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .level="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .ssid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mWifiActivityEnum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v7, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v7, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->inetCondition:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    packed-switch v2, :pswitch_data_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaPredefStdMappings;->UI_MODE_WIFI_SIGNAL_FORCE_FULLY:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    aget v3, v4, v3

    :goto_2
    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mSBSignalLookup:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeSignal:I

    aget v3, v4, v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mQSSignalLookup:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    aget v3, v4, v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mSignalDescriptionLookup:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeSignal:I

    aget v1, v3, v2

    .local v1, "contentDescriptionWifiId":I
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaPredefStdMappings;->UI_MODE_WIFI_ACTIVITY_FORCE_FULLY:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    aget v3, v4, v3

    :goto_4
    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mSBActivityLookup:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiUIModeDataActivity:I

    aget v3, v4, v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mQSActivityLookup:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiUIModeDataActivity:I

    aget v3, v4, v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mActivityDescriptionLookup:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    aget v0, v3, v2

    .local v0, "contentDescriptionWifiActivityId":I
    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    :goto_5
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v3, "MotoNetwCtrlr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolveWifiUIModeAndIconIds: Completed:  mCurrentState.mSBWifiSignalIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mQSWifiSignalIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mWifiContentDescriptionSignal=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mSBWifiDataActivityIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mQSWifiDataActivityIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mQSWifiDataActivityInBool="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mQSWifiDataActivityOutBool="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " .mWifiContentDescriptionDataActivity=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .end local v0    # "contentDescriptionWifiActivityId":I
    .end local v1    # "contentDescriptionWifiId":I
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v9, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0xb

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v9, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x5

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x7

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0x9

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    packed-switch v2, :pswitch_data_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    packed-switch v2, :pswitch_data_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto :goto_6

    :pswitch_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto :goto_6

    :pswitch_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto :goto_6

    :pswitch_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto :goto_6

    :pswitch_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto :goto_6

    :pswitch_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x6

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :pswitch_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/16 v3, 0xa

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v8, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v8, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput v6, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-boolean v5, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeSignal:I

    goto/16 :goto_2

    .restart local v1    # "contentDescriptionWifiId":I
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    goto/16 :goto_3

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    goto/16 :goto_4

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiUIModeDataActivity:I

    goto/16 :goto_4

    .restart local v0    # "contentDescriptionWifiActivityId":I
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const-string v3, ""

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move-result-object v0

    return-object v0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v1, "cleanState: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v1, "cleanState: Completed: returns: new MotorolaWifiState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;-><init>()V

    return-object v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBroadcast: Entered: Intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    :goto_0
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->onWifiConnectionStateChanged(ZZ)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->resolveWifiUIModeAndIconIds()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->notifyListenersIfNecessary()V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v4, "handleBroadcast: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_2
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->onWifiConnectionStateChanged(ZZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    if-eqz v3, :cond_9

    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    move-object v1, v3

    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_3
    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    move v4, v5

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_3

    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-object v8, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput-object v8, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    goto/16 :goto_1

    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->rssi:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->rssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    sget v3, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->checkLevel(I)V

    goto/16 :goto_1
.end method

.method public notifyListeners()V
    .locals 26

    .prologue
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: Entered mCurrentState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mHasMobileData:Z

    if-nez v2, :cond_5

    :cond_1
    const/16 v25, 0x1

    .local v25, "wifiVisible":Z
    :goto_1
    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v9, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    .local v9, "wifiDesc":Ljava/lang/String;
    :goto_2
    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_7

    const/16 v24, 0x1

    .local v24, "ssidPresent":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getContentDescription()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->ssid:Ljava/lang/String;

    :goto_4
    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityIn:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityOut:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_6
    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getContentDescription()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getCurrentIconId()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getQsCurrentIconId()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityIn:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityOut:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    .local v22, "length":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_9
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_12

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling QS ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] onWifiSignalChanged (Google api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " enab="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " conn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Sig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getQsCurrentIconId()I

    move-result v5

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " In="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityIn:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    :goto_a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Out="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityOut:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Desc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " wifiDesc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getQsCurrentIconId()I

    move-result v5

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityIn:Z

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    :goto_c
    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityOut:Z

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    :goto_d
    invoke-interface/range {v2 .. v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_9

    .end local v8    # "contentDescription":Ljava/lang/String;
    .end local v9    # "wifiDesc":Ljava/lang/String;
    .end local v21    # "i":I
    .end local v22    # "length":I
    .end local v24    # "ssidPresent":Z
    .end local v25    # "wifiVisible":Z
    :cond_4
    const-string v2, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v3, "notifyListeners: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_1

    .restart local v25    # "wifiVisible":Z
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .restart local v9    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_3

    .restart local v8    # "contentDescription":Ljava/lang/String;
    .restart local v24    # "ssidPresent":Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    goto/16 :goto_8

    .restart local v21    # "i":I
    .restart local v22    # "length":I
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_10
    const/4 v6, 0x0

    goto :goto_c

    :cond_11
    const/4 v7, 0x0

    goto :goto_d

    :cond_12
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling QS ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] onWifiSignalChanged (Motorola api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " UseMotoUI="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " enab="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " conn="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " QSSig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " QSAct="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " In="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Out="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescSig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescAct="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NetName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v12, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v13, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v14, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiSignalIconId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v15, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityIconId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityInBool:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mQSWifiDataActivityOutBool:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface/range {v10 .. v20}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZZIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v23

    .local v23, "signalClustersLength":I
    const/16 v21, 0x0

    :goto_f
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_16

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling SB ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] setWifiIndicators (Google api):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Sig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getCurrentIconId()I

    move-result v5

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Desc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getCurrentIconId()I

    move-result v3

    move/from16 v0, v25

    invoke-interface {v2, v0, v3, v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_f

    :cond_16
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling SB ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] setWifiIndicators (Motorola api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " UseMotoUI="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Vis="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SBSig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SBAct="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescSig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescAct="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NetName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v13, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiSignalIconId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v14, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mSBWifiDataActivityIconId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v15, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionDataActivity:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiContentDescriptionNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v12, v25

    invoke-interface/range {v10 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setWifiIndicators(ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_18
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_19

    const-string v2, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v3, "notifyListeners: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-void
.end method

.method setActivity(I)V
    .locals 6
    .param p1, "wifiActivity"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActivity: Entered: wifiActivity="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    if-eq p1, v5, :cond_1

    if-ne p1, v3, :cond_6

    :cond_1
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityIn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    if-eq p1, v5, :cond_2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->activityOut:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->mWifiActivityEnum:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->resolveWifiUIModeAndIconIds()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->notifyListenersIfNecessary()V

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MotoNetwCtrlr.MotoWifiSignalCtrlr"

    const-string v1, "setActivity: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    move v1, v2

    goto :goto_0
.end method

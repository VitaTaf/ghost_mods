.class Lcom/android/systemui/qs/tiles/WifiTile$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.WifiTile"

    const-string v1, "onAirplaneModeChanged: no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.WifiTile"

    const-string v1, "onMobileDataEnabled: no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "mobileSignalIconId"    # I
    .param p3, "mobileSignalContentDescriptionId"    # Ljava/lang/String;
    .param p4, "dataTypeIconId"    # I
    .param p5, "activityIn"    # Z
    .param p6, "activityOut"    # Z
    .param p7, "dataTypeContentDescriptionId"    # Ljava/lang/String;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "isDataTypeIconWide"    # Z

    .prologue
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.WifiTile"

    const-string v1, "onMobileDataSignalChanged (Google api): no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onMobileDataSignalChanged(ZZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZII)V
    .locals 2
    .param p1, "mobileUseMotoUI"    # Z
    .param p2, "mobileEnabled"    # Z
    .param p3, "mobileSimIconId"    # I
    .param p4, "mobileSignalIconId"    # I
    .param p5, "mobileRoamingIconId"    # I
    .param p6, "mobileDataTypeIconId"    # I
    .param p7, "mobileDataActivityIconId"    # I
    .param p8, "mobileActivityIn"    # Z
    .param p9, "mobileActivityOut"    # Z
    .param p10, "mobileCarrierDescription"    # Ljava/lang/String;
    .param p11, "mobileSimDescription"    # Ljava/lang/String;
    .param p12, "mobileSignalContentDescription"    # Ljava/lang/String;
    .param p13, "mobileRoamingDescription"    # Ljava/lang/String;
    .param p14, "mobileDataTypeContentDescription"    # Ljava/lang/String;
    .param p15, "mobileDataActivityContentDescription"    # Ljava/lang/String;
    .param p16, "mobileNetworkName"    # Ljava/lang/String;
    .param p17, "mobileNoSim"    # Z
    .param p18, "mobileIsDataTypeIconWide"    # Z
    .param p19, "mobileShowMobileWhenWifiActive"    # Z
    .param p20, "mobileShowMobileWhenNotEnabled"    # Z
    .param p21, "mobileIsBidiDirectionEnabled"    # Z
    .param p22, "mobileIsMotoWideIcons"    # Z
    .param p23, "mobileSubId"    # I
    .param p24, "mobilePhoneIndex"    # I

    .prologue
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.WifiTile"

    const-string v1, "onMobileDataSignalChanged (Motorola api): no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNoSimVisibleChanged(Z)V
    .locals 2
    .param p1, "noSims"    # Z

    .prologue
    sget-boolean v0, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.WifiTile"

    const-string v1, "onNoSimVisibleChanged: no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "wifiSignalIconId"    # I
    .param p4, "activityIn"    # Z
    .param p5, "activityOut"    # Z
    .param p6, "wifiSignalContentDescriptionId"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoNetwCtrlr.WifiTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWifiSignalChanged (Google api): enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    .local v0, "info":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    iput p3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-boolean p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    iput-object p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const-string v2, "onWifiSignalChanged (Google api)"

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$200(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$300(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onWifiSignalChanged(ZZZIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "wifiUseMotoUI"    # Z
    .param p2, "wifiEnabled"    # Z
    .param p3, "wifiConnected"    # Z
    .param p4, "wifiSignalIconId"    # I
    .param p5, "wifiActivityIconId"    # I
    .param p6, "wifiActivityIn"    # Z
    .param p7, "wifiActivityOut"    # Z
    .param p8, "wifiSignalContentDescription"    # Ljava/lang/String;
    .param p9, "wifiActivityDescription"    # Ljava/lang/String;
    .param p10, "wifiNetworkName"    # Ljava/lang/String;

    .prologue
    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoNetwCtrlr.WifiTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWifiSignalChanged (Motorola api): wifiEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/WifiTile$1;)V

    .local v0, "info":Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;
    iput-boolean p2, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabled:Z

    iput-boolean p3, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->connected:Z

    iput p4, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalIconId:I

    iput-object p10, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-boolean p6, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityIn:Z

    iput-boolean p7, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->activityOut:Z

    iput-object p8, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiSignalContentDescription:Ljava/lang/String;

    iput p5, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityIconId:I

    iput-object p9, v0, Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;->wifiActivityDescription:Ljava/lang/String;

    sget-boolean v1, Lcom/android/systemui/qs/tiles/WifiTile;->CHATTY:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const-string v2, "onWifiSignalChanged (Motorola api)"

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->CHATTYLogCallback(Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$200(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/String;Lcom/android/systemui/qs/tiles/WifiTile$CallbackInfo;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$400(Lcom/android/systemui/qs/tiles/WifiTile;Ljava/lang/Object;)V

    return-void
.end method

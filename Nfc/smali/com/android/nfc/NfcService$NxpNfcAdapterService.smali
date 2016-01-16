.class final Lcom/android/nfc/NfcService$NxpNfcAdapterService;
.super Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NxpNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeDefaultRoute(I)Z
    .locals 4
    .param p1, "defaultRoute"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1443
    const/4 v0, 0x1

    .line 1444
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 1445
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "default_route_id"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1446
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1447
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1448
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->clearRouting()V

    .line 1449
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-ne v1, v3, :cond_0

    .line 1450
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 1451
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 1453
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsRouteForced:Z

    .line 1455
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set default route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    .line 1458
    :cond_1
    return v0
.end method

.method public deselectSecureElement()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1530
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1533
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1534
    const/16 v2, -0x11

    .line 1562
    :goto_0
    return v2

    .line 1537
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1538
    const/16 v2, -0x14

    goto :goto_0

    .line 1541
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 1542
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1554
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z
    invoke-static {v3, v2}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 1555
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3, v2}, Lcom/android/nfc/NfcService;->access$1602(Lcom/android/nfc/NfcService;I)I

    .line 1558
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secure_element_on"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1559
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secure_element_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1560
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1546
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 1548
    .local v0, "Se_list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 1549
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    aget v4, v0, v1

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 1548
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public doConfigureDesfireRoute(I)V
    .locals 2
    .param p1, "eeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1596
    const-string v0, "NfcService"

    const-string v1, "NFC is not enabled...Desfire routing cannot be configured"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->doConfigureDesfireRoute(I)V

    .line 1599
    return-void
.end method

.method public getNfcSecureElementInterface()Lcom/nxp/nfc/INfcSecureElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1569
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    if-nez v0, :cond_0

    .line 1570
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcSecureElementService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v2}, Lcom/android/nfc/NfcService$NfcSecureElementService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    .line 1573
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    return-object v0
.end method

.method public getSecureElementList()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1579
    const/4 v0, 0x0

    .line 1580
    .local v0, "list":[I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 1583
    :cond_0
    return-object v0
.end method

.method public getSelectedSecureElement()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1589
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v0

    return v0
.end method

.method public selectSecureElement(I)I
    .locals 7
    .param p1, "seId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1473
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1476
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1477
    const/16 v3, -0x11

    .line 1525
    :goto_0
    return v3

    .line 1480
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 1481
    const/16 v3, -0x12

    goto :goto_0

    .line 1484
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1485
    const/16 v3, -0x13

    goto :goto_0

    .line 1489
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v3, p1}, Lcom/android/nfc/NfcService;->access$1602(Lcom/android/nfc/NfcService;I)I

    .line 1490
    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    .line 1491
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1519
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secure_element_on"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1520
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "secure_element_id"

    iget-object v5, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSelectedSeId:I
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1521
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1523
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z
    invoke-static {v3, v6}, Lcom/android/nfc/NfcService;->access$1702(Lcom/android/nfc/NfcService;Z)Z

    .line 1525
    const/4 v3, 0x0

    goto :goto_0

    .line 1494
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 1499
    .local v0, "Se_list":[I
    array-length v3, v0

    if-le v3, v6, :cond_3

    .line 1501
    const/4 v2, 0x0

    .line 1502
    .local v2, "isSMXPresent":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 1503
    aget v3, v0, v1

    if-ne v3, v6, :cond_5

    .line 1504
    const/4 v2, 0x1

    .line 1502
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1508
    :cond_6
    if-ne v2, v6, :cond_3

    .line 1512
    const/4 v1, 0x0

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 1513
    iget-object v3, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    aget v4, v0, v1

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 1512
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public storeSePreference(I)V
    .locals 3
    .param p1, "seId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1465
    const-string v0, "NfcService"

    const-string v1, "SE Preference stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_element_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1467
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_element_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1468
    iget-object v0, p0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1469
    return-void
.end method

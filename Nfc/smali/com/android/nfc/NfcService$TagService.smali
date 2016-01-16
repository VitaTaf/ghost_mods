.class final Lcom/android/nfc/NfcService$TagService;
.super Landroid/nfc/INfcTag$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TagService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcTag$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .locals 1
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->canMakeReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public close(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1619
    const/4 v0, 0x0

    .line 1621
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1622
    const/16 v1, -0x11

    .line 1635
    :goto_0
    return v1

    .line 1626
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1627
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_1

    .line 1629
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 1630
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 1631
    const/4 v1, 0x0

    goto :goto_0

    .line 1634
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1635
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public connect(II)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 1640
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1642
    const/4 v0, 0x0

    .line 1644
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1645
    const/16 v1, -0x11

    .line 1664
    :cond_0
    :goto_0
    return v1

    .line 1649
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1650
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1654
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1661
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1662
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public formatNdef(I[B)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1871
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1876
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1877
    const/16 v1, -0x11

    .line 1889
    :cond_0
    :goto_0
    return v1

    .line 1881
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1882
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1886
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1887
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getExtendedLengthApdusSupported()Z

    move-result v0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getMaxTransceiveLength(I)I

    move-result v0

    return v0
.end method

.method public getTechList(I)[I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1693
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1696
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-object v1

    .line 1701
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1702
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1703
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1941
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getTimeout(I)I

    move-result v0

    return v0
.end method

.method public isNdef(I)Z
    .locals 4
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1728
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1730
    const/4 v1, 0x0

    .line 1733
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return v2

    .line 1738
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1739
    .restart local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1740
    .local v0, "ndefInfo":[I
    if-eqz v1, :cond_0

    .line 1743
    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->checkNdef([I)Z

    move-result v2

    goto :goto_0
.end method

.method public isPresent(I)Z
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1710
    const/4 v0, 0x0

    .line 1713
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return v1

    .line 1718
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1719
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1723
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    goto :goto_0
.end method

.method public ndefIsWritable(I)Z
    .locals 1
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ndefMakeReadOnly(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1847
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1852
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1853
    const/16 v1, -0x11

    .line 1865
    :cond_0
    :goto_0
    return v1

    .line 1857
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1858
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1862
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1863
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1783
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1788
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1807
    :cond_0
    :goto_0
    return-object v3

    .line 1793
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1794
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_0

    .line 1795
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v0

    .line 1796
    .local v0, "buf":[B
    if-eqz v0, :cond_0

    .line 1802
    :try_start_0
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v1

    .line 1804
    .local v1, "e":Landroid/nfc/FormatException;
    goto :goto_0
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1812
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1817
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1818
    const/16 v1, -0x11

    .line 1835
    :cond_0
    :goto_0
    return v1

    .line 1822
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1823
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1827
    if-nez p2, :cond_2

    const/4 v1, -0x8

    goto :goto_0

    .line 1829
    :cond_2
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1831
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logTagWrite()V

    .line 1833
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect(I)I
    .locals 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x5

    .line 1670
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1672
    const/4 v0, 0x0

    .line 1675
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1676
    const/16 v1, -0x11

    .line 1688
    :cond_0
    :goto_0
    return v1

    .line 1680
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1681
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_0

    .line 1682
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rediscover(I)Landroid/nfc/Tag;
    .locals 7
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1895
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1897
    const/4 v6, 0x0

    .line 1900
    .local v6, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return-object v0

    .line 1905
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v6, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1906
    .restart local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v6, :cond_0

    .line 1915
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 1916
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 1917
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 1919
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 1921
    .local v0, "newTag":Landroid/nfc/Tag;
    goto :goto_0
.end method

.method public resetTimeouts()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1948
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 1949
    return-void
.end method

.method public setTimeout(II)I
    .locals 2
    .param p1, "tech"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1928
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1929
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 1930
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 1931
    const/4 v1, 0x0

    .line 1933
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x8

    goto :goto_0
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .locals 8
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1749
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1751
    const/4 v2, 0x0

    .line 1755
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1778
    :cond_0
    :goto_0
    return-object v4

    .line 1760
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1761
    .restart local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_0

    .line 1763
    array-length v5, p2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/NfcService$TagService;->getMaxTransceiveLength(I)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 1764
    new-instance v5, Landroid/nfc/TransceiveResult;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v4}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    move-object v4, v5

    goto :goto_0

    .line 1766
    :cond_2
    new-array v3, v7, [I

    .line 1767
    .local v3, "targetLost":[I
    invoke-interface {v2, p2, p3, v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v0

    .line 1769
    .local v0, "response":[B
    if-eqz v0, :cond_3

    .line 1770
    const/4 v1, 0x0

    .line 1776
    .local v1, "result":I
    :goto_1
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v0}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    goto :goto_0

    .line 1771
    .end local v1    # "result":I
    :cond_3
    const/4 v4, 0x0

    aget v4, v3, v4

    if-ne v4, v7, :cond_4

    .line 1772
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_1

    .line 1774
    .end local v1    # "result":I
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "result":I
    goto :goto_1
.end method

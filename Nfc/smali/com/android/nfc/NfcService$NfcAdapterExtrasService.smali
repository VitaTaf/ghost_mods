.class final Lcom/android/nfc/NfcService$NfcAdapterExtrasService;
.super Landroid/nfc/INfcAdapterExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2227
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapterExtras$Stub;-><init>()V

    return-void
.end method

.method private _open(Landroid/os/IBinder;)I
    .locals 12
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    .line 2262
    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v8

    .line 2263
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v7}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2264
    const/4 v2, -0x6

    monitor-exit v8

    .line 2314
    :goto_0
    return v2

    .line 2266
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v7, v7, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v7, :cond_1

    .line 2268
    const/4 v2, -0x1

    monitor-exit v8

    goto :goto_0

    .line 2315
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2270
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v7}, Lcom/android/nfc/P2pLinkManager;->isLlcpActive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2274
    const/4 v2, -0x5

    monitor-exit v8

    goto :goto_0

    .line 2276
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2277
    const/4 v2, -0x2

    monitor-exit v8

    goto :goto_0

    .line 2280
    :cond_3
    const/4 v6, 0x0

    .line 2281
    .local v6, "restorePolling":Z
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v7, v7, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v7, :cond_4

    .line 2285
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2286
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2287
    const/4 v6, 0x1

    .line 2290
    :cond_4
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v7}, Lcom/android/nfc/NfcService;->doOpenSecureElementConnection()I

    move-result v2

    .line 2291
    .local v2, "handle":I
    if-gez v2, :cond_6

    .line 2293
    if-eqz v6, :cond_5

    .line 2294
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v10, 0x1

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2295
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2297
    :cond_5
    monitor-exit v8

    goto :goto_0

    .line 2299
    :cond_6
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    const/4 v9, 0x3

    const/16 v10, 0x7530

    invoke-interface {v7, v9, v10}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    .line 2301
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v9, Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v11

    invoke-direct {v9, v10, v11, v2, p1}, Lcom/android/nfc/NfcService$OpenSecureElement;-><init>(Lcom/android/nfc/NfcService;IILandroid/os/IBinder;)V

    # setter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v7, v9}, Lcom/android/nfc/NfcService;->access$702(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    :try_start_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {p1, v7, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2310
    :goto_1
    :try_start_3
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingUid()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    .line 2311
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2310
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2304
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2305
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/NfcService$OpenSecureElement;->binderDied()V

    goto :goto_1

    .line 2314
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private _transceive([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2349
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2350
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2351
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2353
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2354
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NFC EE is not open"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2356
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    iget v2, v2, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq v0, v2, :cond_2

    .line 2357
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2361
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcService;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2236
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2237
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 2229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2230
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2231
    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2389
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2320
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2324
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V

    .line 2325
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2329
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 2326
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2327
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public getCardEmulationRoute(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2367
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mEeRoutingState:I
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)I

    move-result v0

    return v0
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2393
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2394
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2243
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2246
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_open(Landroid/os/IBinder;)I

    move-result v0

    .line 2247
    .local v0, "handle":I
    if-gez v0, :cond_0

    .line 2248
    const-string v2, "NFCEE open exception."

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 2252
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 2250
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public setCardEmulationRoute(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2372
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2373
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mEeRoutingState:I
    invoke-static {v2, p2}, Lcom/android/nfc/NfcService;->access$2702(Lcom/android/nfc/NfcService;I)I

    .line 2374
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 2375
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2378
    :try_start_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2384
    :goto_0
    return-void

    .line 2379
    :catch_0
    move-exception v1

    .line 2380
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "NfcService"

    const-string v3, "failed to set card emulation mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2381
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 2382
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "NfcService"

    const-string v3, "failed to set card emulation mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2334
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2339
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_transceive([B)[B

    move-result-object v1

    .line 2340
    .local v1, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v2

    .line 2341
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "out"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    .end local v1    # "out":[B
    :goto_0
    return-object v2

    .line 2342
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2343
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "result":Landroid/os/Bundle;
    goto :goto_0
.end method

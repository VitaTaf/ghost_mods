.class final Lcom/android/nfc/NfcService$NfcAdapterService;
.super Landroid/nfc/INfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapter$Stub;-><init>()V

    return-void
.end method

.method private computeLockscreenPollMask([I)I
    .locals 9
    .param p1, "techList"    # [I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1412
    .local v2, "techCodeToMask":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    const/4 v1, 0x0

    .line 1428
    .local v1, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 1429
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1430
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 1428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1434
    :cond_1
    return v1
.end method


# virtual methods
.method public addDefaultActivity(Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->addDefaultActivity(Landroid/content/pm/ResolveInfo;)V

    .line 1333
    return-void
.end method

.method public addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
    .locals 3
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "techList"    # [I

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1391
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->computeLockscreenPollMask([I)I

    move-result v0

    .line 1392
    .local v0, "lockscreenPollMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1393
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/NfcUnlockManager;->addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I

    .line 1394
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1397
    return-void

    .line 1394
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->clearDefaults(Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public disable(Z)Z
    .locals 5
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1095
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1096
    const-string v0, "NfcService"

    const-string v1, "Disabling Nfc."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-eqz p1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1102
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1104
    return v4
.end method

.method public disableNdefPush()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1170
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1171
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1172
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-nez v0, :cond_0

    .line 1173
    monitor-exit v1

    .line 1187
    :goto_0
    return v5

    .line 1175
    :cond_0
    const-string v0, "NfcService"

    const-string v2, "disabling NDEF Push"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ndef_push_on"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1177
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1178
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1179
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1183
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    invoke-static {v4}, Lcom/android/nfc/NfcMetrics;->logBeamState(Z)V

    goto :goto_0

    .line 1183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1311
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    .line 1312
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method public enable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1074
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1075
    const-string v2, "NfcService"

    const-string v3, "Enabling Nfc."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1079
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    if-nez v2, :cond_0

    .line 1081
    const-string v1, "NfcService"

    const-string v2, "denying enable() request (airplane mode)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_0
    return v0

    .line 1085
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "airplane_override"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1086
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1088
    :cond_1
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v3, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    .line 1090
    goto :goto_0
.end method

.method public enableNdefPush()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1148
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1149
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_0

    .line 1151
    monitor-exit v1

    .line 1165
    :goto_0
    return v4

    .line 1153
    :cond_0
    const-string v0, "NfcService"

    const-string v2, "enabling NDEF Push"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ndef_push_on"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1155
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1156
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1157
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 1158
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1161
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    invoke-static {v4}, Lcom/android/nfc/NfcMetrics;->logBeamState(Z)V

    goto :goto_0

    .line 1161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    return-object v0
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    .line 1292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNfcTagInterface()Landroid/nfc/INfcTag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    return-object v0
.end method

.method public getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

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
    .line 1326
    const/4 v0, -0x1

    return v0
.end method

.method public getState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1299
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    monitor-exit v1

    return v0

    .line 1300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->hasDefaults(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public invokeBeam()V
    .locals 2

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1248
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 1253
    :goto_0
    return-void

    .line 1251
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Calling activity not in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    .locals 4
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1258
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1259
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1260
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1279
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1280
    return-void
.end method

.method public isNdefPushEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1141
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pausePolling(I)V
    .locals 6
    .param p1, "timeoutInMs"    # I

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1111
    if-lez p1, :cond_0

    int-to-long v0, p1

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1112
    :cond_0
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refusing to pause polling for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 1118
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 1119
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1121
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    .locals 3
    .param p1, "token"    # Landroid/nfc/INfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1402
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcUnlockManager;->removeUnlockHandler(Landroid/os/IBinder;)I

    .line 1403
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1406
    return-void

    .line 1403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumePolling()V
    .locals 3

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1128
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    if-nez v0, :cond_0

    .line 1130
    monitor-exit v1

    .line 1137
    :goto_0
    return-void

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 1135
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAppCallback(Landroid/nfc/IAppCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/nfc/IAppCallback;

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1229
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1230
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    const-string v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    .line 1237
    :goto_0
    return-void

    .line 1235
    :cond_0
    const-string v1, "NfcService"

    const-string v2, "Disabling default Beam behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .locals 8
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techListsParcel"    # Landroid/nfc/TechListParcel;

    .prologue
    const/4 v6, 0x0

    .line 1193
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1196
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1197
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v7

    move-object v5, v6

    check-cast v5, [[Ljava/lang/String;

    invoke-virtual {v7, v6, v6, v5}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1221
    :goto_0
    return-void

    .line 1202
    :cond_0
    if-eqz p2, :cond_1

    .line 1203
    array-length v5, p2

    if-nez v5, :cond_3

    .line 1204
    const/4 p2, 0x0

    :cond_1
    move-object v4, v6

    .line 1215
    check-cast v4, [[Ljava/lang/String;

    .line 1216
    .local v4, "techLists":[[Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 1217
    invoke-virtual {p3}, Landroid/nfc/TechListParcel;->getTechLists()[[Ljava/lang/String;

    move-result-object v4

    .line 1220
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, p2, v4}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    .end local v4    # "techLists":[[Ljava/lang/String;
    :cond_3
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/IntentFilter;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1207
    .local v1, "filter":Landroid/content/IntentFilter;
    if-nez v1, :cond_4

    .line 1208
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "null IntentFilter"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1206
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setP2pModes(II)V
    .locals 2
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1317
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->setP2pInitiatorModes(I)V

    .line 1318
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost;->setP2pTargetModes(I)V

    .line 1319
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1320
    return-void
.end method

.method public setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/nfc/IAppCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x7d

    .line 1349
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1350
    if-eqz p3, :cond_1

    .line 1352
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v4, Lcom/android/nfc/NfcService$ReaderModeParams;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ReaderModeParams;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v4, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 1353
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput-object p2, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    .line 1354
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput p3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    .line 1355
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz p4, :cond_0

    const-string v1, "presence"

    const/16 v4, 0x7d

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 1359
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1373
    monitor-exit v2

    .line 1374
    :goto_1
    return-void

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v3, "Remote binder has already died."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    monitor-exit v2

    goto :goto_1

    .line 1373
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1366
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 1367
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1368
    :catch_1
    move-exception v0

    .line 1369
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "NfcService"

    const-string v3, "Reader mode Binder was never registered."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public verifyNfcPermission()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1242
    return-void
.end method

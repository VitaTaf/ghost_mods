.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2812
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 10
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 3140
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3142
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 3143
    if-eqz p2, :cond_2

    .line 3145
    :try_start_0
    iget v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_0

    .line 3146
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3148
    :cond_0
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_2

    .line 3149
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v1, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3173
    :cond_1
    :goto_0
    return-void

    .line 3154
    :catch_0
    move-exception v7

    .line 3155
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "Reader mode remote has died, falling back."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3163
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v6

    .line 3164
    .local v6, "dispatchResult":I
    if-ne v6, v9, :cond_3

    .line 3165
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3166
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v9}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0

    .line 3157
    .end local v6    # "dispatchResult":I
    :catch_1
    move-exception v7

    .line 3159
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "App exception, not dispatching."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3167
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "dispatchResult":I
    :cond_3
    if-ne v6, v8, :cond_1

    .line 3168
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3170
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logTagRead()V

    goto :goto_0
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    const/4 v0, 0x1

    .line 3085
    const-string v1, "NfcService"

    const-string v2, "LLCP Activation message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-nez v1, :cond_4

    .line 3088
    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3091
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3093
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3094
    const-string v1, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3097
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3098
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3099
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    .line 3136
    :goto_0
    return v0

    .line 3098
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3103
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3136
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3107
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1

    .line 3111
    :cond_3
    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3117
    :cond_4
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 3118
    const-string v1, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3122
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3123
    const-string v1, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3126
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3128
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    goto :goto_0

    .line 3127
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 3132
    :cond_5
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3068
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3070
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 3072
    monitor-enter p0

    .line 3073
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3074
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 3075
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3076
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3077
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3081
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3082
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 40
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2815
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_0

    .line 3062
    :pswitch_0
    const-string v36, "NfcService"

    const-string v37, "Unknown message received"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :cond_0
    :goto_0
    return-void

    .line 2817
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 2818
    .local v33, "route":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 2819
    .local v30, "power":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2820
    .local v5, "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v36

    invoke-static {v5}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v33

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Lcom/android/nfc/DeviceHost;->routeAid([BII)Z

    goto :goto_0

    .line 2825
    .end local v5    # "aid":Ljava/lang/String;
    .end local v30    # "power":I
    .end local v33    # "route":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 2826
    .restart local v5    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v36

    invoke-static {v5}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    goto :goto_0

    .line 2830
    .end local v5    # "aid":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/nfc/BeamShareData;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto :goto_0

    .line 2834
    :pswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 2835
    .local v16, "enable":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->SetFilterTag(I)Z

    goto :goto_0

    .line 2839
    .end local v16    # "enable":I
    :pswitch_5
    const/4 v11, 0x0

    .line 2840
    .local v11, "commit":Z
    const-string v36, "NfcService"

    const-string v37, "MSG_COMMIT_ROUTING"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 2842
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v36

    if-eqz v36, :cond_1

    .line 2843
    const/4 v11, 0x1

    .line 2847
    :goto_1
    monitor-exit v37
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2848
    if-eqz v11, :cond_0

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/nfc/DeviceHost;->commitRouting()Z

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v13

    .line 2852
    .local v13, "defaultRoute":I
    const-string v36, "NfcService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Set default route "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    goto/16 :goto_0

    .line 2845
    .end local v13    # "defaultRoute":I
    :cond_1
    :try_start_1
    const-string v36, "NfcService"

    const-string v38, "Not committing routing because discovery is disabled."

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2847
    :catchall_0
    move-exception v36

    monitor-exit v37
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v36

    .line 2858
    .end local v11    # "commit":Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lcom/android/nfc/DeviceHost;->clearRouting()V

    goto/16 :goto_0

    .line 2862
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/nfc/NdefMessage;

    .line 2863
    .local v27, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 2864
    .local v18, "extras":Landroid/os/Bundle;
    const-string v36, "ndefmsg"

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2865
    const-string v36, "ndefmaxlength"

    const/16 v37, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2866
    const-string v36, "ndefcardstate"

    const/16 v37, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2867
    const-string v36, "ndeftype"

    const/16 v37, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2868
    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    aput-byte v38, v36, v37

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x6

    aput v39, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v18, v38, v39

    invoke-static/range {v36 .. v38}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v34

    .line 2871
    .local v34, "tag":Landroid/nfc/Tag;
    const-string v36, "NfcService"

    const-string v37, "mock NDEF tag, starting corresponding activity"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    const-string v36, "NfcService"

    invoke-virtual/range {v34 .. v34}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v15

    .line 2874
    .local v15, "dispatchStatus":I
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v15, v0, :cond_2

    .line 2875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 2876
    :cond_2
    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v15, v0, :cond_0

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 2883
    .end local v15    # "dispatchStatus":I
    .end local v18    # "extras":Landroid/os/Bundle;
    .end local v27    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v34    # "tag":Landroid/nfc/Tag;
    :pswitch_8
    const-string v36, "NfcService"

    const-string v37, "Tag detected, notifying applications"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2885
    .local v34, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/16 v32, 0x0

    .line 2886
    .local v32, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v31, 0x7d

    .line 2887
    .local v31, "presenceCheckDelay":I
    new-instance v9, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 2894
    .local v9, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 2895
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object/from16 v32, v0

    .line 2896
    monitor-exit v37
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2897
    if-eqz v32, :cond_3

    .line 2898
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    move/from16 v31, v0

    .line 2899
    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x80

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 2900
    const-string v36, "NfcService"

    const-string v37, "Skipping NDEF detection in reader mode"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-interface {v0, v1, v9}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 2902
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 2896
    :catchall_1
    move-exception v36

    :try_start_3
    monitor-exit v37
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v36

    .line 2907
    :cond_3
    if-eqz v32, :cond_4

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v36, v0

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0x100

    move/from16 v36, v0

    if-nez v36, :cond_6

    :cond_4
    const/16 v29, 0x1

    .line 2909
    .local v29, "playSound":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v36, v0

    const/16 v37, 0x3

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_5

    if-eqz v29, :cond_5

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 2912
    :cond_5
    invoke-interface/range {v34 .. v34}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v36

    const/16 v37, 0xa

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 2917
    const-string v36, "NfcService"

    const-string v37, "Skipping NDEF detection for NFC Barcode"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-interface {v0, v1, v9}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 2919
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 2907
    .end local v29    # "playSound":Z
    :cond_6
    const/16 v29, 0x0

    goto :goto_2

    .line 2922
    .restart local v29    # "playSound":Z
    :cond_7
    invoke-interface/range {v34 .. v34}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v27

    .line 2924
    .restart local v27    # "ndefMsg":Landroid/nfc/NdefMessage;
    if-eqz v27, :cond_8

    .line 2925
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-interface {v0, v1, v9}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 2926
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 2928
    :cond_8
    invoke-interface/range {v34 .. v34}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v36

    if-eqz v36, :cond_9

    .line 2929
    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-interface {v0, v1, v9}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 2930
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_0

    .line 2932
    :cond_9
    invoke-interface/range {v34 .. v34}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_0

    .line 2938
    .end local v9    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v27    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v29    # "playSound":Z
    .end local v31    # "presenceCheckDelay":I
    .end local v32    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v34    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :pswitch_9
    const-string v36, "NfcService"

    const-string v37, "Card Emulation message"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v36

    if-eqz v36, :cond_a

    .line 2943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static/range {v36 .. v36}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 2945
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/util/Pair;

    .line 2947
    .local v35, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2948
    .local v6, "aidIntent":Landroid/content/Intent;
    const-string v36, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2949
    const-string v37, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [B

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2950
    const-string v37, "com.nxp.extra.DATA"

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [B

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2951
    const-string v36, "NfcService"

    const-string v37, "Broadcasting com.android.nfc_extras.action.AID_SELECTED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 2953
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logCeOffHost()V

    goto/16 :goto_0

    .line 2956
    .end local v6    # "aidIntent":Landroid/content/Intent;
    .end local v35    # "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    :pswitch_a
    const-string v36, "NfcService"

    const-string v37, "SE EVENT CONNECTIVITY"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 2958
    .local v17, "eventConnectivityIntent":Landroid/content/Intent;
    const-string v36, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2959
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2962
    .end local v17    # "eventConnectivityIntent":Landroid/content/Intent;
    :pswitch_b
    const-string v36, "NfcService"

    const-string v37, "Card Removal message"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    new-instance v10, Landroid/content/Intent;

    const-string v36, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v36

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2965
    .local v10, "cardRemovalIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2968
    .end local v10    # "cardRemovalIntent":Landroid/content/Intent;
    :pswitch_c
    const-string v36, "NfcService"

    const-string v37, "APDU Received message"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [B

    move-object/from16 v7, v36

    check-cast v7, [B

    .line 2971
    .local v7, "apduBytes":[B
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2972
    .local v8, "apduReceivedIntent":Landroid/content/Intent;
    const-string v36, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2973
    if-eqz v7, :cond_b

    array-length v0, v7

    move/from16 v36, v0

    if-lez v36, :cond_b

    .line 2974
    const-string v36, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v36

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2976
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2979
    .end local v7    # "apduBytes":[B
    .end local v8    # "apduReceivedIntent":Landroid/content/Intent;
    :pswitch_d
    const-string v36, "NfcService"

    const-string v37, "MIFARE access message"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, [B

    move-object/from16 v26, v36

    check-cast v26, [B

    .line 2982
    .local v26, "mifareCmd":[B
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 2983
    .local v24, "mifareAccessIntent":Landroid/content/Intent;
    const-string v36, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2984
    if-eqz v26, :cond_c

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v36, v0

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_c

    .line 2985
    const/16 v36, 0x1

    aget-byte v36, v26, v36

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 2986
    .local v25, "mifareBlock":I
    const-string v36, "NfcService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Mifare Block="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    const-string v36, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2989
    .end local v25    # "mifareBlock":I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2992
    .end local v24    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v26    # "mifareCmd":[B
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v36, v0

    if-eqz v36, :cond_d

    .line 2993
    new-instance v4, Landroid/content/Intent;

    const-string v36, "com.android.nfc.action.LLCP_UP"

    move-object/from16 v0, v36

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2994
    .local v4, "actIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 2996
    .end local v4    # "actIntent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    goto/16 :goto_0

    .line 3000
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v36, v0

    if-eqz v36, :cond_e

    .line 3001
    new-instance v12, Landroid/content/Intent;

    const-string v36, "com.android.nfc.action.LLCP_DOWN"

    move-object/from16 v0, v36

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3002
    .local v12, "deactIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 3004
    .end local v12    # "deactIntent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3005
    .local v14, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/16 v28, 0x0

    .line 3007
    .local v28, "needsDisconnect":Z
    const-string v36, "NfcService"

    const-string v37, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 3010
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    invoke-interface {v14}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    if-eqz v36, :cond_f

    .line 3012
    invoke-interface {v14}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v36

    if-nez v36, :cond_11

    .line 3013
    const-string v36, "NfcService"

    const-string v38, "disconnecting from target"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    const/16 v28, 0x1

    .line 3019
    :cond_f
    :goto_3
    monitor-exit v37
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3020
    if-eqz v28, :cond_10

    .line 3021
    invoke-interface {v14}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3024
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto/16 :goto_0

    .line 3016
    :cond_11
    :try_start_5
    const-string v36, "NfcService"

    const-string v38, "not disconnecting from initiator"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3019
    :catchall_2
    move-exception v36

    monitor-exit v37
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v36

    .line 3027
    .end local v14    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v28    # "needsDisconnect":Z
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    goto/16 :goto_0

    .line 3031
    :pswitch_11
    const-string v36, "NfcService"

    const-string v37, "Target Deselected"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    new-instance v21, Landroid/content/Intent;

    const-string v36, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3033
    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3036
    .end local v21    # "intent":Landroid/content/Intent;
    :pswitch_12
    const-string v36, "NfcService"

    const-string v37, "RF FIELD ON"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    new-instance v20, Landroid/content/Intent;

    const-string v36, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3038
    .local v20, "fieldOnIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3041
    .end local v20    # "fieldOnIntent":Landroid/content/Intent;
    :pswitch_13
    const-string v36, "NfcService"

    const-string v37, "RF FIELD OFF"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    new-instance v19, Landroid/content/Intent;

    const-string v36, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3043
    .local v19, "fieldOffIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3046
    .end local v19    # "fieldOffIntent":Landroid/content/Intent;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    goto/16 :goto_0

    .line 3049
    :pswitch_15
    const-string v36, "NfcService"

    const-string v37, "SE LISTEN MODE ACTIVATED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    new-instance v22, Landroid/content/Intent;

    const-string v36, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3051
    .local v22, "listenModeActivated":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3056
    .end local v22    # "listenModeActivated":Landroid/content/Intent;
    :pswitch_16
    const-string v36, "NfcService"

    const-string v37, "SE LISTEN MODE DEACTIVATED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    new-instance v23, Landroid/content/Intent;

    const-string v36, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3058
    .local v23, "listenModeDeactivated":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2815
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_10
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_9
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_15
        :pswitch_16
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

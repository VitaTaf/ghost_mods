.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v12, p1, Landroid/os/Message;->arg2:I

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;
    invoke-static {v11, v12}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v5

    .local v5, "listener":Ljava/lang/Object;
    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    const-string v11, "WifiP2pManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignored "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "listener":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_0
    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v11

    invoke-interface {v11}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v11, v4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_0

    :sswitch_1
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v5    # "listener":Ljava/lang/Object;
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v11}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_2
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .local v7, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v7}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .end local v7    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_4
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/wifi/p2p/WifiP2pInfo;

    .local v10, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v10}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .end local v10    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .local v8, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # invokes: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->handleServiceResponse(Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V
    invoke-static {v11, v8}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    .end local v8    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .local v2, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v2}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_0

    .end local v2    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .local v3, "handoverBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    if-eqz v3, :cond_1

    const-string v11, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "handoverMessage":Ljava/lang/String;
    :cond_1
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v4}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "handoverBundle":Landroid/os/Bundle;
    .end local v4    # "handoverMessage":Ljava/lang/String;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_9
    if-eqz v5, :cond_0

    instance-of v11, v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    if-eqz v11, :cond_2

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto/16 :goto_0

    .restart local v5    # "listener":Ljava/lang/Object;
    :cond_2
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/wifi/WpsResult;

    .local v9, "result":Landroid/net/wifi/WpsResult;
    move-object v11, v5

    check-cast v11, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    iget-object v12, v9, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v11, v12}, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;->onWpsP2pStartSuccess(Ljava/lang/String;)V

    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMapLock:Ljava/lang/Object;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$300(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    # getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mListenerMap:Ljava/util/HashMap;
    invoke-static {v11}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$400(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Ljava/util/HashMap;

    move-result-object v11

    iget v13, p1, Landroid/os/Message;->arg2:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .end local v9    # "result":Landroid/net/wifi/WpsResult;
    :sswitch_a
    if-eqz v5, :cond_0

    instance-of v11, v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    if-eqz v11, :cond_3

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v5    # "listener":Ljava/lang/Object;
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v11}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto/16 :goto_0

    .restart local v5    # "listener":Ljava/lang/Object;
    :cond_3
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    .end local v5    # "listener":Ljava/lang/Object;
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v11}, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;->onWpsP2pFailure(I)V

    goto/16 :goto_0

    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_b
    if-eqz v5, :cond_0

    instance-of v11, v5, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    if-nez v11, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5}, Landroid/net/wifi/p2p/WifiP2pManager$WpsP2pListener;->onWpsP2pCompletion()V

    goto/16 :goto_0

    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_c
    if-eqz v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, "b":Landroid/os/Bundle;
    const-string v11, "channel_list"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "p2pChannels":Ljava/lang/String;
    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$P2pChannelListListener;

    .end local v5    # "listener":Ljava/lang/Object;
    invoke-interface {v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager$P2pChannelListListener;->onChannelListAvailable(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "b":Landroid/os/Bundle;
    .end local v6    # "p2pChannels":Ljava/lang/String;
    .restart local v5    # "listener":Ljava/lang/Object;
    :sswitch_d
    if-eqz v5, :cond_0

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager$P2pChannelListListener;

    .end local v5    # "listener":Ljava/lang/Object;
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v11}, Landroid/net/wifi/p2p/WifiP2pManager$P2pChannelListListener;->onFailure(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22002 -> :sswitch_1
        0x22003 -> :sswitch_2
        0x22005 -> :sswitch_1
        0x22006 -> :sswitch_2
        0x22008 -> :sswitch_1
        0x22009 -> :sswitch_2
        0x2200b -> :sswitch_1
        0x2200c -> :sswitch_2
        0x2200e -> :sswitch_1
        0x2200f -> :sswitch_2
        0x22011 -> :sswitch_1
        0x22012 -> :sswitch_2
        0x22014 -> :sswitch_3
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_5
        0x2201d -> :sswitch_1
        0x2201e -> :sswitch_2
        0x22020 -> :sswitch_1
        0x22021 -> :sswitch_2
        0x22023 -> :sswitch_1
        0x22024 -> :sswitch_2
        0x22026 -> :sswitch_1
        0x22027 -> :sswitch_2
        0x22029 -> :sswitch_1
        0x2202a -> :sswitch_2
        0x2202c -> :sswitch_1
        0x2202d -> :sswitch_2
        0x2202f -> :sswitch_1
        0x22030 -> :sswitch_2
        0x22032 -> :sswitch_6
        0x22034 -> :sswitch_1
        0x22035 -> :sswitch_2
        0x22037 -> :sswitch_1
        0x22038 -> :sswitch_2
        0x2203a -> :sswitch_7
        0x2203c -> :sswitch_1
        0x2203d -> :sswitch_2
        0x2203f -> :sswitch_a
        0x22040 -> :sswitch_9
        0x22042 -> :sswitch_1
        0x22043 -> :sswitch_2
        0x22045 -> :sswitch_1
        0x22046 -> :sswitch_2
        0x22048 -> :sswitch_1
        0x22049 -> :sswitch_2
        0x2204d -> :sswitch_8
        0x22050 -> :sswitch_2
        0x22051 -> :sswitch_1
        0x2205b -> :sswitch_b
        0x2205d -> :sswitch_d
        0x2205e -> :sswitch_c
        0x22060 -> :sswitch_1
        0x22061 -> :sswitch_2
        0x22063 -> :sswitch_1
        0x22064 -> :sswitch_2
        0x22066 -> :sswitch_1
        0x22067 -> :sswitch_2
    .end sparse-switch
.end method

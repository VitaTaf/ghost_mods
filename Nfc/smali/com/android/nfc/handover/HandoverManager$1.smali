.class Lcom/android/nfc/handover/HandoverManager$1;
.super Ljava/lang/Object;
.source "HandoverManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverManager;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 146
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    invoke-static {v4, v6}, Lcom/android/nfc/handover/HandoverManager;->access$102(Lcom/android/nfc/handover/HandoverManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 147
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v6, 0x0

    # setter for: Lcom/android/nfc/handover/HandoverManager;->mBinding:Z
    invoke-static {v4, v6}, Lcom/android/nfc/handover/HandoverManager;->access$202(Lcom/android/nfc/handover/HandoverManager;Z)Z

    .line 148
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v6, 0x1

    # setter for: Lcom/android/nfc/handover/HandoverManager;->mBound:Z
    invoke-static {v4, v6}, Lcom/android/nfc/handover/HandoverManager;->access$302(Lcom/android/nfc/handover/HandoverManager;Z)Z

    .line 150
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 151
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v4, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    if-eqz v4, :cond_0

    move v4, v2

    :goto_0
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 152
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v4, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    if-eqz v4, :cond_1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 153
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$400(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$100(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$500(Lcom/android/nfc/handover/HandoverManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$500(Lcom/android/nfc/handover/HandoverManager;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "msg":Landroid/os/Message;
    check-cast v1, Landroid/os/Message;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .restart local v1    # "msg":Landroid/os/Message;
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->access$100(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "NfcHandover"

    const-string v3, "Failed to send queued message to service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .restart local v1    # "msg":Landroid/os/Message;
    :cond_0
    move v4, v3

    .line 151
    goto :goto_0

    :cond_1
    move v2, v3

    .line 152
    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "NfcHandover"

    const-string v3, "Failed to register client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 174
    :try_start_0
    const-string v1, "NfcHandover"

    const-string v3, "Service disconnected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/nfc/handover/HandoverManager;->access$100(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/nfc/handover/HandoverManager;->access$400(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 179
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    invoke-static {v1}, Lcom/android/nfc/handover/HandoverManager;->access$100(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    invoke-static {v1, v3}, Lcom/android/nfc/handover/HandoverManager;->access$102(Lcom/android/nfc/handover/HandoverManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 185
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/nfc/handover/HandoverManager;->mBound:Z
    invoke-static {v1, v3}, Lcom/android/nfc/handover/HandoverManager;->access$302(Lcom/android/nfc/handover/HandoverManager;Z)Z

    .line 186
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    .line 187
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 188
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/nfc/handover/HandoverManager;->access$500(Lcom/android/nfc/handover/HandoverManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 189
    monitor-exit v2

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

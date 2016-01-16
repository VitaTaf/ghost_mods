.class Lcom/android/nfc/handover/HandoverManager$MessageHandler;
.super Landroid/os/Handler;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverManager;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    # getter for: Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 113
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverManager;->unbindServiceIfNeededLocked(Z)V

    .line 138
    monitor-exit v3

    .line 139
    return-void

    .line 115
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 116
    .local v0, "transferId":I
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed transfer id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    .end local v0    # "transferId":I
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 120
    .restart local v0    # "transferId":I
    :cond_0
    :try_start_1
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find completed transfer id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    .end local v0    # "transferId":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v1, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 126
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    .line 127
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 125
    goto :goto_1

    .line 130
    :pswitch_2
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 131
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    .line 132
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

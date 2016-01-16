.class final Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;)I
    .locals 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 768
    const/4 v1, 0x0

    .line 769
    .local v1, "response":Landroid/nfc/NdefMessage;
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 770
    .local v0, "request":Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_2

    .line 771
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v4, :cond_0

    .line 772
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v4, v0}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 774
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v4, :cond_1

    .line 778
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v4, v0}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    .line 779
    .local v2, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 781
    .end local v2    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_1
    if-nez v1, :cond_3

    .line 795
    :cond_2
    :goto_0
    return v3

    .line 787
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v3, v3, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/handover/HandoverManager;->doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    .line 792
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2pHoBt()V

    .line 795
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 762
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 811
    const/4 v3, 0x0

    .line 813
    .local v3, "result":Z
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v9

    .line 814
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_0

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v10, 0x4

    if-eq v8, v10, :cond_2

    .line 815
    :cond_0
    monitor-exit v9

    .line 876
    :cond_1
    :goto_0
    return-object v11

    .line 817
    :cond_2
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v8, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 818
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v8, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 819
    .local v5, "uris":[Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 820
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 821
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 822
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 826
    .local v6, "time":J
    if-eqz v5, :cond_3

    .line 827
    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Trying handover request"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 830
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_0

    .line 847
    .end local v1    # "handoverResult":I
    :cond_3
    :goto_1
    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v8, :cond_4

    .line 848
    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Sending ndef via SNEP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    .line 851
    .local v4, "snepResult":I
    packed-switch v4, :pswitch_data_1

    .line 859
    const/4 v3, 0x0

    .line 866
    .end local v4    # "snepResult":I
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v8, :cond_5

    .line 867
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v8, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 870
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 871
    const-string v8, "NfcP2pLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendTask result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time ms="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    if-eqz v3, :cond_1

    .line 873
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8, v2, v6, v7}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    goto/16 :goto_0

    .line 822
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "time":J
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 832
    .restart local v1    # "handoverResult":I
    .restart local v2    # "m":Landroid/nfc/NdefMessage;
    .restart local v5    # "uris":[Landroid/net/Uri;
    .restart local v6    # "time":J
    :pswitch_0
    const/4 v3, 0x1

    .line 833
    goto :goto_1

    .line 835
    :pswitch_1
    const/4 v3, 0x0

    .line 836
    goto :goto_1

    .line 838
    :pswitch_2
    const/4 v3, 0x0

    .line 839
    :try_start_4
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 842
    .end local v1    # "handoverResult":I
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_1

    .line 853
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snepResult":I
    :pswitch_3
    const/4 v3, 0x1

    .line 854
    goto :goto_2

    .line 856
    :pswitch_4
    const/4 v3, 0x0

    .line 857
    goto :goto_2

    .line 861
    .end local v4    # "snepResult":I
    :catch_1
    move-exception v0

    .line 862
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_2

    .line 830
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 851
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    if-eqz p1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 801
    const/4 v0, 0x0

    .line 803
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

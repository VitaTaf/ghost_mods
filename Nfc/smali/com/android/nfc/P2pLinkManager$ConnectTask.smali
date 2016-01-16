.class final Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 688
    const/4 v2, 0x0

    .line 689
    .local v2, "needsHandover":Z
    const/4 v3, 0x0

    .line 690
    .local v3, "needsNdef":Z
    const/4 v6, 0x0

    .line 691
    .local v6, "success":Z
    const/4 v1, 0x0

    .line 692
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v5, 0x0

    .line 693
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v4, 0x0

    .line 695
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 696
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 697
    const/4 v2, 0x1

    .line 700
    :cond_0
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-eqz v7, :cond_1

    .line 701
    const/4 v3, 0x1

    .line 703
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    if-eqz v2, :cond_2

    .line 707
    new-instance v1, Lcom/android/nfc/handover/HandoverClient;

    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 709
    .restart local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :try_start_1
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 710
    const/4 v6, 0x1

    .line 716
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 717
    :cond_3
    new-instance v5, Lcom/android/nfc/snep/SnepClient;

    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-direct {v5}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    .line 719
    .restart local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 720
    const/4 v6, 0x1

    .line 725
    :goto_1
    if-nez v6, :cond_4

    .line 726
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushClient;

    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    invoke-direct {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    .line 728
    .restart local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_start_3
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 729
    const/4 v6, 0x1

    .line 736
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 737
    :try_start_4
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 739
    if-eqz v1, :cond_5

    .line 740
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 742
    :cond_5
    if-eqz v5, :cond_6

    .line 743
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 745
    :cond_6
    if-eqz v4, :cond_7

    .line 746
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 748
    :cond_7
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 756
    :goto_3
    return-object v7

    .line 703
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0

    .line 721
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 722
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1

    .line 730
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 731
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_2

    .line 753
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :try_start_6
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v1, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 754
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v5, v7, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 755
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v4, v7, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 756
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    monitor-exit v8

    goto :goto_3

    .line 758
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 672
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "ConnectTask was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    goto :goto_0

    .line 682
    :cond_1
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Could not connect required NFC transports"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 672
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

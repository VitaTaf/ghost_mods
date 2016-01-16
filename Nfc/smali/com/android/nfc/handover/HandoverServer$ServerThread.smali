.class Lcom/android/nfc/handover/HandoverServer$ServerThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/HandoverServer;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/handover/HandoverServer;
    .param p2, "x1"    # Lcom/android/nfc/handover/HandoverServer$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 80
    .local v9, "threadRunning":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    if-eqz v9, :cond_3

    .line 84
    :try_start_1
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v10
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 85
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget v1, v1, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    const-string v2, "urn:nfc:sn:handover"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 87
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_6

    .line 89
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandoverServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_2

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 128
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 132
    :goto_1
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 141
    :cond_3
    :goto_2
    return-void

    .line 80
    .end local v9    # "threadRunning":Z
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 87
    .restart local v9    # "threadRunning":Z
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 119
    :catch_0
    move-exception v7

    .line 120
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_a
    const-string v0, "HandoverServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 124
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_5

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 128
    :cond_4
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 132
    :goto_3
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_5
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 137
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_4
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 138
    :try_start_e
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 139
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 134
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    .line 92
    :cond_6
    :try_start_10
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "HandoverServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_7
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 94
    :try_start_11
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 95
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 97
    :goto_5
    if-eqz v9, :cond_13

    .line 99
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 100
    :try_start_13
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 101
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 103
    if-nez v8, :cond_f

    .line 104
    :try_start_14
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "HandoverServer"

    const-string v1, "Server socket shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Lcom/android/nfc/LlcpException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 124
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_a

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 128
    :cond_9
    :try_start_16
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 132
    :goto_6
    const/4 v0, 0x0

    :try_start_17
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_a
    monitor-exit v1

    goto/16 :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v0

    .line 95
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_5
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    :try_start_19
    throw v0
    :try_end_19
    .catch Lcom/android/nfc/LlcpException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 121
    :catch_1
    move-exception v7

    .line 122
    .local v7, "e":Ljava/io/IOException;
    :try_start_1a
    const-string v0, "HandoverServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 124
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_c

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 128
    :cond_b
    :try_start_1c
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 132
    :goto_7
    const/4 v0, 0x0

    :try_start_1d
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_c
    monitor-exit v1

    goto/16 :goto_4

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v0

    .line 101
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    throw v0
    :try_end_1f
    .catch Lcom/android/nfc/LlcpException; {:try_start_1f .. :try_end_1f} :catch_0
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 124
    :catchall_8
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_e

    .line 126
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "HandoverServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 128
    :cond_d
    :try_start_21
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_2
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 132
    :goto_8
    const/4 v2, 0x0

    :try_start_22
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_e
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    throw v0

    .line 107
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_f
    :try_start_23
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "HandoverServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_10
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 109
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "HandoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_11
    if-eqz v6, :cond_12

    .line 111
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->start()V

    .line 114
    :cond_12
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_23
    .catch Lcom/android/nfc/LlcpException; {:try_start_23 .. :try_end_23} :catch_0
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 115
    :try_start_24
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 116
    monitor-exit v1

    goto/16 :goto_5

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    :try_start_25
    throw v0

    .line 118
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_13
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "HandoverServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lcom/android/nfc/LlcpException; {:try_start_25 .. :try_end_25} :catch_0
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .line 124
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_26
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_16

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 128
    :cond_15
    :try_start_27
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_5
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 132
    :goto_9
    const/4 v0, 0x0

    :try_start_28
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_16
    monitor-exit v1

    goto/16 :goto_4

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_b
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_c
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    throw v0

    .line 129
    :catch_2
    move-exception v2

    goto/16 :goto_8

    .local v7, "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto/16 :goto_7

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_5
    move-exception v0

    goto :goto_9

    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_6
    move-exception v0

    goto/16 :goto_6

    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 145
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 146
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 154
    :cond_0
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/android/nfc/snep/SnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;)V
    .locals 1

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 182
    .local v10, "threadRunning":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    if-eqz v10, :cond_1

    .line 187
    :try_start_1
    iget-object v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v11
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 188
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v3, v3, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 190
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v0, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_0

    .line 233
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 237
    :goto_1
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 239
    :cond_0
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 246
    :cond_1
    :goto_2
    return-void

    .line 182
    .end local v10    # "threadRunning":Z
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 190
    .restart local v10    # "threadRunning":Z
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 224
    :catch_0
    move-exception v7

    .line 225
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_a
    const-string v0, "SnepServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    if-eqz v0, :cond_2

    .line 233
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 237
    :goto_3
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 239
    :cond_2
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    .line 242
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_4
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 243
    :try_start_e
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 244
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    .line 239
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v0

    .line 196
    :cond_3
    :try_start_10
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_10
    .catch Lcom/android/nfc/LlcpException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 197
    :try_start_11
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 198
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 200
    :goto_5
    if-eqz v10, :cond_a

    .line 202
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_12
    .catch Lcom/android/nfc/LlcpException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 203
    :try_start_13
    iget-object v9, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 204
    .local v9, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 206
    if-nez v9, :cond_7

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_14
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    if-eqz v0, :cond_4

    .line 233
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 237
    :goto_6
    const/4 v0, 0x0

    :try_start_16
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 239
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 198
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_5
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw v0
    :try_end_18
    .catch Lcom/android/nfc/LlcpException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 226
    :catch_1
    move-exception v7

    .line 227
    .local v7, "e":Ljava/io/IOException;
    :try_start_19
    const-string v0, "SnepServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_1a
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    if-eqz v0, :cond_5

    .line 233
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 237
    :goto_7
    const/4 v0, 0x0

    :try_start_1c
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 239
    :cond_5
    monitor-exit v1

    goto :goto_4

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    throw v0

    .line 204
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_7
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw v0
    :try_end_1e
    .catch Lcom/android/nfc/LlcpException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 229
    :catchall_8
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_1f
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    if-eqz v2, :cond_6

    .line 233
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 237
    :goto_8
    const/4 v2, 0x0

    :try_start_21
    iput-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 239
    :cond_6
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    throw v0

    .line 211
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_7
    :try_start_22
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 213
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v6, :cond_8

    .line 214
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v8, v0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 216
    .local v8, "fragmentLength":I
    :goto_9
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {v0, v1, v6, v8}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;-><init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->start()V

    .line 219
    .end local v8    # "fragmentLength":I
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_22
    .catch Lcom/android/nfc/LlcpException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1
    .catchall {:try_start_22 .. :try_end_22} :catchall_8

    .line 220
    :try_start_23
    iget-boolean v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 221
    monitor-exit v1

    goto :goto_5

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :try_start_24
    throw v0

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_24
    .catch Lcom/android/nfc/LlcpException; {:try_start_24 .. :try_end_24} :catch_0
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    move-result v8

    goto :goto_9

    .line 229
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_a
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    if-eqz v0, :cond_b

    .line 233
    :try_start_26
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_5
    .catchall {:try_start_26 .. :try_end_26} :catchall_a

    .line 237
    :goto_a
    const/4 v0, 0x0

    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 239
    :cond_b
    monitor-exit v1

    goto/16 :goto_4

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_b
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_c
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    throw v0

    .line 234
    :catch_2
    move-exception v2

    goto :goto_8

    .local v7, "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_7

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_4
    move-exception v0

    goto/16 :goto_3

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_5
    move-exception v0

    goto :goto_a

    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_6
    move-exception v0

    goto/16 :goto_6

    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 250
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 251
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 253
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 259
    :cond_0
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

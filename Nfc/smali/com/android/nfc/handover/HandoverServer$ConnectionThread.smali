.class Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 1
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    .line 162
    const-string v0, "HandoverServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 163
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 168
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "HandoverServer"

    const-string v16, "starting connection thread"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 174
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v12, v15, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 175
    .local v12, "running":Z
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v15

    new-array v9, v15, [B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 179
    .local v9, "partial":[B
    const/4 v5, 0x0

    .local v5, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v6, v5

    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .local v6, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v3, v2

    .line 180
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-eqz v12, :cond_a

    .line 181
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15, v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result v13

    .line 182
    .local v13, "size":I
    if-gez v13, :cond_5

    move-object v5, v6

    .line 226
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_1
    :try_start_4
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v15, "HandoverServer"

    const-string v16, "about to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 232
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v2, v3

    .line 237
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_3
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "HandoverServer"

    const-string v16, "finished connection thread"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_2
    return-void

    .line 175
    :catchall_0
    move-exception v15

    :try_start_6
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v15
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 222
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_3

    const-string v15, "HandoverServer"

    const-string v16, "IOException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 226
    :cond_3
    :try_start_9
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_4

    const-string v15, "HandoverServer"

    const-string v16, "about to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 232
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 233
    :catch_1
    move-exception v15

    goto :goto_3

    .line 185
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    .restart local v13    # "size":I
    :cond_5
    const/4 v15, 0x0

    :try_start_b
    invoke-virtual {v3, v9, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 188
    :try_start_c
    new-instance v5, Landroid/nfc/NdefMessage;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-direct {v5, v15}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_c
    .catch Landroid/nfc/FormatException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 193
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_6
    if-eqz v5, :cond_9

    .line 195
    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v15, v5}, Lcom/android/nfc/handover/HandoverManager;->tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v11

    .line 196
    .local v11, "resp":Landroid/nfc/NdefMessage;
    if-nez v11, :cond_6

    .line 197
    const-string v15, "HandoverServer"

    const-string v16, "Failed to create handover response"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 222
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v11    # "resp":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 189
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v13    # "size":I
    :catch_3
    move-exception v15

    move-object v5, v6

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto :goto_6

    .line 202
    .restart local v11    # "resp":Landroid/nfc/NdefMessage;
    :cond_6
    const/4 v8, 0x0

    .line 203
    .local v8, "offset":I
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 204
    .local v1, "buffer":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v10

    .line 205
    .local v10, "remoteMiu":I
    :goto_7
    array-length v15, v1

    if-ge v8, v15, :cond_7

    .line 206
    array-length v15, v1

    sub-int/2addr v15, v8

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 207
    .local v7, "length":I
    add-int v15, v8, v7

    invoke-static {v1, v8, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 208
    .local v14, "tmpBuffer":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 209
    add-int/2addr v8, v7

    .line 210
    goto :goto_7

    .line 212
    .end local v7    # "length":I
    .end local v14    # "tmpBuffer":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v15}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverRequestReceived()V

    .line 214
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 217
    .end local v1    # "buffer":[B
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "offset":I
    .end local v10    # "remoteMiu":I
    .end local v11    # "resp":Landroid/nfc/NdefMessage;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_8
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 218
    :try_start_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v12, v15, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 219
    monitor-exit v16

    move-object v6, v5

    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v3, v2

    .line 220
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_0

    .line 219
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v15
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 225
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    .end local v13    # "size":I
    :catchall_2
    move-exception v15

    .line 226
    :goto_9
    :try_start_11
    sget-object v16, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_8

    const-string v16, "HandoverServer"

    const-string v17, "about to close"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 232
    :goto_a
    :try_start_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 235
    :goto_b
    throw v15

    .line 233
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    :catch_4
    move-exception v15

    move-object v2, v3

    .line 236
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3

    .line 233
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    :catch_5
    move-exception v16

    goto :goto_b

    .line 228
    :catch_6
    move-exception v16

    goto :goto_a

    .line 225
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    :catchall_3
    move-exception v15

    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .line 228
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v15

    goto/16 :goto_5

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    :catch_8
    move-exception v15

    goto/16 :goto_2

    .restart local v13    # "size":I
    :cond_9
    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :cond_a
    move-object v5, v6

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_1
.end method

.class public Lcom/android/nfc/ndefpush/NdefPushClient;
.super Ljava/lang/Object;
.source "NdefPushClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NdefPushClient"


# instance fields
.field final mLock:Ljava/lang/Object;

.field private mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 134
    :try_start_1
    const-string v0, "NdefPushClient"

    const-string v2, "About to close NPP socket."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 49
    :try_start_0
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket still in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 52
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 53
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 55
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 56
    .local v2, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string v3, "NdefPushClient"

    const-string v4, "about to create socket"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_2
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 66
    :try_start_3
    const-string v3, "NdefPushClient"

    const-string v4, "about to connect to service com.android.npp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v3, "com.android.npp"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 82
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 83
    :try_start_4
    iput-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 84
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 85
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 86
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/android/nfc/LlcpException;
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 61
    const/4 v3, 0x0

    :try_start_5
    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 62
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 68
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 71
    :try_start_7
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 76
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 77
    const/4 v3, 0x0

    :try_start_8
    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 78
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 79
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect service."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 72
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public push(Landroid/nfc/NdefMessage;)Z
    .locals 13
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    iget-object v10, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 91
    :try_start_0
    iget v11, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    .line 92
    const-string v9, "NdefPushClient"

    const-string v11, "Not connected to NPP."

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit v10

    .line 127
    :cond_0
    :goto_0
    return v8

    .line 95
    :cond_1
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 96
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-direct {v4, p1, v9}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>(Landroid/nfc/NdefMessage;B)V

    .line 99
    .local v4, "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->toByteArray()[B

    move-result-object v0

    .line 100
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 104
    .local v3, "offset":I
    :try_start_1
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 105
    .local v5, "remoteMiu":I
    const-string v10, "NdefPushClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "about to send a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte message"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    array-length v10, v0

    if-ge v3, v10, :cond_2

    .line 107
    array-length v10, v0

    sub-int/2addr v10, v3

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 108
    .local v2, "length":I
    add-int v10, v3, v2

    invoke-static {v0, v3, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 109
    .local v7, "tmpBuffer":[B
    const-string v10, "NdefPushClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "about to send a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " byte packet"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    add-int/2addr v3, v2

    .line 112
    goto :goto_1

    .line 96
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v5    # "remoteMiu":I
    .end local v7    # "tmpBuffer":[B
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 118
    .restart local v0    # "buffer":[B
    .restart local v3    # "offset":I
    .restart local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v5    # "remoteMiu":I
    :cond_2
    if-eqz v6, :cond_3

    .line 120
    :try_start_3
    const-string v8, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    move v8, v9

    .line 124
    goto :goto_0

    .line 114
    .end local v5    # "remoteMiu":I
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string v9, "NdefPushClient"

    const-string v10, "couldn\'t send tag"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v9, "NdefPushClient"

    const-string v10, "exception:"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    if-eqz v6, :cond_0

    .line 120
    :try_start_5
    const-string v9, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 122
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 118
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    if-eqz v6, :cond_4

    .line 120
    :try_start_6
    const-string v9, "NdefPushClient"

    const-string v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 124
    :cond_4
    :goto_3
    throw v8

    .line 122
    :catch_2
    move-exception v9

    goto :goto_3

    .restart local v5    # "remoteMiu":I
    :catch_3
    move-exception v8

    goto :goto_2
.end method

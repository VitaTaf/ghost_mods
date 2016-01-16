.class public final Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = false

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 86
    sget-object v1, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 90
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
    .line 46
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 47
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-eqz v3, :cond_0

    .line 48
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 50
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 51
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 53
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 55
    .local v2, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_2
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2
    .catch Lcom/android/nfc/LlcpException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 65
    :try_start_3
    const-string v3, "urn:nfc:sn:handover"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 79
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 80
    :try_start_4
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 81
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 82
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 83
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lcom/android/nfc/LlcpException;
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    const/4 v3, 0x0

    :try_start_5
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 59
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 60
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 66
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 69
    :try_start_7
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 74
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    const/4 v3, 0x0

    :try_start_8
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 76
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 77
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to handover service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v3

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 70
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 14
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 158
    :goto_0
    return-object v2

    .line 101
    :cond_0
    const/4 v9, 0x0

    .line 102
    .local v9, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v12, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 103
    :try_start_0
    iget v11, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/4 v13, 0x2

    if-eq v11, v13, :cond_1

    .line 104
    new-instance v11, Ljava/io/IOException;

    const-string v13, "Socket not connected"

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 107
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 106
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 107
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    const/4 v5, 0x0

    .line 109
    .local v5, "offset":I
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 110
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v7

    .line 115
    .local v7, "remoteMiu":I
    :goto_1
    array-length v11, v0

    if-ge v5, v11, :cond_2

    .line 116
    array-length v11, v0

    sub-int/2addr v11, v5

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 117
    .local v4, "length":I
    add-int v11, v5, v4

    invoke-static {v0, v5, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 119
    .local v10, "tmpBuffer":[B
    invoke-interface {v9, v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 120
    add-int/2addr v5, v4

    .line 121
    goto :goto_1

    .line 124
    .end local v4    # "length":I
    .end local v10    # "tmpBuffer":[B
    :cond_2
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v11

    new-array v6, v11, [B

    .line 125
    .local v6, "partial":[B
    const/4 v2, 0x0

    .line 127
    .local v2, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_2
    invoke-interface {v9, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    .line 128
    .local v8, "size":I
    if-gez v8, :cond_4

    .line 144
    :goto_3
    if-eqz v9, :cond_3

    .line 147
    :try_start_3
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    :cond_3
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v11

    goto :goto_0

    .line 131
    :cond_4
    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v1, v6, v11, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 133
    :try_start_6
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_6
    .catch Landroid/nfc/FormatException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .local v3, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    move-object v2, v3

    .line 135
    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    goto :goto_3

    .line 141
    .end local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v6    # "partial":[B
    .end local v7    # "remoteMiu":I
    .end local v8    # "size":I
    :catch_1
    move-exception v11

    .line 144
    if-eqz v9, :cond_5

    .line 147
    :try_start_7
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 153
    :cond_5
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 158
    :goto_6
    const/4 v2, 0x0

    goto :goto_0

    .line 144
    :catchall_1
    move-exception v11

    if-eqz v9, :cond_6

    .line 147
    :try_start_9
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 153
    :cond_6
    :goto_7
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 156
    :goto_8
    throw v11

    .line 148
    .restart local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "partial":[B
    .restart local v7    # "remoteMiu":I
    .restart local v8    # "size":I
    :catch_2
    move-exception v11

    goto :goto_4

    .end local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v6    # "partial":[B
    .end local v7    # "remoteMiu":I
    .end local v8    # "size":I
    :catch_3
    move-exception v11

    goto :goto_5

    .line 154
    :catch_4
    move-exception v11

    goto :goto_6

    .line 148
    :catch_5
    move-exception v12

    goto :goto_7

    .line 154
    :catch_6
    move-exception v12

    goto :goto_8

    .line 136
    .restart local v2    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "partial":[B
    .restart local v7    # "remoteMiu":I
    .restart local v8    # "size":I
    :catch_7
    move-exception v11

    goto :goto_2
.end method

.class public Lcom/android/nfc/ndefpush/NdefPushProtocol;
.super Ljava/lang/Object;
.source "NdefPushProtocol.java"


# static fields
.field public static final ACTION_BACKGROUND:B = 0x2t

.field public static final ACTION_IMMEDIATE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "NdefMessageSet"

.field private static final VERSION:B = 0x1t


# instance fields
.field private mActions:[B

.field private mMessages:[Landroid/nfc/NdefMessage;

.field private mNumMessages:I


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;B)V
    .locals 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "action"    # B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 46
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aput-byte p2, v0, v2

    .line 47
    new-array v0, v1, [Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 48
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aput-object p1, v0, v2

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .local v0, "buffer":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v4, "input":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 79
    .local v7, "version":B
    if-eq v7, v11, :cond_0

    .line 80
    const-string v8, "NdefMessageSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",  expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v8, Landroid/nfc/FormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",  expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 74
    .end local v7    # "version":B
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "NdefMessageSet"

    const-string v9, "Unable to read version"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Unable to read version"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 86
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v7    # "version":B
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iput v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    iget v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-nez v8, :cond_1

    .line 92
    const-string v8, "NdefMessageSet"

    const-string v9, "No NdefMessage inside NdefMessageSet packet"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Error while parsing NdefMessageSet"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    :catch_1
    move-exception v2

    .line 88
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "NdefMessageSet"

    const-string v9, "Unable to read numMessages"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Error while parsing NdefMessageSet"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    iget v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    new-array v8, v8, [B

    iput-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 98
    iget v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    new-array v8, v8, [Landroid/nfc/NdefMessage;

    iput-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 99
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v3, v8, :cond_3

    .line 102
    :try_start_2
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    aput-byte v9, v8, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    .line 115
    .local v5, "length":I
    new-array v1, v5, [B

    .line 119
    .local v1, "bytes":[B
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v6

    .line 124
    .local v6, "lengthRead":I
    if-eq v5, v6, :cond_2

    .line 125
    const-string v8, "NdefMessageSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes but expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Error while parsing NdefMessageSet"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 103
    .end local v1    # "bytes":[B
    .end local v5    # "length":I
    .end local v6    # "lengthRead":I
    :catch_2
    move-exception v2

    .line 104
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "NdefMessageSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read action for message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Error while parsing NdefMessageSet"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 111
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 112
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "NdefMessageSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read length for message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Error while parsing NdefMessageSet"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bytes":[B
    .restart local v5    # "length":I
    :catch_4
    move-exception v2

    .line 121
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "NdefMessageSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to read bytes for message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v8, Landroid/nfc/FormatException;

    const-string v9, "Error while parsing NdefMessageSet"

    invoke-direct {v8, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 131
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "lengthRead":I
    :cond_2
    :try_start_5
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    new-instance v9, Landroid/nfc/NdefMessage;

    invoke-direct {v9, v1}, Landroid/nfc/NdefMessage;-><init>([B)V

    aput-object v9, v8, v3
    :try_end_5
    .catch Landroid/nfc/FormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 132
    :catch_5
    move-exception v2

    .line 133
    .local v2, "e":Landroid/nfc/FormatException;
    throw v2

    .line 136
    .end local v1    # "bytes":[B
    .end local v2    # "e":Landroid/nfc/FormatException;
    .end local v5    # "length":I
    .end local v6    # "lengthRead":I
    :cond_3
    return-void
.end method

.method public constructor <init>([B[Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "actions"    # [B
    .param p2, "messages"    # [Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "actions and messages must be the same size and non-empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    array-length v0, p1

    .line 59
    .local v0, "numMessages":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 60
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    new-array v1, v0, [Landroid/nfc/NdefMessage;

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 62
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 64
    return-void
.end method


# virtual methods
.method public getImmediate()Landroid/nfc/NdefMessage;
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v1, v1, v0

    .line 145
    :goto_1
    return-object v1

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toByteArray()[B
    .locals 6

    .prologue
    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 150
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v4, "output":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    iget v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 155
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v3, v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 158
    .local v1, "bytes":[B
    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 165
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-object v5

    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_1
.end method

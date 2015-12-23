.class public Lcom/motorola/persistentdata/MotoPersDataBlockManager;
.super Ljava/lang/Object;
.source "MotoPersDataBlockManager.java"


# static fields
.field public static final DATA_BLOCK_PARTITION_CID:I = 0x0

.field public static final DATA_BLOCK_PARTITION_CLOGO:I = 0x1

.field private static final DATA_BLOCK_PARTITION_FIRST:I = 0x0

.field private static final DATA_BLOCK_PARTITION_LAST:I = 0x1

.field private static final PARTITION_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/motorola/persistentdata/IMotoPersDataBlockService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-class v0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CLOGO"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->PARTITION_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/persistentdata/IMotoPersDataBlockService;)V
    .locals 0
    .param p1, "service"    # Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->mService:Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    .line 54
    return-void
.end method

.method private getPartitionName(I)Ljava/lang/String;
    .locals 2
    .param p1, "partition"    # I

    .prologue
    .line 161
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 163
    sget-object v0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->PARTITION_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 165
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 157
    sget-object v0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method private static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 139
    const/4 v3, 0x0

    .line 140
    .local v3, "pos":I
    new-array v1, p1, [B

    .line 142
    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 143
    .local v0, "amt":I
    if-gtz v0, :cond_1

    .line 144
    return-object v1

    .line 146
    :cond_1
    add-int/2addr v3, v0

    .line 147
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    .line 148
    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_0

    .line 149
    add-int v4, v3, p1

    new-array v2, v4, [B

    .line 150
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 151
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public getMaximumDataBlockSize(I)J
    .locals 4
    .param p1, "partition"    # I

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->mService:Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    invoke-interface {v1, p1}, Lcom/motorola/persistentdata/IMotoPersDataBlockService;->getMaximumDataBlockSize(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 130
    :goto_0
    return-wide v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting maximum data block size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->getPartitionName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->onError(Ljava/lang/String;)V

    .line 130
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public read(I)[B
    .locals 9
    .param p1, "partition"    # I

    .prologue
    const/4 v5, 0x0

    .line 98
    :try_start_0
    iget-object v6, p0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->mService:Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    invoke-interface {v6, p1}, Lcom/motorola/persistentdata/IMotoPersDataBlockService;->read(I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 99
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_1

    .line 100
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 101
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v7

    invoke-static {v2, v7}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->readFully(Ljava/io/FileInputStream;I)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 103
    .local v0, "data":[B
    if-eqz v2, :cond_0

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 110
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v0

    .line 103
    .restart local v0    # "data":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v6, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->TAG:Ljava/lang/String;

    const-string v7, "Unable to read data stream"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    move-object v0, v5

    .line 110
    goto :goto_0

    .line 103
    .restart local v0    # "data":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 107
    .end local v0    # "data":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 108
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reading data from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->getPartitionName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->onError(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v6

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 103
    :catchall_0
    move-exception v7

    move-object v8, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v7, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_3
    :goto_3
    :try_start_9
    throw v6

    :catch_4
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v6

    move-object v7, v5

    goto :goto_2
.end method

.method public write(I[B)I
    .locals 3
    .param p1, "partition"    # I
    .param p2, "data"    # [B

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->mService:Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    const-string/jumbo v2, "persdata"

    invoke-static {p2, v2}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/motorola/persistentdata/IMotoPersDataBlockService;->write(ILandroid/os/ParcelFileDescriptor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 82
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v1, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write data stream"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v1, -0x1

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writing data onto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->getPartitionName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method

.class Lcom/motorola/server/MotoPersDataBlockService$1;
.super Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;
.source "MotoPersDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/MotoPersDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/MotoPersDataBlockService;


# direct methods
.method constructor <init>(Lcom/motorola/server/MotoPersDataBlockService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    invoke-direct {p0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumDataBlockSize(I)J
    .locals 4
    .param p1, "partition"    # I

    .prologue
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/server/MotoPersDataBlockService;->access$100(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .local v0, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown partition id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    invoke-static {v1, v0}, Lcom/motorola/server/MotoPersDataBlockService;->access$200(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    iget-object v1, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    invoke-static {v1, v0}, Lcom/motorola/server/MotoPersDataBlockService;->access$500(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v2

    return-wide v2
.end method

.method public read(I)Landroid/os/ParcelFileDescriptor;
    .locals 13
    .param p1, "partition"    # I

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/motorola/server/MotoPersDataBlockService;->access$100(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .local v2, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    if-nez v2, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown partition id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    invoke-static {v6, v2}, Lcom/motorola/server/MotoPersDataBlockService;->access$200(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    const/4 v1, 0x0

    .local v1, "data":[B
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v8, v2, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-static {v6, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .local v0, "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    const/4 v8, 0x0

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v6, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    invoke-static {v6, v2}, Lcom/motorola/server/MotoPersDataBlockService;->access$500(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v10

    long-to-int v4, v10

    .local v4, "max":I
    iget-object v6, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/motorola/server/MotoPersDataBlockService;->access$600(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->readFully(Ljava/io/FileInputStream;I)[B
    invoke-static {v0, v4}, Lcom/motorola/server/MotoPersDataBlockService;->access$300(Ljava/io/FileInputStream;I)[B

    move-result-object v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    :try_start_3
    const-string v6, "persdata"

    invoke-static {v1, v6}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v6

    if-eqz v0, :cond_1

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v4    # "max":I
    :cond_1
    :goto_0
    return-object v6

    .restart local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "max":I
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "max":I
    :catch_0
    move-exception v6

    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v8

    move-object v12, v8

    move-object v8, v6

    move-object v6, v12

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v8, :cond_7

    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_2
    :goto_2
    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .end local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "partition not available?"

    invoke-static {v6, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    move-object v6, v7

    goto :goto_0

    .restart local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "max":I
    :catch_2
    move-exception v5

    .local v5, "x2":Ljava/lang/Throwable;
    :try_start_a
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_0

    .end local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .end local v4    # "max":I
    .end local v5    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string v8, "partition not available?"

    invoke-static {v6, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "acis":Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;
    .restart local v4    # "max":I
    :cond_4
    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_0

    .end local v4    # "max":I
    :cond_5
    if-eqz v0, :cond_3

    if-eqz v7, :cond_6

    :try_start_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    :catch_4
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    :try_start_d
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    goto :goto_3

    :catch_5
    move-exception v5

    .restart local v5    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v8, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v5    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_2

    :catchall_2
    move-exception v6

    move-object v8, v7

    goto :goto_1
.end method

.method public write(ILandroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "partition"    # I
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    iget-object v9, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->mDataBlocks:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/motorola/server/MotoPersDataBlockService;->access$100(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;

    .local v1, "db":Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;
    if-nez v1, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown partition id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-boolean v9, v1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mWritable:Z

    if-nez v9, :cond_1

    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Readonly: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v9, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->enforcePermission(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V
    invoke-static {v9, v1}, Lcom/motorola/server/MotoPersDataBlockService;->access$200(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)V

    const/4 v0, 0x0

    .local v0, "data":[B
    if-eqz p2, :cond_2

    :try_start_0
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v9}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v9

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->readFully(Ljava/io/FileInputStream;I)[B
    invoke-static {v3, v9}, Lcom/motorola/server/MotoPersDataBlockService;->access$300(Ljava/io/FileInputStream;I)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v0

    if-eqz v3, :cond_2

    if-eqz v10, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    if-nez v0, :cond_6

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "No data to write"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v8

    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Unable to read data stream"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v10, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_3
    :try_start_7
    throw v9

    :catch_3
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_6
    iget-object v9, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # invokes: Lcom/motorola/server/MotoPersDataBlockService;->getBlockDeviceSize(Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J
    invoke-static {v9, v1}, Lcom/motorola/server/MotoPersDataBlockService;->access$500(Lcom/motorola/server/MotoPersDataBlockService;Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;)J

    move-result-wide v4

    .local v4, "maxBlockSize":J
    array-length v9, v0

    int-to-long v10, v9

    cmp-long v9, v10, v4

    if-lez v9, :cond_7

    neg-long v8, v4

    long-to-int v8, v8

    goto :goto_1

    :cond_7
    :try_start_8
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .local v6, "outputStream":Ljava/io/DataOutputStream;
    :try_start_9
    iget-object v9, p0, Lcom/motorola/server/MotoPersDataBlockService$1;->this$0:Lcom/motorola/server/MotoPersDataBlockService;

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/motorola/server/MotoPersDataBlockService;->access$600(Lcom/motorola/server/MotoPersDataBlockService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->write([B)V

    array-length v9, v0

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_4
    move v8, v9

    goto :goto_1

    .end local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "partition not available?"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v8

    const-string v10, "failed closing output stream"

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_e
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed writing to the "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/motorola/server/MotoPersDataBlockService$DataBlockInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v2

    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "failed closing output stream"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v8

    :try_start_10
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    :goto_5
    throw v8

    :catch_8
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    # getter for: Lcom/motorola/server/MotoPersDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/server/MotoPersDataBlockService;->access$400()Ljava/lang/String;

    move-result-object v9

    const-string v10, "failed closing output stream"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "maxBlockSize":J
    .end local v6    # "outputStream":Ljava/io/DataOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    goto/16 :goto_2
.end method

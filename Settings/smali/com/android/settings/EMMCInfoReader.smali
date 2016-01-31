.class public Lcom/android/settings/EMMCInfoReader;
.super Ljava/lang/Object;
.source "EMMCInfoReader.java"


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mEMMCSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/EMMCInfoReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/Utils;->DBG:Z

    iput-boolean v0, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    return-void
.end method


# virtual methods
.method public getTotalSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    return-wide v0
.end method

.method public readEMMCInfo()V
    .locals 14

    .prologue
    const/4 v12, -0x1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .local v4, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v2, 0x0

    .local v2, "reader":Ljava/io/BufferedReader;
    const-wide/16 v10, 0x0

    :try_start_0
    iput-wide v10, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/partitions"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .local v5, "size":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "size0":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "size1":Ljava/lang/String;
    :try_start_1
    const-string v1, ""

    .local v1, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v9, "mmcblk1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_1

    const-string v9, "mmcblk1p"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_1

    const-string v9, "\\s+"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "strs":[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v7, v8, v9

    .end local v8    # "strs":[Ljava/lang/String;
    :cond_1
    const-string v9, "mmcblk0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_2

    const-string v9, "mmcblk0p"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v12, :cond_2

    const-string v9, "\\s+"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "strs":[Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v6, v8, v9

    .end local v8    # "strs":[Ljava/lang/String;
    :cond_2
    const-string v9, "mmcblk0p5"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_3

    move-object v5, v6

    :cond_3
    const-string v9, "mmcblk1p5"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v12, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EMMCInfoReader: line:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    :cond_6
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EMMCInfoReader: size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/settings/EMMCInfoReader;->mEMMCSize:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_7
    if-eqz v3, :cond_9

    :try_start_2
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    :goto_1
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v2, v3

    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "size":Ljava/lang/String;
    .end local v6    # "size0":Ljava/lang/String;
    .end local v7    # "size1":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-void

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "size":Ljava/lang/String;
    .restart local v6    # "size0":Ljava/lang/String;
    .restart local v7    # "size1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "size":Ljava/lang/String;
    .end local v6    # "size0":Ljava/lang/String;
    .end local v7    # "size1":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_3
    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_c

    :try_start_4
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_c
    :goto_4
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_f

    :try_start_6
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_f
    :goto_6
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_7
    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_12

    :try_start_8
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_8
    iget-boolean v9, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v10, "EMMCInfoReader: return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_2

    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ERROR: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_9
    if-eqz v2, :cond_15

    :try_start_9
    iget-boolean v10, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v11, "EMMCInfoReader: close"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_15
    :goto_a
    iget-boolean v10, p0, Lcom/android/settings/EMMCInfoReader;->DBG:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    const-string v11, "EMMCInfoReader: return"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v9

    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/settings/EMMCInfoReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ERROR: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "size":Ljava/lang/String;
    .restart local v6    # "size0":Ljava/lang/String;
    .restart local v7    # "size1":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_9

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

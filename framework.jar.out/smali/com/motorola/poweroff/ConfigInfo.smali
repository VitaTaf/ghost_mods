.class public Lcom/motorola/poweroff/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ConfigInfo"

.field private static final prefix_dir:Ljava/lang/String; = "/data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileWrite_info(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 15
    .param p0, "dirname"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 35
    const/4 v8, 0x0

    .line 38
    .local v8, "fos":Ljava/io/FileOutputStream;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "dirpath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_0

    .line 45
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v10

    .line 51
    .local v10, "ret":Z
    const/16 v11, 0x1ed

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v3, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v10    # "ret":Z
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v7, "file":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 69
    .local v4, "dos":Ljava/io/DataOutputStream;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 70
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 76
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1e4

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    if-eqz v9, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 100
    :cond_1
    :goto_0
    const/4 v11, 0x1

    move-object v8, v9

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return v11

    .line 57
    .restart local v2    # "dir":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 59
    .local v5, "e":Ljava/lang/SecurityException;
    const/4 v11, 0x0

    .line 91
    if-eqz v8, :cond_2

    .line 92
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v5

    .line 96
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 96
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .line 85
    .local v6, "ex":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v11, 0x0

    .line 91
    if-eqz v8, :cond_2

    .line 92
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 94
    :catch_4
    move-exception v5

    .line 96
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    .line 88
    .local v6, "ex":Ljava/io/IOException;
    :goto_3
    const/4 v11, 0x0

    .line 91
    if-eqz v8, :cond_2

    .line 92
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 94
    :catch_6
    move-exception v5

    .line 96
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 91
    :goto_4
    if-eqz v8, :cond_3

    .line 92
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 97
    :cond_3
    :goto_5
    throw v11

    .line 94
    :catch_7
    move-exception v5

    .line 96
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 90
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 86
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 83
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public static pwrSnd_setSilentreboot(I)V
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 26
    const-string/jumbo v0, "pwrsnd"

    const-string/jumbo v1, "silentreboot"

    invoke-static {v0, v1, p0}, Lcom/motorola/poweroff/ConfigInfo;->fileWrite_info(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 27
    return-void
.end method

.method public static pwrSnd_setVolume(I)V
    .locals 2
    .param p0, "val"    # I

    .prologue
    .line 30
    const-string/jumbo v0, "pwrsnd"

    const-string/jumbo v1, "volume"

    invoke-static {v0, v1, p0}, Lcom/motorola/poweroff/ConfigInfo;->fileWrite_info(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 31
    return-void
.end method

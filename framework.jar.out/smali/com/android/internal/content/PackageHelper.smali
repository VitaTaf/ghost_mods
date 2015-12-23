.class public Lcom/android/internal/content/PackageHelper;
.super Ljava/lang/Object;
.source "PackageHelper.java"


# static fields
.field public static final APP_INSTALL_AUTO:I = 0x0

.field public static final APP_INSTALL_EXTERNAL:I = 0x2

.field public static final APP_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_FAILED_ALREADY_EXISTS:I = -0x4

.field public static final RECOMMEND_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final RECOMMEND_FAILED_INVALID_APK:I = -0x2

.field public static final RECOMMEND_FAILED_INVALID_LOCATION:I = -0x3

.field public static final RECOMMEND_FAILED_INVALID_URI:I = -0x6

.field public static final RECOMMEND_FAILED_VERSION_DOWNGRADE:I = -0x7

.field public static final RECOMMEND_INSTALL_EXTERNAL:I = 0x2

.field public static final RECOMMEND_INSTALL_INTERNAL:I = 0x1

.field public static final RECOMMEND_MEDIA_UNAVAILABLE:I = -0x5

.field private static final TAG:Ljava/lang/String; = "PackageHelper"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;ZLjava/lang/String;)J
    .locals 8
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "handle"    # Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .param p2, "isForwardLocked"    # Z
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    const-wide/16 v4, 0x0

    .line 450
    .local v4, "sizeBytes":J
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    .local v1, "codePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, "codeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 454
    if-eqz p2, :cond_0

    .line 455
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/internal/content/PackageHelper;->extractPublicFiles(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_0

    .line 460
    .end local v0    # "codeFile":Ljava/io/File;
    .end local v1    # "codePath":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p3}, Lcom/android/internal/content/NativeLibraryHelper;->sumNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 462
    return-wide v4
.end method

.method public static calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;ZLjava/lang/String;)J
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p1, "isForwardLocked"    # Z
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, "handle":Lcom/android/internal/content/NativeLibraryHelper$Handle;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/PackageParser$PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    .line 439
    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Lcom/android/internal/content/NativeLibraryHelper$Handle;ZLjava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 441
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide v2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private static copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    .locals 5
    .param p0, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p1, "inZipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "outZipStream"    # Ljava/util/zip/ZipOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 304
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_0

    .line 306
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 311
    .local v2, "newEntry":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 313
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 315
    .local v1, "data":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "num":I
    if-lez v3, :cond_1

    .line 316
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 320
    .end local v3    # "num":I
    :catchall_0
    move-exception v4

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4

    .line 309
    .end local v1    # "data":Ljava/io/InputStream;
    .end local v2    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_0
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .restart local v2    # "newEntry":Ljava/util/zip/ZipEntry;
    goto :goto_0

    .line 318
    .restart local v1    # "data":Ljava/io/InputStream;
    .restart local v3    # "num":I
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 322
    return-void
.end method

.method public static createSdDir(JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 12
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "isExternal"    # Z

    .prologue
    .line 88
    const-wide/32 v4, 0x100000

    add-long/2addr v4, p0

    const-wide/32 v10, 0x100000

    div-long/2addr v4, v10

    long-to-int v1, v4

    add-int/lit8 v2, v1, 0x2

    .line 90
    .local v2, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 95
    .local v0, "mountService":Landroid/os/storage/IMountService;
    const-string v3, "ext4"

    move-object v1, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/storage/IMountService;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v9

    .line 97
    .local v9, "rc":I
    if-eqz v9, :cond_0

    .line 98
    const-string v1, "PackageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create secure container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v7, 0x0

    .line 108
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    .end local v9    # "rc":I
    :goto_0
    return-object v7

    .line 101
    .restart local v0    # "mountService":Landroid/os/storage/IMountService;
    .restart local v9    # "rc":I
    :cond_0
    invoke-interface {v0, p2}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 104
    .local v7, "cachePath":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    .end local v7    # "cachePath":Ljava/lang/String;
    .end local v9    # "rc":I
    :catch_0
    move-exception v8

    .line 106
    .local v8, "e":Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    const-string v3, "MountService running?"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static destroySdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p0, v5}, Landroid/os/storage/IMountService;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v1

    .line 214
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 215
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to destroy container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "rc":I
    :goto_0
    return v2

    .restart local v1    # "rc":I
    :cond_0
    move v2, v3

    .line 218
    goto :goto_0

    .line 219
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to destroy container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static extractPublicFiles(Ljava/io/File;Ljava/io/File;)J
    .locals 12
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "publicZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    if-nez p1, :cond_2

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "fstr":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 262
    .local v3, "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    :goto_0
    const-wide/16 v4, 0x0

    .line 265
    .local v4, "size":J
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 268
    .local v2, "privateZip":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 269
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "zipEntryName":Ljava/lang/String;
    const-string v8, "AndroidManifest.xml"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "resources.arsc"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "res/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 273
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-static {v6, v2, v3}, Lcom/android/internal/content/PackageHelper;->copyZipEntry(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 280
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "zipEntryName":Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 292
    .end local v2    # "privateZip":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    .line 257
    .end local v0    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    .end local v4    # "size":J
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 258
    .restart local v0    # "fstr":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 259
    .restart local v3    # "publicZipOutStream":Ljava/util/zip/ZipOutputStream;
    const-string v8, "PackageHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Extracting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 280
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "privateZip":Ljava/util/zip/ZipFile;
    .restart local v4    # "size":J
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 283
    :goto_3
    if-eqz p1, :cond_4

    .line 284
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 285
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 286
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 287
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 288
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1a4

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 292
    :cond_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 295
    return-wide v4

    .line 280
    :catch_0
    move-exception v8

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v9

    goto :goto_2
.end method

.method public static finalizeSdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 197
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/storage/IMountService;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 199
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to finalize container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1    # "rc":I
    :goto_0
    return v2

    .line 202
    .restart local v1    # "rc":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to finalize container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "gid"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 326
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0, p1, p2}, Landroid/os/storage/IMountService;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 328
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fixperms container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "rc":I
    :goto_0
    return v2

    .line 331
    .restart local v1    # "rc":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fixperms container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMountService()Landroid/os/storage/IMountService;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 78
    :cond_0
    const-string v1, "PackageHelper"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact mount service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getSdDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get container path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSdFilesystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get container path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSecureContainerList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 228
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IMountService;->getSecureContainerList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 229
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 230
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get secure container list with exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isContainerMounted(Ljava/lang/String;)Z
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/os/storage/IMountService;->isSecureContainerMounted(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find out if container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mounted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "readOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/os/storage/IMountService;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    .line 134
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 135
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mount container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "rc":I
    :goto_0
    return-object v2

    .line 138
    .restart local v1    # "rc":I
    :cond_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/storage/IMountService;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 139
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    const-string v4, "MountService running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "oldId"    # Ljava/lang/String;
    .param p1, "newId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    invoke-interface {v3, p0, p1}, Landroid/os/storage/IMountService;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 163
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "with rc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "rc":I
    :goto_0
    return v2

    .line 167
    .restart local v1    # "rc":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed ot rename  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static replaceEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "before"    # Ljava/lang/String;
    .param p2, "after"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to end with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resizeSdDir(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "sizeBytes"    # J
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sdEncKey"    # Ljava/lang/String;

    .prologue
    const-wide/32 v6, 0x100000

    .line 113
    add-long v4, p0, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 115
    .local v3, "sizeMb":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 116
    .local v1, "mountService":Landroid/os/storage/IMountService;
    invoke-interface {v1, p2, v3, p3}, Landroid/os/storage/IMountService;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 117
    .local v2, "rc":I
    if-nez v2, :cond_0

    .line 118
    const/4 v4, 0x1

    .line 124
    .end local v1    # "mountService":Landroid/os/storage/IMountService;
    .end local v2    # "rc":I
    :goto_0
    return v4

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "PackageHelper"

    const-string v5, "MountService running?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v4, "PackageHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create secure container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static resolveInstallLocation(Landroid/content/Context;Ljava/lang/String;IJI)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installLocation"    # I
    .param p3, "sizeBytes"    # J
    .param p5, "installFlags"    # I

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, "existingInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    :goto_0
    and-int/lit8 v8, p5, 0x10

    if-eqz v8, :cond_4

    .line 354
    const/4 v5, 0x1

    .line 355
    .local v5, "prefer":I
    const/4 v0, 0x0

    .line 383
    .local v0, "checkBoth":Z
    :goto_1
    invoke-static {}, Landroid/os/storage/StorageManager;->getSdVolume()Landroid/os/storage/StorageVolume;

    move-result-object v8

    if-eqz v8, :cond_b

    const/4 v4, 0x1

    .line 384
    .local v4, "hasSd":Z
    :goto_2
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    .line 386
    .local v6, "storage":Landroid/os/storage/StorageManager;
    const/4 v3, 0x0

    .line 387
    .local v3, "fitsOnInternal":Z
    if-nez v0, :cond_0

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 388
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    .line 389
    .local v7, "target":Ljava/io/File;
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, p3, v8

    if-gtz v8, :cond_c

    const/4 v3, 0x1

    .line 392
    .end local v7    # "target":Ljava/io/File;
    :cond_1
    :goto_3
    const/4 v2, 0x0

    .line 393
    .local v2, "fitsOnExternal":Z
    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 395
    :cond_2
    invoke-static {}, Landroid/os/storage/StorageManager;->getSdVolume()Landroid/os/storage/StorageVolume;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v7

    .line 397
    .restart local v7    # "target":Ljava/io/File;
    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-lez v8, :cond_3

    .line 398
    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, p3, v8

    if-gtz v8, :cond_d

    const/4 v2, 0x1

    .line 402
    .end local v7    # "target":Ljava/io/File;
    :cond_3
    :goto_4
    const/4 v8, 0x1

    if-ne v5, v8, :cond_e

    .line 403
    if-eqz v3, :cond_f

    .line 404
    const/4 v8, 0x1

    .line 429
    :goto_5
    return v8

    .line 356
    .end local v0    # "checkBoth":Z
    .end local v2    # "fitsOnExternal":Z
    .end local v3    # "fitsOnInternal":Z
    .end local v4    # "hasSd":Z
    .end local v5    # "prefer":I
    .end local v6    # "storage":Landroid/os/storage/StorageManager;
    :cond_4
    and-int/lit8 v8, p5, 0x8

    if-eqz v8, :cond_5

    .line 357
    const/4 v5, 0x2

    .line 358
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 359
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_5
    const/4 v8, 0x1

    if-ne p2, v8, :cond_6

    .line 360
    const/4 v5, 0x1

    .line 361
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 362
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_6
    const/4 v8, 0x2

    if-ne p2, v8, :cond_7

    .line 363
    const/4 v5, 0x2

    .line 364
    .restart local v5    # "prefer":I
    const/4 v0, 0x1

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 365
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_7
    if-nez p2, :cond_a

    .line 367
    if-eqz v1, :cond_9

    .line 368
    iget v8, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x40000

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    .line 369
    const/4 v5, 0x2

    .line 376
    .restart local v5    # "prefer":I
    :goto_6
    const/4 v0, 0x1

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 371
    .end local v0    # "checkBoth":Z
    .end local v5    # "prefer":I
    :cond_8
    const/4 v5, 0x1

    .restart local v5    # "prefer":I
    goto :goto_6

    .line 374
    .end local v5    # "prefer":I
    :cond_9
    const/4 v5, 0x1

    .restart local v5    # "prefer":I
    goto :goto_6

    .line 378
    .end local v5    # "prefer":I
    :cond_a
    const/4 v5, 0x1

    .line 379
    .restart local v5    # "prefer":I
    const/4 v0, 0x0

    .restart local v0    # "checkBoth":Z
    goto :goto_1

    .line 383
    :cond_b
    const/4 v4, 0x0

    goto :goto_2

    .line 389
    .restart local v3    # "fitsOnInternal":Z
    .restart local v4    # "hasSd":Z
    .restart local v6    # "storage":Landroid/os/storage/StorageManager;
    .restart local v7    # "target":Ljava/io/File;
    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    .line 398
    .restart local v2    # "fitsOnExternal":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 406
    .end local v7    # "target":Ljava/io/File;
    :cond_e
    if-eqz v4, :cond_f

    const/4 v8, 0x2

    if-ne v5, v8, :cond_f

    .line 407
    if-eqz v2, :cond_f

    .line 408
    const/4 v8, 0x2

    goto :goto_5

    .line 412
    :cond_f
    if-eqz v0, :cond_11

    .line 413
    if-eqz v3, :cond_10

    .line 414
    const/4 v8, 0x1

    goto :goto_5

    .line 415
    :cond_10
    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    .line 416
    const/4 v8, 0x2

    goto :goto_5

    .line 425
    :cond_11
    if-eqz v4, :cond_13

    if-nez v0, :cond_12

    const/4 v8, 0x2

    if-ne v5, v8, :cond_13

    :cond_12
    const-string/jumbo v8, "mounted"

    invoke-static {}, Landroid/os/storage/StorageManager;->getSdVolume()Landroid/os/storage/StorageVolume;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 427
    const/4 v8, -0x5

    goto :goto_5

    .line 429
    :cond_13
    const/4 v8, -0x1

    goto :goto_5

    .line 348
    .end local v0    # "checkBoth":Z
    .end local v2    # "fitsOnExternal":Z
    .end local v3    # "fitsOnInternal":Z
    .end local v4    # "hasSd":Z
    .end local v5    # "prefer":I
    .end local v6    # "storage":Landroid/os/storage/StorageManager;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public static unMountSdDir(Ljava/lang/String;)Z
    .locals 6
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    :try_start_0
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p0, v5}, Landroid/os/storage/IMountService;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v1

    .line 148
    .local v1, "rc":I
    if-eqz v1, :cond_0

    .line 149
    const-string v3, "PackageHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with rc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "rc":I
    :goto_0
    return v2

    .restart local v1    # "rc":I
    :cond_0
    move v2, v3

    .line 152
    goto :goto_0

    .line 153
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PackageHelper"

    const-string v4, "MountService running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class public Lcom/android/server/updates/SELinuxPolicyInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "SELinuxPolicyInstallReceiver.java"


# static fields
.field private static final DEFAULT_UID_PROPERTY:Ljava/lang/String; = "PROP_NOT_SET"

.field private static final TAG:Ljava/lang/String; = "SELinuxPolicyInstallReceiver"

.field private static final fileContextsPath:Ljava/lang/String; = "file_contexts"

.field private static final macPermissionsPath:Ljava/lang/String; = "mac_permissions.xml"

.field private static final propertyContextsPath:Ljava/lang/String; = "property_contexts"

.field private static final seappContextsPath:Ljava/lang/String; = "seapp_contexts"

.field private static final sepolicyPath:Ljava/lang/String; = "sepolicy"

.field private static final serviceContextsPath:Ljava/lang/String; = "service_contexts"

.field private static final versionPath:Ljava/lang/String; = "selinux_version"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v0, "/data/security/bundle"

    const-string v1, "sepolicy_bundle"

    const-string v2, "metadata/"

    const-string v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private applyUpdate()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v5, "SELinuxPolicyInstallReceiver"

    const-string v6, "Applying SELinux policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const-string v6, "contexts"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "contexts":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const-string v6, "current"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "current":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const-string v6, "update"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v4, "update":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const-string v6, "tmp"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, "tmp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->backupContexts(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->copyUpdate(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "selinux.reload_policy"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v6, "metadata/"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "metadataDir":Ljava/io/File;
    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->checkDeviceuid()Z

    move-result v5

    if-ne v5, v7, :cond_0

    const-string v5, "selinux.bound_signed_policy"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .end local v2    # "metadataDir":Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private backupContexts(Ljava/io/File;)V
    .locals 3
    .param p1, "contexts"    # Ljava/io/File;

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "selinux_version"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "selinux_version_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "mac_permissions.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "mac_permissions.xml_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "seapp_contexts"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "seapp_contexts_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "property_contexts"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "property_contexts_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "file_contexts"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "file_contexts_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "sepolicy"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "sepolicy_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    const-string v1, "service_contexts"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "service_contexts_backup"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method private checkDeviceuid()Z
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->getOtherMetaData()Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceuidfromIntent":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "persist.atvc.uid"

    const-string v3, "PROP_NOT_SET"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "uidfromhw":Ljava/lang/String;
    const-string v2, "PROP_NOT_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1    # "uidfromhw":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private copyUpdate(Ljava/io/File;)V
    .locals 3
    .param p1, "contexts"    # Ljava/io/File;

    .prologue
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "selinux_version"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "selinux_version"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "mac_permissions.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "mac_permissions.xml"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "seapp_contexts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "seapp_contexts"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "property_contexts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "property_contexts"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "file_contexts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "file_contexts"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "sepolicy"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "sepolicy"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v2, "service_contexts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "service_contexts"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void
.end method

.method private installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    .locals 3
    .param p1, "destination"    # Ljava/io/File;
    .param p2, "stream"    # Ljava/io/BufferedInputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-array v0, p3, [B

    .local v0, "chunk":[B
    invoke-virtual {p2, v0, v2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    iget-object v1, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->writeUpdate(Ljava/io/File;Ljava/io/File;[B)V

    return-void
.end method

.method private readChunkLengths(Ljava/io/BufferedInputStream;)[I
    .locals 3
    .param p1, "bundle"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    new-array v0, v1, [I

    .local v0, "chunks":[I
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, p1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readInt(Ljava/io/BufferedInputStream;)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method private readInt(Ljava/io/BufferedInputStream;)I
    .locals 4
    .param p1, "reader"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v1, 0x8

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    or-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private unpackBundle()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateContent:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "stream":Ljava/io/BufferedInputStream;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->readChunkLengths(Ljava/io/BufferedInputStream;)[I

    move-result-object v0

    .local v0, "chunkLengths":[I
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "selinux_version"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "mac_permissions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "seapp_contexts"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "property_contexts"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x3

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "file_contexts"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x4

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "sepolicy"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x5

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->updateDir:Ljava/io/File;

    const-string v4, "service_contexts"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x6

    aget v3, v0, v3

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->installFile(Ljava/io/File;Ljava/io/BufferedInputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .end local v0    # "chunkLengths":[I
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method


# virtual methods
.method protected getCertString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->checkDeviceuid()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x104071f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x104071e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getMessageDigestInstance()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-string v0, "SHA256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method protected getSignatureInstance()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->unpackBundle()V

    invoke-direct {p0}, Lcom/android/server/updates/SELinuxPolicyInstallReceiver;->applyUpdate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SELinuxPolicyInstallReceiver"

    const-string v2, "SELinux policy update malformed: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SELinuxPolicyInstallReceiver"

    const-string v2, "Could not update selinux policy: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    const-string v1, "SELinuxPolicyInstallReceiver"

    const-string v2, "Could not update selinux policy: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

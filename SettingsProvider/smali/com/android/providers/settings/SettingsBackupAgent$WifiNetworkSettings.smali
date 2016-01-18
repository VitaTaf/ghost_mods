.class Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
.super Ljava/lang/Object;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiNetworkSettings"
.end annotation


# instance fields
.field final mKnownNetworks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/providers/settings/SettingsBackupAgent$Network;",
            ">;"
        }
    .end annotation
.end field

.field final mNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/settings/SettingsBackupAgent$Network;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/providers/settings/SettingsBackupAgent;


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsBackupAgent;)V
    .locals 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mNetworks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readNetworks(Ljava/io/BufferedReader;Ljava/util/List;)V
    .locals 5
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "whitelist":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 313
    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {p1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->readFromStream(Ljava/io/BufferedReader;)Lcom/android/providers/settings/SettingsBackupAgent$Network;

    move-result-object v1

    .line 315
    .local v1, "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    if-eqz p2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->this$0:Lcom/android/providers/settings/SettingsBackupAgent;

    invoke-virtual {v2, v1, p2}, Lcom/android/providers/settings/SettingsBackupAgent;->networkInWhitelist(Lcom/android/providers/settings/SettingsBackupAgent$Network;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    iget-boolean v2, v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;->pre_ssid:Z

    if-nez v2, :cond_3

    .line 330
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mKnownNetworks:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :catch_0
    move-exception v2

    .line 347
    :cond_2
    return-void

    .line 333
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_3
    const-string v2, "SettingsBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded SSID; skipped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 3
    .param p1, "w"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v2, p0, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->mNetworks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;

    .line 351
    .local v1, "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    iget-boolean v2, v1, Lcom/android/providers/settings/SettingsBackupAgent$Network;->certUsed:Z

    if-nez v2, :cond_0

    .line 358
    invoke-virtual {v1, p1}, Lcom/android/providers/settings/SettingsBackupAgent$Network;->write(Ljava/io/Writer;)V

    goto :goto_0

    .line 360
    .end local v1    # "net":Lcom/android/providers/settings/SettingsBackupAgent$Network;
    :cond_1
    return-void
.end method

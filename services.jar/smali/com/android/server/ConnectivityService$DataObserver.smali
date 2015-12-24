.class Lcom/android/server/ConnectivityService$DataObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;

.field wifiSettingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x1

    .line 4882
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    .line 4883
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4879
    const-string v0, "wifi_avoid_bad_connection_enabled"

    invoke-static {v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$DataObserver;->wifiSettingUri:Landroid/net/Uri;

    .line 4884
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$DataObserver;->mResolver:Landroid/content/ContentResolver;

    .line 4885
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DataObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_avoid_bad_connection_enabled"

    invoke-static {v0, v2, v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/server/ConnectivityService;->mWifiAvoidBadConnection:Z
    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$4802(Lcom/android/server/ConnectivityService;Z)Z

    .line 4887
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DataObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$DataObserver;->wifiSettingUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WIFI_AVOID_BAD_CONNECTION_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/android/server/ConnectivityService;->mWifiAvoidBadConnection:Z
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 4889
    return-void

    .line 4885
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4892
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DataObserver;->wifiSettingUri:Landroid/net/Uri;

    invoke-virtual {v3, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4893
    iget-object v6, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$DataObserver;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "wifi_avoid_bad_connection_enabled"

    invoke-static {v3, v7, v4}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    # setter for: Lcom/android/server/ConnectivityService;->mWifiAvoidBadConnection:Z
    invoke-static {v6, v3}, Lcom/android/server/ConnectivityService;->access$4802(Lcom/android/server/ConnectivityService;Z)Z

    .line 4895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WIFI_AVOID_BAD_CONNECTION_ENABLED="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiAvoidBadConnection:Z
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    .line 4896
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4897
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v3, v3, Landroid/net/NetworkMisc;->allowInvalidation:Z

    iget-object v6, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiAvoidBadConnection:Z
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Z

    move-result v6

    if-ne v3, v6, :cond_0

    .line 4899
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    .line 4900
    .local v2, "oldScore":I
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mWifiAvoidBadConnection:Z
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_1
    iput-boolean v4, v3, Landroid/net/NetworkMisc;->allowInvalidation:Z

    .line 4902
    iget-boolean v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    invoke-static {v3, v1, v2}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4903
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService$DataObserver;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v3, v1}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4908
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "oldScore":I
    :cond_2
    return-void

    :cond_3
    move v3, v5

    .line 4893
    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v2    # "oldScore":I
    :cond_4
    move v4, v5

    .line 4900
    goto :goto_1
.end method

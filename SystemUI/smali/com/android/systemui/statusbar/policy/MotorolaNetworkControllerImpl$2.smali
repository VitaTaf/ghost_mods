.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-nez v2, :cond_1

    :goto_0
    const-string v2, "subscription"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "subId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v2, :cond_4

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    return-void

    .end local v1    # "subId":I
    :cond_1
    const-string v2, "MotoNetwCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBEnableReceiver.onReveive: onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v1    # "subId":I
    :cond_2
    const-string v2, "MotoNetwCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBEnableReceiver.onReveive: onReceive: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v2, "MotoNetwCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCBEnableReceiver.onReveive: valid subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v2, "MotoNetwCtrlr"

    const-string v3, "mCBEnableReceiver.onReveive: found controller to handle event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "mCBEnableReceiver.onReveive: No matching mobile controller found, CellBroadcast Enable/Disable Event ignored"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

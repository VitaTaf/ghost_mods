.class Lcom/android/settings/deviceinfo/SimStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/SimStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/SimStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_0

    const-string v4, "subscription"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->saveAreaInfo(ILjava/lang/String;)V
    invoke-static {v4, v3, v5}, Lcom/android/settings/deviceinfo/SimStatus;->access$000(Lcom/android/settings/deviceinfo/SimStatus;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # getter for: Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/SimStatus;->access$100(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus$1;->this$0:Lcom/android/settings/deviceinfo/SimStatus;

    # invokes: Lcom/android/settings/deviceinfo/SimStatus;->updateAreaInfo()V
    invoke-static {v4}, Lcom/android/settings/deviceinfo/SimStatus;->access$200(Lcom/android/settings/deviceinfo/SimStatus;)V

    goto :goto_0
.end method

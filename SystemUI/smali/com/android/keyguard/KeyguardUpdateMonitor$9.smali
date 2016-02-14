.class Lcom/android/keyguard/KeyguardUpdateMonitor$9;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "KeyguardUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received SPN updates when invalid card exists, intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "slot"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, "slotId":I
    const-string v8, "subscription"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "subId":I
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mInvalidCards:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;

    .local v1, "cardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    if-eqz v1, :cond_0

    const-string v8, "showPlmn"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .local v5, "showPlmn":Z
    const-string v8, "plmn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "plmn":Ljava/lang/String;
    if-eqz v5, :cond_3

    .end local v4    # "plmn":Ljava/lang/String;
    :goto_0
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$9;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .end local v3    # "j":I
    .restart local v4    # "plmn":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_0
.end method

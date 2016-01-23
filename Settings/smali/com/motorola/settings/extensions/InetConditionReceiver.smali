.class public Lcom/motorola/settings/extensions/InetConditionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InetConditionReceiver.java"


# instance fields
.field private final VERBOSE_ENABLED:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const-string v0, "IntPrefSetting"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    .line 34
    iget-boolean v0, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "IntPrefSetting"

    const-string v1, "InetConditionReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method private showPrefSetting(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iget-boolean v1, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "IntPrefSetting"

    const-string v2, "Show Dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/settings/extensions/InternetPrefSetting;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v5, :cond_0

    .line 43
    const-string v5, "IntPrefSetting"

    const-string v6, "On Receive BR"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    const-string v5, "com.motorola.internal.intent.action.INETCONDITION_REPORT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 46
    const-string v5, "networkType"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "extraNetworkType":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 49
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 50
    iget-boolean v5, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v5, :cond_1

    .line 51
    const-string v5, "IntPrefSetting"

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const-string v5, "extra_allow_invalidation"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    const-string v5, "extra_response_received"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 59
    .local v3, "extraResponseReceived":Z
    if-eqz v3, :cond_4

    .line 60
    const-string v5, "captivePortal"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 62
    .local v4, "isCaptivePortal":Z
    if-eqz v4, :cond_3

    .line 63
    iget-boolean v5, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v5, :cond_2

    .line 64
    const-string v5, "IntPrefSetting"

    const-string v6, "Captive portal case"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "extraNetworkType":I
    .end local v3    # "extraResponseReceived":Z
    .end local v4    # "isCaptivePortal":Z
    :cond_2
    :goto_0
    return-void

    .line 67
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "extraNetworkType":I
    .restart local v3    # "extraResponseReceived":Z
    .restart local v4    # "isCaptivePortal":Z
    :cond_3
    iget-boolean v5, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v5, :cond_2

    .line 68
    const-string v5, "IntPrefSetting"

    const-string v6, "Internet is working"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    .end local v4    # "isCaptivePortal":Z
    :cond_4
    iget-boolean v5, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v5, :cond_5

    .line 73
    const-string v5, "IntPrefSetting"

    const-string v6, "No Internet"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_5
    invoke-direct {p0, p1}, Lcom/motorola/settings/extensions/InetConditionReceiver;->showPrefSetting(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "extraNetworkType":I
    .end local v3    # "extraResponseReceived":Z
    :cond_6
    iget-boolean v5, p0, Lcom/motorola/settings/extensions/InetConditionReceiver;->VERBOSE_ENABLED:Z

    if-eqz v5, :cond_2

    .line 80
    const-string v5, "IntPrefSetting"

    const-string v6, "Action is not INETCONDITION_REPORT"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/android/settings/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # invokes: Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const-string v4, "wifiP2pInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 95
    .local v1, "wifip2pinfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v1, :cond_3

    iget-boolean v4, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    if-eqz v4, :cond_3

    .line 96
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # setter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mP2pMccMode:Z
    invoke-static {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$102(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    .line 104
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string v5, "wps_push_button"

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 105
    .local v3, "wpsPushPref":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string v5, "wps_pin_entry"

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 106
    .local v2, "wpsPinPref":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # getter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mP2pMccMode:Z
    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 107
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 108
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSelectable(Z)V

    goto :goto_0

    .line 98
    .end local v2    # "wpsPinPref":Landroid/preference/Preference;
    .end local v3    # "wpsPushPref":Landroid/preference/Preference;
    :cond_3
    if-eqz v1, :cond_4

    iget-boolean v4, v1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v4, :cond_4

    .line 99
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # setter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mP2pMccMode:Z
    invoke-static {v4, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$102(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    goto :goto_1

    .line 101
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    # setter for: Lcom/android/settings/wifi/AdvancedWifiSettings;->mP2pMccMode:Z
    invoke-static {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->access$102(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    goto :goto_1

    .line 110
    .restart local v2    # "wpsPinPref":Landroid/preference/Preference;
    .restart local v3    # "wpsPushPref":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 111
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    goto :goto_0
.end method

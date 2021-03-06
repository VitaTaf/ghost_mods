.class public Lcom/android/settings/wifi/OffloadWifiApSelector;
.super Landroid/preference/PreferenceActivity;
.source "OffloadWifiApSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field private mAccessPointsCategory:Landroid/preference/PreferenceCategory;

.field private mDialogFragment:Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string v0, "OffloadWifiApSelector"

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/wifi/OffloadWifiApSelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$1;-><init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/OffloadWifiApSelector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/OffloadWifiApSelector;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V

    return-void
.end method

.method private forget(I)V
    .locals 1
    .param p1, "networkId"    # I

    .prologue
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->saveNetworks()V

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 3
    .param p1, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p2, "edit"    # Z

    .prologue
    invoke-static {p1, p2}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->newInstance(Lcom/android/settings/wifi/AccessPoint;Z)Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialogFragment:Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mDialogFragment:Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "wifiDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/OffloadWifiApSelector$WifiDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startTimer()V
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "optionClickedTime":J
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.dataoffloading.ACTION_UPDATE_TIMESTAMP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    const-string v1, "offloadTimerValue"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->finish()V

    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->TAG:Ljava/lang/String;

    const-string v1, "Finishing activity since Wifi state is no longer enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected handleEvent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->saveNetworks()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->finish()V

    iput-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkInfo:Landroid/net/NetworkInfo;

    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateWifiState(I)V

    goto :goto_0

    :cond_2
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    goto :goto_0

    :cond_3
    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    goto :goto_0

    :cond_5
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "newState"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_6
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "reason":Ljava/lang/String;
    const-string v3, "homekey"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->startTimer()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v2, -0x3

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/OffloadWifiApSelector;->forget(I)V

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_1
    if-ne p2, v4, :cond_0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/settings/wifi/WifiDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-le v2, v3, :cond_2

    const v2, 0x7f090007

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .local v1, "networkId":I
    if-eq v1, v4, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->saveNetworks()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v5, 0x7f060012

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->addPreferencesFromResource(I)V

    const-string v5, "access_points"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "com.android.settings.wifi.ACTION_SELECT_OFFLOAD_WIFIAP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f090006

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->setTitle(I)V

    const v5, 0x7f040034

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->setContentView(I)V

    const-string v5, "nw_finder"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .local v1, "nwFinderPref":Landroid/preference/Preference;
    const v5, 0x7f060026

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setLayoutResource(I)V

    const-string v5, "access_points"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .local v4, "wifiNetworksCategory":Landroid/preference/Preference;
    const-string v5, " "

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v5, 0x7f0f0066

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .local v3, "offloadReminderButton":Landroid/widget/Button;
    const v5, 0x7f0f0067

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/OffloadWifiApSelector;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .local v2, "offloadOffButton":Landroid/widget/Button;
    const v5, 0x7f090005

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSummary(I)V

    new-instance v5, Lcom/android/settings/wifi/OffloadWifiApSelector$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$2;-><init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/settings/wifi/OffloadWifiApSelector$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/OffloadWifiApSelector$3;-><init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v1    # "nwFinderPref":Landroid/preference/Preference;
    .end local v2    # "offloadOffButton":Landroid/widget/Button;
    .end local v3    # "offloadReminderButton":Landroid/widget/Button;
    .end local v4    # "wifiNetworksCategory":Landroid/preference/Preference;
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/OffloadWifiApSelector;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2    # "preference":Landroid/preference/Preference;
    iput-object p2, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/OffloadWifiApSelector;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    .restart local p2    # "preference":Landroid/preference/Preference;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/OffloadWifiApSelector;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->updateAccessPoints()V

    return-void
.end method

.method protected updateAccessPoints()V
    .locals 11

    .prologue
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/OffloadWifiApSelector;->finish()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v9, :cond_2

    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v8

    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .local v7, "result":Landroid/net/wifi/ScanResult;
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v10, "[IBSS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v4, 0x0

    .local v4, "found":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_6
    if-nez v4, :cond_4

    new-instance v9, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v9, p0, v7}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v4    # "found":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .restart local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/android/settings/wifi/OffloadWifiApSelector;->mAccessPointsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

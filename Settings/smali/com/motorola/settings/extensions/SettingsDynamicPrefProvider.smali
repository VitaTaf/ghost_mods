.class public Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;
.super Lcom/motorola/extensions/DynamicPreferenceDataProvider;
.source "SettingsDynamicPrefProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$1;,
        Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;
    }
.end annotation


# instance fields
.field private mWfdStatusListener:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->mWfdStatusListener:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;

    .prologue
    invoke-direct {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->updateWirelessDisplaySummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateWirelessDisplaySummary()Ljava/lang/String;
    .locals 2

    .prologue
    sget v0, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayState:I

    sget v1, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayState:I

    sget v1, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateEnabled:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayMirroringState:I

    sget v1, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOn:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090a4e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "com.motorola.settings.extensions.dynamicprefprovider"

    return-object v0
.end method

.method protected getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "wifi_poor_network_test_pref"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_avoid_bad_connection_enabled"

    invoke-static {v2, v3, v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "wireless_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->updateWirelessDisplaySummary()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected isVisible(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "wireless_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.motorola.wirelessdisplay"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->isVisible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStartMonitor(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v1, "wireless_display"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateChangedAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringStateChangedAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;-><init>(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$1;)V

    iput-object v1, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->mWfdStatusListener:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->mWfdStatusListener:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStopMonitor(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "wireless_display"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->mWfdStatusListener:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected putBoolean(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    const/4 v1, 0x1

    const-string v0, "wifi_poor_network_test_pref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_avoid_bad_connection_enabled"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

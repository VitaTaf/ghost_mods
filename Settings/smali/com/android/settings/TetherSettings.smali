.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/SwitchPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDisplayTetherWarning:Z

.field private mEnableWifiAp:Landroid/preference/SwitchPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherDialog:Z

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/SwitchPreference;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDisplayTetherWarning:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mTetherDialog:Z

    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mTetherDialog:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 9

    .prologue
    const v6, 0x7f09036c

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v3}, Lcom/android/settings/TetherSettings;->updateCustomWifiConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    const v3, 0x10404c0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .local v1, "index":I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provisionApp length should at least be 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3
    .param p0, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "provisionApp":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const v2, 0x7f0904a7

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .local v1, "isSecondaryUser":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1    # "isSecondaryUser":Z
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v1    # "isSecondaryUser":Z
    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private showTetherStartupDialog(I)V
    .locals 3
    .param p1, "tetherType"    # I

    .prologue
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/motorola/settings/TetherDisclaimer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "tetherChoice"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f090113

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v3, 0x7f0904a9

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .local v6, "bluetoothErrored":Z
    move-object/from16 v4, p3

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .local v15, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .local v14, "regex":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v14    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v13    # "len$":I
    .end local v15    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .local v9, "btState":I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090114

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_4
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090113

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .local v7, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_9

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "bluetoothTethered":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    const v17, 0x7f0904ab

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .end local v16    # "summary":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0904aa

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_7
    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0904ae

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0904a9

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .end local v8    # "bluetoothTethered":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0904ad

    invoke-virtual/range {v17 .. v18}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private static updateCustomWifiConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v1

    .local v1, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    move-object v3, p1

    .local v3, "wifiCustomConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    const-string v4, "WifiConfig"

    const-string v5, "updateCustomWifiConfig"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v1}, Lcom/motorola/android/internal/util/CBSLoader;->getTargetContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v4, v2, Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    :cond_0
    return-object v3

    .restart local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TetherSettings"

    const-string v5, "TetherSettings.updateCustomWifiConfig"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .local v6, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v14, 0x1

    .local v14, "usbAvailable":Z
    :goto_0
    const/4 v15, 0x0

    .local v15, "usbError":I
    move-object/from16 v4, p1

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v12, v4, v8

    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v10, :cond_2

    aget-object v11, v5, v7

    .local v11, "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    if-nez v15, :cond_0

    invoke-virtual {v6, v12}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v15

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "regex":Ljava/lang/String;
    .end local v12    # "s":Ljava/lang/String;
    .end local v14    # "usbAvailable":Z
    .end local v15    # "usbError":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v10    # "len$":I
    .restart local v12    # "s":Ljava/lang/String;
    .restart local v14    # "usbAvailable":Z
    .restart local v15    # "usbError":I
    :cond_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_1

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    .local v17, "usbTethered":Z
    move-object/from16 v4, p2

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v9, :cond_6

    aget-object v12, v4, v8

    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v10, :cond_5

    aget-object v11, v5, v7

    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v17, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v11    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_3

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_6
    const/16 v16, 0x0

    .local v16, "usbErrored":Z
    move-object/from16 v4, p3

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v9, v4

    .restart local v9    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    move v8, v7

    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .restart local v8    # "i$":I
    :goto_5
    if-ge v8, v9, :cond_9

    aget-object v12, v4, v8

    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v10, v5

    .restart local v10    # "len$":I
    const/4 v7, 0x0

    .end local v8    # "i$":I
    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v10, :cond_8

    aget-object v11, v5, v7

    .restart local v11    # "regex":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    const/16 v16, 0x1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .end local v11    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7    # "i$":I
    .restart local v8    # "i$":I
    goto :goto_5

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "len$":I
    .end local v12    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0904a3

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c001a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_a

    const/4 v2, 0x6

    .local v2, "DEVICEID_USBDATA":I
    const-string v3, "persist.sprint.dm.status"

    .local v3, "DEVICE_STATE_KEY":Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "sdmstatus":Ljava/lang/String;
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_a

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .local v18, "usbdataDMrestricted":C
    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f090064

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .end local v2    # "DEVICEID_USBDATA":I
    .end local v3    # "DEVICE_STATE_KEY":Ljava/lang/String;
    .end local v13    # "sdmstatus":Ljava/lang/String;
    .end local v18    # "usbdataDMrestricted":C
    :cond_a
    return-void

    :cond_b
    if-eqz v14, :cond_d

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0904a2

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0904a7

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_8

    :cond_d
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0904a7

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0904a4

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0904a5

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    const v0, 0x7f090940

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-static {v0, v1}, Lcom/android/settings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_3

    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_1

    :goto_2
    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .local v0, "index":I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09036c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v0    # "index":I
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mTetherDialog:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v8, "TETHER_TYPE"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    :cond_0
    const v8, 0x7f060041

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    const-string v8, "user"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v11, "no_config_tethering"

    invoke-virtual {v8, v11}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v9, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_2
    const-string v8, "enable_wifi_ap"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    const-string v8, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .local v6, "wifiApSettings":Landroid/preference/Preference;
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .local v3, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v5, v9

    .local v5, "usbAvailable":Z
    :goto_1
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v7, v9

    .local v7, "wifiAvailable":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_7

    move v2, v9

    .local v2, "bluetoothAvailable":Z
    :goto_3
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_8

    new-instance v8, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    :goto_4
    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1070016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0012

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/TetherSettings;->mDisplayTetherWarning:Z

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.motorola.extensions.settings.DYNAMIC_TETHER_SETTINGS_PREFERENCES"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v2    # "bluetoothAvailable":Z
    .end local v5    # "usbAvailable":Z
    .end local v7    # "wifiAvailable":Z
    :cond_5
    move v5, v10

    goto :goto_1

    .restart local v5    # "usbAvailable":Z
    :cond_6
    move v7, v10

    goto :goto_2

    .restart local v7    # "wifiAvailable":Z
    :cond_7
    move v2, v10

    goto :goto_3

    .restart local v2    # "bluetoothAvailable":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .local v4, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5

    :cond_a
    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, "enable":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDisplayTetherWarning:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->showTetherStartupDialog(I)V

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .local v3, "cm":Landroid/net/ConnectivityManager;
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    .local v5, "newState":Z
    if-eqz v5, :cond_2

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mDisplayTetherWarning:Z

    if-eqz v7, :cond_1

    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->showTetherStartupDialog(I)V

    .end local v5    # "newState":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .restart local v5    # "newState":Z
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v8}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .end local v5    # "newState":Z
    :cond_4
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    if-ne p2, v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .local v2, "bluetoothTetherState":Z
    if-eqz v2, :cond_6

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mDisplayTetherWarning:Z

    if-eqz v7, :cond_5

    invoke-direct {p0, v9}, Lcom/android/settings/TetherSettings;->showTetherStartupDialog(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v9}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v9}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    :cond_7
    const/4 v4, 0x0

    .local v4, "errored":Z
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    .local v6, "tethered":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bluetoothIface":Ljava/lang/String;
    if-eqz v0, :cond_8

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v4, 0x1

    :cond_8
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_9

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    :cond_9
    if-eqz v4, :cond_a

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0904ae

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/SwitchPreference;

    const v8, 0x7f0904ad

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .end local v0    # "bluetoothIface":Ljava/lang/String;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v2    # "bluetoothTetherState":Z
    .end local v4    # "errored":Z
    .end local v6    # "tethered":[Ljava/lang/String;
    :cond_b
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v7, :cond_0

    iget-boolean v7, p0, Lcom/android/settings/TetherSettings;->mTetherDialog:Z

    if-nez v7, :cond_0

    iput-boolean v8, p0, Lcom/android/settings/TetherSettings;->mTetherDialog:Z

    invoke-virtual {p0, v8}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-boolean v4, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    if-eqz v1, :cond_0

    const v4, 0x7f090609

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "activity":Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    new-instance v4, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    :cond_3
    new-instance v4, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    goto :goto_0
.end method

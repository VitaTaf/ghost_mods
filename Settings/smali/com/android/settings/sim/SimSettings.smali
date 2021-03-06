.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;,
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static DIALOG_DISABLE_MOBILE_DATA:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCalls:Landroid/telephony/SubscriptionInfo;

.field private mCellularData:Landroid/telephony/SubscriptionInfo;

.field private mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSMS:Landroid/telephony/SubscriptionInfo;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/preference/PreferenceScreen;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    const/16 v0, 0x65

    sput v0, Lcom/android/settings/sim/SimSettings;->DIALOG_DISABLE_MOBILE_DATA:I

    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCellularData:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mCalls:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSMS:Landroid/telephony/SubscriptionInfo;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$3;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateOptionsAfterAPMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAvailableSubInfos()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method private clearHandlerMessages()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private createPreferences()V
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const v5, 0x7f06003c

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    const-string v5, "sim_cards"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .local v1, "numSlots":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, p0, v5, v3, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .local v2, "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    invoke-virtual {v2, p0}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sub-int v5, v0, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->isSubReady(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "simPreference":Lcom/android/settings/sim/SimSettings$SimPreference;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerStateChangeReceivers(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.intent.action.TUNEAWAY_STATE_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.intent.action.DDS_DATA_SWITCH_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->setActivityCallback(Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;)V

    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    .prologue
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a68

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private unregisterStateChangeReceivers(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->setActivityCallback(Lcom/android/settings/sim/addon/SimStateChangeReceiver$ActivityCallback;)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "SimSettings"

    const-string v2, "Receiver is not registered."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateActivitesCategory()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActivitesCategory: mSelectableSubInfos.size(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateConnectionPriorityValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAutoSIMSelection()V

    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method private updateAutoSIMSelection()V
    .locals 4

    .prologue
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "com.motorola.android.providers.userpreferredsim.dynamicsimprovider"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "checkbox_preference"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "dynamic_sim_cards_automatic_sim"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateAvailableSubInfos()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .local v1, "numSlots":I
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/settings/Utils;->isSubReady(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    return-void
.end method

.method private updateCallValues()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .local v1, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .local v0, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    const v3, 0x7f090188

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(I)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090996

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateCellularDataValues()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-virtual {v4, p0}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    const v5, 0x7f090187

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setTitle(I)V

    sget-boolean v4, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateCellularDataValues] mSubInfoList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/settings/Utils;->isSubReady(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "tm":Landroid/telephony/TelephonyManager;
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setChecked(Z)V

    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v2, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setEnabled(Z)V

    return-void

    :cond_1
    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    const v5, 0x7f090997

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setSummary(I)V

    sget-object v4, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private updateConnectionPriorityValues()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setSummaryEntries([Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getTuneAway()V

    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateOptionsAfterAPMode()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .local v0, "status":Z
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->updateOptionsAfterAPMode(Z)V

    return-void
.end method

.method private updateOptionsAfterAPMode(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is AP mode ON? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    const v1, 0x7f090a66

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setSummary(I)V

    sget-object v0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAvailableSubInfos()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    goto :goto_0
.end method

.method private updateSimSlotValues()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "sim_sms"

    invoke-virtual {p0, v4}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .local v0, "simPref":Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->findRecordBySubId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    const v4, 0x7f090189

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setTitle(I)V

    sget-boolean v4, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateSmsValues] mSubInfoList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .local v2, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v2}, Landroid/telephony/SmsManager;->isSMSPromptEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    :cond_1
    const v4, 0x7f090996

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public enableUi()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    :cond_0
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onCreate] mSubInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->createPreferences()V

    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    sput-object v0, Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    const-string v0, "conn_priority"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sim/SimBootReceiver;->cancelNotification(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.extensions.settings.DYNAMIC_SIM_CARDS_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/checkin/SettingsCheckin;->startCheckin(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    invoke-static {}, Lcom/motorola/checkin/SettingsCheckin;->stopCheckin()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->unregisterStateChangeReceivers(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    instance-of v9, p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v9, :cond_3

    const/4 v2, 0x0

    .local v2, "enable":Z
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isPhoneInCall(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090a63

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    const/4 v9, 0x0

    .end local v2    # "enable":Z
    .end local p1    # "preference":Landroid/preference/Preference;
    :goto_0
    return v9

    .restart local v2    # "enable":Z
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    move-object v9, p1

    check-cast v9, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v9}, Lcom/android/settings/sim/SimSettings$SimPreference;->getSubInfoRecord()Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .local v4, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .local v6, "subId":I
    if-eqz v2, :cond_2

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->activateSubId(I)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10, v6}, Lcom/motorola/checkin/SettingsCheckin;->logSimOrDataEvents(Landroid/content/Context;II)V

    :goto_1
    check-cast p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    # getter for: Lcom/android/settings/sim/SimSettings$SimPreference;->mSlotId:I
    invoke-static {p1}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$800(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->setReadyState(IZ)V

    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->showProgressDialog()V

    .end local v2    # "enable":Z
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subId":I
    :cond_1
    :goto_2
    const/4 v9, 0x1

    goto :goto_0

    .restart local v2    # "enable":Z
    .restart local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .restart local v6    # "subId":I
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10, v6}, Lcom/motorola/checkin/SettingsCheckin;->logSimOrDataEvents(Landroid/content/Context;II)V

    goto :goto_1

    .end local v2    # "enable":Z
    .end local v4    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "subId":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    const-string v9, "sim_cellular_data"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v2, 0x0

    .restart local v2    # "enable":Z
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_5

    iget-object v9, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .local v0, "dataSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->enableDataConnectivity()Z

    move-result v5

    .local v5, "status":Z
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    goto :goto_2

    .end local v5    # "status":Z
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090a64

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    const/4 v9, 0x0

    goto :goto_0

    .end local v0    # "dataSubId":I
    :cond_5
    new-instance v9, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-direct {v9, p0}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;-><init>(Lcom/android/settings/sim/SimSettings;)V

    invoke-virtual {v9, p0}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->show(Lcom/android/settings/sim/SimSettings;)V

    goto :goto_2

    .end local v2    # "enable":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    const-string v9, "conn_priority"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "tuneAwaySelection":I
    sget-boolean v9, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "SimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User selected connection priority = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v7, v9}, Landroid/telephony/TelephonyManager;->setTuneAway(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    .end local v8    # "tuneAwaySelection":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v9, "SimSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v8    # "tuneAwaySelection":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .local v2, "isHandled":Z
    instance-of v3, p2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_2

    move-object v3, p2

    check-cast v3, Lcom/android/settings/sim/SimSettings$SimPreference;

    move-object v4, p2

    check-cast v4, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v3, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->createEditDialog(Lcom/android/settings/sim/SimSettings$SimPreference;)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    move v3, v5

    :goto_1
    move v5, v3

    :cond_1
    return v5

    :cond_2
    const-string v3, "sim_cellular_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-eq v4, v3, :cond_1

    :cond_3
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "sim_calls"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_5

    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "sim_sms"

    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne v3, p2, :cond_0

    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onResme] mSubInfoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->registerStateChangeReceivers(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAvailableSubInfos()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->updateOptionsAfterAPMode(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/sim/addon/SimStateChangeReceiver;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->showProgressDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->clearHandlerMessages()V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .local v2, "prefSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .local v1, "pref":Landroid/preference/Preference;
    instance-of v3, v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    .end local v1    # "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->removeDialog()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshUi(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method unlockSim(Landroid/telephony/SubscriptionInfo;)V
    .locals 7
    .param p1, "sir"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .local v2, "slotId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/android/settings/Utils;->getLockReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    .local v1, "reason":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "phoneName"

    const-string v5, "Phone"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ss"

    const-string v5, "LOCKED"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "reason"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    sget-boolean v4, Lcom/android/settings/sim/SimSettings;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "SimSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Broadcasting intent ACTION_SIM_STATE_CHANGED  reason "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for slotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method updateConnectionPriorityStatus(I)V
    .locals 3
    .param p1, "tuneAwayValue"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "summaries":[Ljava/lang/CharSequence;
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->writeConnectionPriority(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mConnPrioPreference:Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/addon/ConnectionPriorityDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

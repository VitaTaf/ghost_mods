.class public Lcom/android/settings/deviceinfo/SimStatus;
.super Landroid/preference/PreferenceActivity;
.source "SimStatus.java"


# instance fields
.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mDefaultText:Ljava/lang/String;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mLatestAreaInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

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

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 120
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$1;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$3;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 479
    new-instance v0, Lcom/android/settings/deviceinfo/SimStatus$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/SimStatus$4;-><init>(Lcom/android/settings/deviceinfo/SimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/SimStatus;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/SimStatus;->saveAreaInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateAreaInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/SimStatus;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/SimStatus;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/SimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/SimStatus;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/SimStatus;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 277
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :cond_0
    return-void
.end method

.method private restoreAreaInfo(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 159
    const-string v0, "SimStatus"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v1, "SimStatus"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore area info for sub id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mLatestAreaInfo:Landroid/util/SparseArray;

    const-string v3, ""

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mLatestAreaInfo:Landroid/util/SparseArray;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private saveAreaInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "SimStatus"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save area info for subId  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mLatestAreaInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object p2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 287
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 288
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    :cond_1
    return-void
.end method

.method private updateAreaInfo()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "latest_area_info"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->restoreAreaInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 314
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 331
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void

    .line 318
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    goto :goto_0

    .line 324
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    goto :goto_0

    .line 327
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0900a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 6

    .prologue
    .line 295
    const/4 v2, 0x0

    .line 296
    .local v2, "networktype":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 297
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 299
    .local v0, "actualDataNetworkType":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    .line 301
    .local v1, "actualVoiceNetworkType":I
    if-eqz v0, :cond_1

    .line 302
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 307
    :cond_0
    :goto_0
    const-string v4, "network_type"

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void

    .line 303
    :cond_1
    if-eqz v1, :cond_0

    .line 304
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updatePhoneInfos()V
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 431
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    if-nez v0, :cond_1

    .line 434
    const-string v1, "SimStatus"

    const-string v2, "Unable to locate a phone object for the given Subscription ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 438
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iput-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 439
    new-instance v1, Lcom/android/settings/deviceinfo/SimStatus$2;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/SimStatus$2;-><init>(Lcom/android/settings/deviceinfo/SimStatus;I)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 401
    const/4 v3, 0x0

    .line 402
    .local v3, "showAreaInfo":Z
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 404
    const-string v4, "br"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    const/4 v3, 0x1

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "rawNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 412
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 413
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    :cond_1
    const-string v4, "number"

    invoke-direct {p0, v4, v0}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "imei":Ljava/lang/String;
    :goto_0
    const-string v4, "imei"

    invoke-direct {p0, v4, v1}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v4, "imei_sv"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    if-nez v3, :cond_2

    .line 423
    const-string v4, "latest_area_info"

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/SimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 425
    :cond_2
    return-void

    .line 417
    .end local v1    # "imei":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 350
    .local v3, "voiceState":I
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "voiceDisplay":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 353
    .local v1, "dataState":I
    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/SimStatus;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "dataDisplay":Ljava/lang/String;
    const-string v4, "service_state"

    const v5, 0x7f090a6a

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/deviceinfo/SimStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    const-string v4, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 364
    :cond_0
    const-string v4, "roaming_state"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0900a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/SimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mLatestAreaInfo:Landroid/util/SparseArray;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    .line 173
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 175
    const v2, 0x7f060019

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->addPreferencesFromResource(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    .line 178
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mDefaultText:Ljava/lang/String;

    .line 180
    const-string v2, "signal_strength"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    .line 182
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 183
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 184
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    :goto_1
    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 190
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 191
    const v2, 0x7f0400be

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->setContentView(I)V

    .line 193
    const v2, 0x1020012

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    .line 194
    const v2, 0x1020013

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TabWidget;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabWidget:Landroid/widget/TabWidget;

    .line 195
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/SimStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mListView:Landroid/widget/ListView;

    .line 197
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 198
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 199
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 201
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 202
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/android/settings/deviceinfo/SimStatus;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 207
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePhoneInfos()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.extensions.settings.DYNAMIC_SIM_STATUS_PREFERENCES"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 266
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/SimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 218
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updatePreference()V

    .line 221
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 222
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/SimStatus;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/SimStatus;->updateDataState()V

    .line 224
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x141

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 232
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 235
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    const-string v3, "br"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    if-nez v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/settings/deviceinfo/SimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/SimStatus;->mShowLatestAreaInfo:Z

    .line 244
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v3, "subscription"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings/deviceinfo/SimStatus;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 233
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    .end local v2    # "subId":I
    :cond_2
    return-void
.end method

.method updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    .line 375
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    .line 376
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 377
    .local v3, "state":I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 379
    .local v0, "r":Landroid/content/res/Resources;
    if-eq v9, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 381
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v2

    .line 385
    .local v2, "signalDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v1

    .line 387
    .local v1, "signalAsu":I
    if-ne v6, v2, :cond_2

    .line 388
    const/4 v2, 0x0

    .line 391
    :cond_2
    if-ne v6, v1, :cond_3

    .line 392
    const/4 v1, 0x0

    .line 395
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/SimStatus;->mSignalStrength:Landroid/preference/Preference;

    const v5, 0x7f090992

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v0, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 398
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "signalAsu":I
    .end local v2    # "signalDbm":I
    .end local v3    # "state":I
    :cond_4
    return-void
.end method

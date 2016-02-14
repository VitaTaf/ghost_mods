.class public Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "MotorolaNetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/MotorolaNetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$LabelShortFormViewListener;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;
    }
.end annotation


# static fields
.field public static final CHATTY:Z

.field public static final DEBUG:Z

.field public static final INFO:Z

.field protected static mDataSubId:I

.field protected static mVoiceSubId:I


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

.field private mActiveSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveSubscriptionsNeedReload:Z

.field private mAirplaneMode:Z

.field private mBluetoothTethered:Z

.field private mCBEnableReceiver:Landroid/content/BroadcastReceiver;

.field private mCBInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

.field private mConnected:Z

.field private final mConnectedTransports:Ljava/util/BitSet;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

.field private mDemoInetCondition:I

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

.field private mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEthernetConnected:Z

.field protected final mHasMobileDataFeature:Z

.field private mHasNoSims:Z

.field private mInetCondition:Z

.field private mLabelShortFormViewListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$LabelShortFormViewListener;",
            ">;"
        }
    .end annotation
.end field

.field mListening:Z

.field private mLocale:Ljava/util/Locale;

.field private final mMobileDataController:Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

.field final mMobileSignalControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPhone:Landroid/telephony/TelephonyManager;

.field private mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field protected final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field protected mWifiConnected:Z

.field protected mWifiEnabled:Z

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x1

    const-string v0, "MotoNetwCtrlr.Chat"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    const-string v0, "MotoNetwCtrlr"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-nez v0, :cond_2

    :goto_1
    sput-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    const-string v0, "MotoNetwCtrlr"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    sput v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    sput v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    const-string v0, "MotoNetwCtrlr"

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->readConfig(Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

    invoke-direct {v7, p1}, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

    invoke-direct {v8, p1}, Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->registerListeners()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p3, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p4, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p5, "subManager"    # Landroid/telephony/SubscriptionManager;
    .param p6, "config"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .param p7, "accessPointController"    # Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;
    .param p8, "mobileDataController"    # Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

    .prologue
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mBluetoothTethered:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEthernetConnected:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnected:Z

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiConnected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptionsNeedReload:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLabelShortFormViewListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCBEnableReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCBInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaNetworkControllerImpl( Constr ) Entered:\n Build Info: \n    fingerprint: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.fingerprint"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\n    display.id: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.display.id"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\n    build.date: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.date"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\n    build.user: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ro.build.user"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaNetworkControllerImpl( Constr ): mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLocale:Ljava/util/Locale;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

    new-instance v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;->setCallback(Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl$Callback;)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;ZLjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateAirplaneMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "MotorolaNetworkControllerImpl( Constr ): Completed "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getSimStateLogString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static synthetic access$2200(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getConnectionStateLogString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getDataActivityLogString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveSubscriptionList(Z)Ljava/util/List;
    .locals 1
    .param p1, "needReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptionsNeedReload:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptions:Ljava/util/List;

    return-object v0
.end method

.method private static getCallStateLogString(I)Ljava/lang/String;
    .locals 6
    .param p0, "callState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v1, "%d=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_0

    const-string v0, "CALL_STATE_IDLE"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne p0, v4, :cond_1

    const-string v0, "CALL_STATE_RINGING"

    goto :goto_0

    :cond_1
    if-ne p0, v5, :cond_2

    const-string v0, "CALL_STATE_OFFHOOK"

    goto :goto_0

    :cond_2
    const-string v0, "-unknown-"

    goto :goto_0
.end method

.method private static getConnectionStateLogString(I)Ljava/lang/String;
    .locals 6
    .param p0, "connectionState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v1, "%d=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "DATA_UNKNOWN"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, "DATA_DISCONNECTED"

    goto :goto_0

    :cond_1
    if-ne p0, v4, :cond_2

    const-string v0, "DATA_CONNECTING"

    goto :goto_0

    :cond_2
    if-ne p0, v5, :cond_3

    const-string v0, "DATA_CONNECTED"

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    const-string v0, "DATA_SUSPENDED"

    goto :goto_0

    :cond_4
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private static getDataActivityLogString(I)Ljava/lang/String;
    .locals 6
    .param p0, "activityStatus"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v1, "%d=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_0

    const-string v0, "DATA_ACTIVITY_NONE"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne p0, v4, :cond_1

    const-string v0, "DATA_ACTIVITY_IN"

    goto :goto_0

    :cond_1
    if-ne p0, v5, :cond_2

    const-string v0, "DATA_ACTIVITY_OUT"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "DATA_ACTIVITY_INOUT"

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string v0, "DATA_ACTIVITY_DORMANT"

    goto :goto_0

    :cond_4
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .locals 6

    .prologue
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "getDataController: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "getDataController: No data sim selected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .local v2, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_3

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "getDataController: mSubscriptionManager.getActiveSubscriptionInfoList() returns: null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "getDataController: Completed: Returns mDefaultSignalController"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    :goto_0
    return-object v3

    .restart local v2    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataController: found active subscription for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    sget v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataController: Completed: Returns SignalController for subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    sget v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    goto :goto_0

    :cond_6
    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataController: Cannot find controller for data sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .restart local v2    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v2, :cond_9

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "getDataController: mSubscriptionManager.getActiveSubscriptionInfoList() returns: null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_7
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "getDataController: Completed: Returns mDefaultSignalController"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    goto/16 :goto_0

    .restart local v2    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .restart local v1    # "info":Landroid/telephony/SubscriptionInfo;
    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataController: found active subscription for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileIconMappingUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_UNKNOWN"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_GSM"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_GPRS"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_EDGE"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_UMTS"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_HSDPA"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_HSUPA"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_HSPA"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_HSPAP"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_LTE"

    goto :goto_0

    :pswitch_c
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_CDMA"

    goto :goto_0

    :pswitch_d
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_1XRTT"

    goto :goto_0

    :pswitch_e
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_EVDO_0"

    goto :goto_0

    :pswitch_f
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_EVDO_A"

    goto :goto_0

    :pswitch_10
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_EVDO_0"

    goto :goto_0

    :pswitch_11
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_EHRPD"

    goto :goto_0

    :pswitch_12
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_TD_SCDMA"

    goto :goto_0

    :pswitch_13
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_IWLAN"

    goto :goto_0

    :pswitch_14
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_DC"

    goto :goto_0

    :pswitch_15
    const-string v0, "UI_MODE_MOBILE_DATATYPE_MAPPING_IDEN"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public static getMobileNetworkTypeMappingIndexShortName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileIconMappingUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UNKNOWN"

    goto :goto_0

    :pswitch_3
    const-string v0, "GSM"

    goto :goto_0

    :pswitch_4
    const-string v0, "GPRS"

    goto :goto_0

    :pswitch_5
    const-string v0, "EDGE"

    goto :goto_0

    :pswitch_6
    const-string v0, "UMTS"

    goto :goto_0

    :pswitch_7
    const-string v0, "HSDPA"

    goto :goto_0

    :pswitch_8
    const-string v0, "HSUPA"

    goto :goto_0

    :pswitch_9
    const-string v0, "HSPA"

    goto :goto_0

    :pswitch_a
    const-string v0, "HSPAP"

    goto :goto_0

    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    :pswitch_c
    const-string v0, "CDMA"

    goto :goto_0

    :pswitch_d
    const-string v0, "1XRTT"

    goto :goto_0

    :pswitch_e
    const-string v0, "EVDO_0"

    goto :goto_0

    :pswitch_f
    const-string v0, "EVDO_A"

    goto :goto_0

    :pswitch_10
    const-string v0, "EVDO_0"

    goto :goto_0

    :pswitch_11
    const-string v0, "EHRPD"

    goto :goto_0

    :pswitch_12
    const-string v0, "TD_SCDMA"

    goto :goto_0

    :pswitch_13
    const-string v0, "IWLAN"

    goto :goto_0

    :pswitch_14
    const-string v0, "DC"

    goto :goto_0

    :pswitch_15
    const-string v0, "IDEN"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public static getMobileRoamingUIMode_Name(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileRoamingUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_MOBILE_ROAMING_UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "UI_MODE_MOBILE_ROAMING_ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_MOBILE_ROAMING_NO_SERVICE"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_MOBILE_ROAMING_HOME_NETWORK"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_MOBILE_ROAMING_HOME_NETWORK_FULLY"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_MOBILE_ROAMING_NORMAL_ROAMING"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_MOBILE_ROAMING_NORMAL_ROAMING_FULLY"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_MOBILE_ROAMING_ERI_ROAMING_NONFLASHING"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_MOBILE_ROAMING_ERI_ROAMING_NONFLASHING_FULLY"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_MOBILE_ROAMING_ERI_ROAMING_FLASH"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_MOBILE_ROAMING_ERI_ROAMING_FLASH_FULLY"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_MOBILE_ROAMING_FEMTOCELL_ROAMING_NONANIMATED"

    goto :goto_0

    :pswitch_c
    const-string v0, "UI_MODE_MOBILE_ROAMING_FEMTOCELL_ROAMING_NONANIMATED_FULLY"

    goto :goto_0

    :pswitch_d
    const-string v0, "UI_MODE_MOBILE_ROAMING_FEMTOCELL_ROAMING_ANIMATED"

    goto :goto_0

    :pswitch_e
    const-string v0, "UI_MODE_MOBILE_ROAMING_FEMTOCELL_ROAMING_ANIMATED_FULLY"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getMobileSignalUIMode_Name(I)Ljava/lang/String;
    .locals 1
    .param p0, "MobileSignalLevelUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_MOBILE_SIGNAL_UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "UI_MODE_MOBILE_SIGNAL_ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_MOBILE_SIGNAL_STATUS_UNKNOWN"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_MOBILE_SIGNAL_EMERGENCY_CALLS_ONLY"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_MOBILE_SIGNAL_DISABLED_AIRPLANE_MODE"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_MOBILE_SIGNAL_NO_SIGNAL"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_MOBILE_SIGNAL_NO_SERVICE"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_MOBILE_SIGNAL_0_OF_4"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_MOBILE_SIGNAL_0_OF_4_FULLY"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_MOBILE_SIGNAL_1_OF_4"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_MOBILE_SIGNAL_1_OF_4_FULLY"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_MOBILE_SIGNAL_2_OF_4"

    goto :goto_0

    :pswitch_c
    const-string v0, "UI_MODE_MOBILE_SIGNAL_2_OF_4_FULLY"

    goto :goto_0

    :pswitch_d
    const-string v0, "UI_MODE_MOBILE_SIGNAL_3_OF_4"

    goto :goto_0

    :pswitch_e
    const-string v0, "UI_MODE_MOBILE_SIGNAL_3_OF_4_FULLY"

    goto :goto_0

    :pswitch_f
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_4"

    goto :goto_0

    :pswitch_10
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_4_FULLY"

    goto :goto_0

    :pswitch_11
    const-string v0, "UI_MODE_MOBILE_SIGNAL_DISABLED_AIRPLANE_MODE_OF_5"

    goto :goto_0

    :pswitch_12
    const-string v0, "UI_MODE_MOBILE_SIGNAL_NO_SIGNAL_OF_5"

    goto :goto_0

    :pswitch_13
    const-string v0, "UI_MODE_MOBILE_SIGNAL_NO_SERVICE_OF_5"

    goto :goto_0

    :pswitch_14
    const-string v0, "UI_MODE_MOBILE_SIGNAL_0_OF_5"

    goto :goto_0

    :pswitch_15
    const-string v0, "UI_MODE_MOBILE_SIGNAL_0_OF_5_FULLY"

    goto :goto_0

    :pswitch_16
    const-string v0, "UI_MODE_MOBILE_SIGNAL_1_OF_5"

    goto :goto_0

    :pswitch_17
    const-string v0, "UI_MODE_MOBILE_SIGNAL_1_OF_5_FULLY"

    goto :goto_0

    :pswitch_18
    const-string v0, "UI_MODE_MOBILE_SIGNAL_2_OF_5"

    goto :goto_0

    :pswitch_19
    const-string v0, "UI_MODE_MOBILE_SIGNAL_2_OF_5_FULLY"

    goto :goto_0

    :pswitch_1a
    const-string v0, "UI_MODE_MOBILE_SIGNAL_3_OF_5"

    goto :goto_0

    :pswitch_1b
    const-string v0, "UI_MODE_MOBILE_SIGNAL_3_OF_5_FULLY"

    goto :goto_0

    :pswitch_1c
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_5"

    goto :goto_0

    :pswitch_1d
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_5_FULLY"

    goto :goto_0

    :pswitch_1e
    const-string v0, "UI_MODE_MOBILE_SIGNAL_5_OF_5"

    goto :goto_0

    :pswitch_1f
    const-string v0, "UI_MODE_MOBILE_SIGNAL_5_OF_5_FULLY"

    goto :goto_0

    :pswitch_20
    const-string v0, "UI_MODE_MOBILE_SIGNAL_DISABLED_AIRPLANE_MODE_OF_6"

    goto :goto_0

    :pswitch_21
    const-string v0, "UI_MODE_MOBILE_SIGNAL_NO_SIGNAL_OF_6"

    goto :goto_0

    :pswitch_22
    const-string v0, "UI_MODE_MOBILE_SIGNAL_NO_SERVICE_OF_6"

    goto :goto_0

    :pswitch_23
    const-string v0, "UI_MODE_MOBILE_SIGNAL_0_OF_6"

    goto :goto_0

    :pswitch_24
    const-string v0, "UI_MODE_MOBILE_SIGNAL_0_OF_6_FULLY"

    goto :goto_0

    :pswitch_25
    const-string v0, "UI_MODE_MOBILE_SIGNAL_2_OF_6"

    goto :goto_0

    :pswitch_26
    const-string v0, "UI_MODE_MOBILE_SIGNAL_2_OF_6_FULLY"

    goto :goto_0

    :pswitch_27
    const-string v0, "UI_MODE_MOBILE_SIGNAL_3_OF_6"

    goto :goto_0

    :pswitch_28
    const-string v0, "UI_MODE_MOBILE_SIGNAL_3_OF_6_FULLY"

    goto :goto_0

    :pswitch_29
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_6"

    goto :goto_0

    :pswitch_2a
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_6_FULLY"

    goto/16 :goto_0

    :pswitch_2b
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_6"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "UI_MODE_MOBILE_SIGNAL_4_OF_6_FULLY"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "UI_MODE_MOBILE_SIGNAL_5_OF_6"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "UI_MODE_MOBILE_SIGNAL_5_OF_6_FULLY"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "UI_MODE_MOBILE_SIGNAL_6_OF_6"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "UI_MODE_MOBILE_SIGNAL_6_OF_6_FULLY"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method

.method public static getMobileSimUIMode_Name(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileSimUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "UI_MODE_MOBILE_SIM_UNINITIALIZED"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_MOBILE_SIM_ICON_OFF"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_MOBILE_SIM_STATUS_UNKNOWN"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_MOBILE_SIM_CARD_IO_ERROR"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_MOBILE_SIM_CARD_IO_ERROR_EXPLICIT"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_MOBILE_SIM_ABSENT"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_MOBILE_SIM_NOT_READY"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_MOBILE_SIM_LOCKED_NO_INDICATOR"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_MOBILE_SIM_LOCKED_COMMON_INDICATOR"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_MOBILE_SIM_LOCKED_PIN_REQUIRED"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_MOBILE_SIM_LOCKED_PUK_REQUIRED"

    goto :goto_0

    :pswitch_c
    const-string v0, "UI_MODE_MOBILE_SIM_LOCKED_NETWORK_OR_PERSO"

    goto :goto_0

    :pswitch_d
    const-string v0, "UI_MODE_MOBILE_SIM_PERM_DISABLED"

    goto :goto_0

    :pswitch_e
    const-string v0, "UI_MODE_MOBILE_SIM_READY"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileTypeAndActivityUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_UNKNOWN"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_DISABLED_ICON_OFF"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_DATA_DISABLED_BY_USER"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_DATA_DISABLED_INTL_ROAMING"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_NOT_CONNECTED"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTING_ICON_OFF"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTING_ATTACHED"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_ICON_OFF"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_VOICE_ICON_OFF"

    goto :goto_0

    :pswitch_c
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_VOICE_CDMA"

    goto :goto_0

    :pswitch_d
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_VOICE_GSM"

    goto :goto_0

    :pswitch_e
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_VOICE_VOLTE"

    goto :goto_0

    :pswitch_f
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_VOICE_VOIP"

    goto :goto_0

    :pswitch_10
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_WIFI_ICON_OFF"

    goto :goto_0

    :pswitch_11
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_SUSPENDED_FOR_WIFI"

    goto :goto_0

    :pswitch_12
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTED_ACTIVITY_OFF"

    goto :goto_0

    :pswitch_13
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTED_DORMANT"

    goto :goto_0

    :pswitch_14
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTED_IDLE"

    goto :goto_0

    :pswitch_15
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTED_IN"

    goto :goto_0

    :pswitch_16
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTED_OUT"

    goto :goto_0

    :pswitch_17
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_CONNECTED_INOUT"

    goto :goto_0

    :pswitch_18
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FULLY_CONNECTED_ACTIVITY_OFF"

    goto :goto_0

    :pswitch_19
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FULLY_CONNECTED_DORMANT"

    goto :goto_0

    :pswitch_1a
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FULLY_CONNECTED_IDLE"

    goto :goto_0

    :pswitch_1b
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FULLY_CONNECTED_IN"

    goto :goto_0

    :pswitch_1c
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FULLY_CONNECTED_OUT"

    goto :goto_0

    :pswitch_1d
    const-string v0, "UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FULLY_CONNECTED_INOUT"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method private static getNetworkTypeLogString(I)Ljava/lang/String;
    .locals 4
    .param p0, "networkType"    # I

    .prologue
    const-string v0, "%d=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "currentContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    if-eqz p1, :cond_0

    const-string v0, "0x%08x=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "( none )"

    goto :goto_0
.end method

.method private static getResourceName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "currentContext"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "var":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, "delim":I
    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "delim":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "var":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .restart local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "(unknown)"

    goto :goto_0

    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    const-string v3, "(none)"

    goto :goto_0
.end method

.method private static getServiceStateLogString(I)Ljava/lang/String;
    .locals 6
    .param p0, "serviceState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v1, "%d=%s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    if-nez p0, :cond_0

    const-string v0, "STATE_IN_SERVICE"

    :goto_0
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne p0, v4, :cond_1

    const-string v0, "STATE_OUT_OF_SERVICE"

    goto :goto_0

    :cond_1
    if-ne p0, v5, :cond_2

    const-string v0, "STATE_EMERGENCY_ONLY"

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_POWER_OFF"

    goto :goto_0

    :cond_3
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private static getSimStateLogString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 4
    .param p0, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const-string v1, "%d=%s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_0

    const-string v0, "IccCardConstants.State.ABSENT"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    const-string v0, "IccCardConstants.State.NOT_READY"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_2

    const-string v0, "IccCardConstants.State.READY"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_3

    const-string v0, "IccCardConstants.State.PIN_REQUIRED"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_4

    const-string v0, "IccCardConstants.State.PUK_REQUIRED"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_5

    const-string v0, "IccCardConstants.State.NETWORK_LOCKED|PERSO_LOCKED"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_6

    const-string v0, "IccCardConstants.State.PERM_DISABLED"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_7

    const-string v0, "IccCardConstants.State.CARD_IO_ERROR"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_8

    const-string v0, "IccCardConstants.State.UNKNOWN"

    goto :goto_0

    :cond_8
    const-string v0, "-unknown-"

    goto :goto_0
.end method

.method public static getWifiActivityUIMode_Name(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileWifiActivityUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_WIFI_ACTIVITY_UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "UI_MODE_WIFI_ACTIVITY_ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_WIFI_ACTIVITY_DISABLED"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_WIFI_ACTIVITY_DISCONNECTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_WIFI_ACTIVITY_IDLE"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_WIFI_ACTIVITY_IDLE_FULLY"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_WIFI_ACTIVITY_IN"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_WIFI_ACTIVITY_IN_FULLY"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_WIFI_ACTIVITY_OUT"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_WIFI_ACTIVITY_OUT_FULLY"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_WIFI_ACTIVITY_INOUT"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_WIFI_ACTIVITY_INOUT_FULLY"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getWifiSignalUIMode_Name(I)Ljava/lang/String;
    .locals 1
    .param p0, "mobileWifiSignalLevelUIMode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "-invalid-"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "UI_MODE_WIFI_SIGNAL_UNINITIALIZED"

    goto :goto_0

    :pswitch_1
    const-string v0, "UI_MODE_WIFI_SIGNAL_ICON_OFF"

    goto :goto_0

    :pswitch_2
    const-string v0, "UI_MODE_WIFI_SIGNAL_DISABLED"

    goto :goto_0

    :pswitch_3
    const-string v0, "UI_MODE_WIFI_SIGNAL_DISCONNECTED"

    goto :goto_0

    :pswitch_4
    const-string v0, "UI_MODE_WIFI_SIGNAL_0_OF_4"

    goto :goto_0

    :pswitch_5
    const-string v0, "UI_MODE_WIFI_SIGNAL_0_OF_4_FULLY"

    goto :goto_0

    :pswitch_6
    const-string v0, "UI_MODE_WIFI_SIGNAL_1_OF_4"

    goto :goto_0

    :pswitch_7
    const-string v0, "UI_MODE_WIFI_SIGNAL_1_OF_4_FULLY"

    goto :goto_0

    :pswitch_8
    const-string v0, "UI_MODE_WIFI_SIGNAL_2_OF_4"

    goto :goto_0

    :pswitch_9
    const-string v0, "UI_MODE_WIFI_SIGNAL_2_OF_4_FULLY"

    goto :goto_0

    :pswitch_a
    const-string v0, "UI_MODE_WIFI_SIGNAL_3_OF_4"

    goto :goto_0

    :pswitch_b
    const-string v0, "UI_MODE_WIFI_SIGNAL_3_OF_4_FULLY"

    goto :goto_0

    :pswitch_c
    const-string v0, "UI_MODE_WIFI_SIGNAL_4_OF_4"

    goto :goto_0

    :pswitch_d
    const-string v0, "UI_MODE_WIFI_SIGNAL_4_OF_4_FULLY"

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private isMobileDataConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoNetwCtrlr"

    const-string v3, "isMobileDataConnected: Entered"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    move-result-object v0

    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v3, "MotoNetwCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMobileDataConnected: Completed: Returns:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    :cond_2
    return v2

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private notifyAllListeners()V
    .locals 4

    .prologue
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "notifyAllListeners: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyListeners()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListeners()V

    goto :goto_0

    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->notifyListeners()V

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "notifyAllListeners: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private notifyListeners()V
    .locals 7

    .prologue
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "notifyListeners: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListeners: notify SB SignalCluster["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] of current values of airplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or noSims="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    const v5, 0x7f020123

    const v6, 0x7f0c0082

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setIsAirplaneMode(ZII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setNoSims(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "signalsChangedLength":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyListeners: notify QS_Tile["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] of current values of airplaneMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or noSims="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onNoSimVisibleChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "notifyListeners: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "notifyMobileDataEnabled: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onMobileDataEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "notifyMobileDataEnabled: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    const-string v5, "pushConnectivityToSignals: Entered"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mInetCondition:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getTransportType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setInetCondition(II)V

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v5, v4

    goto :goto_2

    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getTransportType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->setInetCondition(I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "pushConnectivityToSignals: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method private refreshLocale()V
    .locals 3

    .prologue
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoNetwCtrlr"

    const-string v2, "refreshLocale: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v0, "current":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyAllListeners()V

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoNetwCtrlr"

    const-string v2, "refreshLocale: Completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private registerListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "registerListeners: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->registerListener()V

    goto :goto_0

    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCBEnableReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.motorola.cellbroadcastreceiver.CB_INFO_ON_SYSTEMUI"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "com.motorola.permission.CB_ENABLE"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCBInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateMobileControllers()V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "registerListeners: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private unregisterListeners()V
    .locals 4

    .prologue
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "unregisterListeners: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->unregisterListener()V

    goto :goto_0

    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "unregisterListeners: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MotoNetwCtrlr"

    const-string v5, "updateAirplaneMode: Entered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .local v0, "airplaneMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    if-ne v0, v3, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setAirplaneMode(Z)V

    goto :goto_1

    .end local v0    # "airplaneMode":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_2
    move v0, v3

    goto :goto_0

    .restart local v0    # "airplaneMode":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyListeners()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateAirplaneMode: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private updateConnectivity()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MotoNetwCtrlr"

    const-string v11, "updateConnectivity: Entered"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->clear()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->clear()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v8, v11}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/NetworkCapabilities;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/net/NetworkCapabilities;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .local v6, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_2

    aget v7, v1, v2

    .local v7, "transportType":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v7    # "transportType":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .end local v1    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "nc":Landroid/net/NetworkCapabilities;
    :cond_3
    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v8, :cond_4

    const-string v8, "MotoNetwCtrlr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MotoNetwCtrlr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnected:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mInetCondition:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mBluetoothTethered:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEthernetConnected:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->pushConnectivityToSignals()V

    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "MotoNetwCtrlr"

    const-string v9, "updateConnectivity: Completed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    move v8, v10

    goto :goto_2

    :cond_7
    move v9, v10

    goto :goto_3
.end method

.method private updateMobileControllers()V
    .locals 6

    .prologue
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mListening:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers:  Completed: not listening (return)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .local v2, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptionsNeedReload:Z

    if-nez v2, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers:  subscription list empty"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateNoSims()V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers:  Completed: (updated noSims & returned)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMobileControllers: found active subscription for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_5
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers: adding new subscriptions via setCurrentSubscriptions()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers: updateNoSims given new subscriptions added by setCurrentSubscriptions()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateNoSims()V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "updateMobileControllers: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public addCarrierLabel(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    return-void
.end method

.method public addEmergencyListener(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public addLabelShortFormView(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$LabelShortFormViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$LabelShortFormViewListener;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLabelShortFormViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    .prologue
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "addNetworkSignalChangedCallback: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onNoSimVisibleChanged(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->notifyListeners()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListeners()V

    goto :goto_0

    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "addNetworkSignalChangedCallback: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    .prologue
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MotoNetwCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSignalCluster: Entered: cluster="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setSubs(Ljava/util/List;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    const v3, 0x7f020123

    const v4, 0x7f0c0082

    invoke-interface {p1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setIsAirplaneMode(ZII)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setNoSims(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->notifyListeners()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListeners()V

    goto :goto_0

    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "addSignalCluster: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 35
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "dispatchDemoCommand: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoMode:Z

    if-nez v3, :cond_5

    const-string v3, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "Entering demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->unregisterListeners()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoMode:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mInetCondition:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "dispatchDemoCommand: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_8

    const-string v3, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "Exiting demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateMobileControllers()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v17, "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resetLastState()V

    goto :goto_2

    .end local v17    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->resetLastState()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->registerListeners()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyAllListeners()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    goto :goto_1

    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_2

    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "airplane":Ljava/lang/String;
    if-eqz v16, :cond_9

    const-string v3, "show"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .local v28, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    .local v22, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move/from16 v0, v22

    if-ge v2, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    const v4, 0x7f020123

    const v5, 0x7f0c0082

    move/from16 v0, v28

    invoke-interface {v3, v0, v4, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setIsAirplaneMode(ZII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v2    # "i":I
    .end local v22    # "length":I
    .end local v28    # "show":Z
    :cond_9
    const-string v3, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "fully":Ljava/lang/String;
    if-eqz v19, :cond_b

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoInetCondition:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->setInetCondition(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .restart local v17    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setInetCondition(II)V

    goto :goto_5

    .end local v17    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v20    # "i$":Ljava/util/Iterator;
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    const-string v3, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .local v34, "wifi":Ljava/lang/String;
    if-eqz v34, :cond_d

    const-string v3, "show"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .restart local v28    # "show":Z
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .local v23, "level":Ljava/lang/String;
    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    const-string v3, "null"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, -0x1

    :goto_6
    iput v3, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    if-ltz v3, :cond_f

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    move/from16 v0, v28

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->enabled:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->notifyListeners()V

    .end local v23    # "level":Ljava/lang/String;
    .end local v28    # "show":Z
    :cond_d
    const-string v3, "sims"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .local v29, "sims":Ljava/lang/String;
    if-eqz v29, :cond_12

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .local v27, "num":I
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .local v33, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v32

    .local v32, "start":I
    move/from16 v2, v32

    .restart local v2    # "i":I
    :goto_8
    add-int v3, v32, v27

    if-ge v2, v3, :cond_10

    new-instance v1, Landroid/telephony/SubscriptionInfo;

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    const/4 v15, 0x0

    move v4, v2

    invoke-direct/range {v1 .. v15}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;I)V

    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v10, p0

    move-object v11, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;Landroid/telephony/SubscriptionInfo;)V

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    iput v2, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubId:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "i":I
    .end local v27    # "num":I
    .end local v29    # "sims":Ljava/lang/String;
    .end local v32    # "start":I
    .end local v33    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v23    # "level":Ljava/lang/String;
    .restart local v28    # "show":Z
    :cond_e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_6

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    .end local v23    # "level":Ljava/lang/String;
    .end local v28    # "show":Z
    .restart local v2    # "i":I
    .restart local v27    # "num":I
    .restart local v29    # "sims":Ljava/lang/String;
    .restart local v32    # "start":I
    .restart local v33    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->recalculateEmergency()V

    .end local v2    # "i":I
    .end local v32    # "start":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .local v25, "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    move/from16 v0, v25

    if-ge v2, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    move-object/from16 v0, v33

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setSubs(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v2    # "i":I
    .end local v25    # "n":I
    .end local v27    # "num":I
    .end local v33    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_12
    const-string v3, "nosim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "nosim":Ljava/lang/String;
    if-eqz v26, :cond_13

    const-string v3, "show"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .restart local v28    # "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v25

    .restart local v25    # "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    move/from16 v0, v25

    if-ge v2, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    move/from16 v0, v28

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setNoSims(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .end local v2    # "i":I
    .end local v25    # "n":I
    .end local v28    # "show":Z
    :cond_13
    const-string v3, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .local v24, "mobile":Ljava/lang/String;
    if-eqz v24, :cond_16

    const-string v3, "show"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .restart local v28    # "show":Z
    const-string v3, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .local v18, "datatype":Ljava/lang/String;
    const-string v3, "slot"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "slotString":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v30, 0x0

    .local v30, "slot":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    aget-object v17, v3, v30

    .restart local v17    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    if-eqz v18, :cond_18

    const/4 v4, 0x1

    :goto_c
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    if-eqz v18, :cond_14

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v4, "1x"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    :goto_d
    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    :cond_14
    sget-object v21, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .local v21, "icons":[[I
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "level":Ljava/lang/String;
    if-eqz v23, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v4, "null"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, -0x1

    :goto_e
    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->level:I

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->level:I

    if-ltz v4, :cond_22

    const/4 v4, 0x1

    :goto_f
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    :cond_15
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    move/from16 v0, v28

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListeners()V

    .end local v17    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v18    # "datatype":Ljava/lang/String;
    .end local v21    # "icons":[[I
    .end local v23    # "level":Ljava/lang/String;
    .end local v28    # "show":Z
    .end local v30    # "slot":I
    .end local v31    # "slotString":Ljava/lang/String;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    goto/16 :goto_1

    .restart local v18    # "datatype":Ljava/lang/String;
    .restart local v28    # "show":Z
    .restart local v31    # "slotString":Ljava/lang/String;
    :cond_17
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    goto :goto_b

    .restart local v17    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .restart local v30    # "slot":I
    :cond_18
    const/4 v4, 0x0

    goto :goto_c

    :cond_19
    const-string v4, "3g"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto :goto_d

    :cond_1a
    const-string v4, "4g"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto :goto_d

    :cond_1b
    const-string v4, "e"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto :goto_d

    :cond_1c
    const-string v4, "g"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto :goto_d

    :cond_1d
    const-string v4, "h"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto/16 :goto_d

    :cond_1e
    const-string v4, "lte"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto/16 :goto_d

    :cond_1f
    const-string v4, "roam"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto/16 :goto_d

    :cond_20
    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto/16 :goto_d

    .restart local v21    # "icons":[[I
    .restart local v23    # "level":Ljava/lang/String;
    :cond_21
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v21, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_e

    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_f
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v2, "NetworkController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  - telephony ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  hasVoiceCallingFeature() ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  - Bluetooth ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mBtReverseTethered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  - connectivity ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mConnectedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "  mValidatedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "  mInetCondition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  mAirplaneMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  mLocale="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$AccessPointController;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

    return-object v0
.end method

.method public getConnectedWifiLevel()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->level:I

    return v0
.end method

.method public getMobileDataController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$MobileDataController;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MotorolaMobileDataControllerImpl;

    return-object v0
.end method

.method public getMobileNetworkName()Ljava/lang/String;
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoNetwCtrlr"

    const-string v2, "getMobileNetworkName: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    move-result-object v0

    .local v0, "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v2, "MotoNetwCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileNetworkName: Completed: returns:\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    :goto_1
    return-object v1

    :cond_2
    const-string v1, ""

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method handleConfigurationChanged()V
    .locals 11

    .prologue
    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MotoNetwCtrlr"

    const-string v9, "handleConfigurationChanged: Entered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v3, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v7

    .local v7, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .local v6, "subId":I
    const/4 v5, 0x0

    .local v5, "subContext":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "subConfig":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    iget v8, v0, Landroid/content/res/Configuration;->mcc:I

    iput v8, v1, Landroid/content/res/Configuration;->mcc:I

    iget v8, v0, Landroid/content/res/Configuration;->mnc:I

    iput v8, v1, Landroid/content/res/Configuration;->mnc:I

    const-string v8, "MotoNetwCtrlr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleConfigurationChanged -- no mcc/mnc for sub: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " using mcc/mnc from main context: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MotoNetwCtrlr("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->readConfig(Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)V

    goto/16 :goto_0

    :cond_1
    const-string v8, "MotoNetwCtrlr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleConfigurationChanged -- mcc/mnc for sub: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v8

    iput v8, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v8

    iput v8, v1, Landroid/content/res/Configuration;->mnc:I

    goto :goto_1

    .end local v1    # "configuration":Landroid/content/res/Configuration;
    .end local v3    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v4    # "subConfig":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .end local v5    # "subContext":Landroid/content/Context;
    .end local v6    # "subId":I
    .end local v7    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshLocale()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "MotoNetwCtrlr"

    const-string v9, "handleConfigurationChanged: Completed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "allSubscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "hasCorrectMobileControllers: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCorrectMobileControllers: found active subscription for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const-string v3, "MotoNetwCtrlr"

    const-string v4, "hasCorrectMobileControllers: allSubscriptions has no entries"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "hasCorrectMobileControllers: Completed: Returns:false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return v2

    :cond_3
    const-string v3, "MotoNetwCtrlr"

    const-string v4, "hasCorrectMobileControllers: allSubscriptions == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .restart local v1    # "info":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "hasCorrectMobileControllers: Completed: Returns:false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCorrectMobileControllers: found controller for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_7
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "MotoNetwCtrlr"

    const-string v3, "hasCorrectMobileControllers: Completed: Returns:true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public hasMobileDataFeature()Z
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "hasMobileDataFeature: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMobileDataFeature: Completed: returns:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr"

    const-string v3, "hasVoiceCallingFeature: Entered"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v3, "MotoNetwCtrlr"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVoiceCallingFeature: Completed: returns:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public isActiveSubscriptionId(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mActiveSubscriptionsNeedReload:Z

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getActiveSubscriptionList(Z)Ljava/util/List;

    move-result-object v2

    .local v2, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 7

    .prologue
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "isEmergencyOnly: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "isEmergencyOnly: There are no mobileSignalControllers."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: mVoiceSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: controller.isEmergencyOnly()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "isEmergencyOnly: Completed: returns:false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v3, 0x0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :goto_0
    return v3

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "key":Ljava/lang/Integer;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: mobileSignalControllers has key ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "key":Ljava/lang/Integer;
    :cond_8
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: mVoiceSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invalid, and did not find controller to handle isEmergencyOnly."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    sget v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v4, "MotoNetwCtrlr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: found controller to handle emergencyOnly( mVoiceSubId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ): Completed: returns:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    sget v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    sget v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v3

    goto/16 :goto_0

    :cond_b
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: mVoiceSubId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEmergencyOnly: Cannot find controller for voice sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "isEmergencyOnly: Completed: returns:true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v12, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    sget-boolean v9, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v9, :cond_0

    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: Received intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Action="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_0
    :goto_0
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateConnectivity()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    :cond_1
    :goto_1
    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v8, :cond_2

    const-string v8, "MotoNetwCtrlr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: Completed intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const-string v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "stateExtra":Ljava/lang/String;
    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     new simState=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "stateExtra":Ljava/lang/String;
    :cond_4
    const-string v9, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "subscription"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .local v3, "defaultDataSub":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     new defaultDataSub="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (valid subId)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     new defaultDataSub="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (is NOT valid subId)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "defaultDataSub":I
    :cond_6
    const-string v9, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "subscription"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, "defaultVoiceSub":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     new defaultVoiceSub="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (valid subId)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     new defaultVoiceSub="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (is NOT valid subId)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "defaultVoiceSub":I
    :cond_8
    const-string v9, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     showSpn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "showSpn"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " spn=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "spn"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" showPlmn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "showPlmn"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " plmn=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "plmn"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v1, :cond_a

    .local v1, "airplaneMode":Z
    :goto_2
    const-string v9, "MotoNetwCtrlr"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReveive:     airplaneMode is now ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "airplaneMode":Z
    :cond_a
    move v1, v8

    goto :goto_2

    :cond_b
    const-string v9, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateConnectivity()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    goto/16 :goto_1

    :cond_c
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->handleConfigurationChanged()V

    goto/16 :goto_1

    :cond_d
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshLocale()V

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateAirplaneMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    goto/16 :goto_1

    :cond_e
    const-string v8, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "subscription"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mVoiceSubId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->recalculateEmergency()V

    goto/16 :goto_1

    :cond_f
    const-string v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "subscription"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v2, "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_10
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .restart local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    const-string v8, "subscription"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .local v7, "subId":I
    iget v8, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubId:I

    if-ne v8, v7, :cond_11

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v7    # "subId":I
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateMobileControllers()V

    goto/16 :goto_1

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_13
    const-string v8, "subscription"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .restart local v7    # "subId":I
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_18

    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_14

    const-string v8, "MotoNetwCtrlr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReveive: valid subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_15

    const-string v8, "MotoNetwCtrlr"

    const-string v9, "onReveive: found controller to handle event"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-virtual {v8, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_16
    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_17

    const-string v8, "MotoNetwCtrlr"

    const-string v9, "onReveive: No matching mobile controller found, updateMobileControllers"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateMobileControllers()V

    goto/16 :goto_1

    :cond_18
    sget-boolean v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v8, :cond_19

    const-string v8, "MotoNetwCtrlr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReveive: invalid subId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " assume meant for wifi"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v8, p2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onUserSwitched(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched: Entered: newUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaAccessPointControllerImpl;->onUserSwitched(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateConnectivity()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "onUserSwitched: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onWifiConnectionStateChanged(ZZ)V
    .locals 4
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiConnected"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiEnabled:Z

    if-ne v2, p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiConnected:Z

    if-eq v2, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiEnabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiConnected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiEnabled:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiConnected:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->onWifiConnectionStateChanged(ZZ)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    return-void
.end method

.method recalculateEmergency()V
    .locals 6

    .prologue
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "recalculateEmergency: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    .local v0, "emergencyOnly":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "length":I
    if-nez v2, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "recalculateEmergency: there are no emergency listeners registered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MotoNetwCtrlr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recalculateEmergency: setting mEmergencyListeners["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "].setEmergencyCallsOnly( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$EmergencyListener;->setEmergencyCallsOnly(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->refreshCarrierLabel()V

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MotoNetwCtrlr"

    const-string v4, "recalculateEmergency: Completed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method refreshCarrierLabel()V
    .locals 13

    .prologue
    const v12, 0x7f0c00be

    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MotoNetwCtrlr"

    const-string v11, "refreshCarrierLabel: Entered"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;

    .local v9, "wifiState":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;
    const-string v5, ""

    .local v5, "label":Ljava/lang/String;
    const-string v1, ""

    .local v1, "cellBroadcastMessage":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "cellBroadcastEnabled":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .local v2, "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnected:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-virtual {v2, v5, v10, v11}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getLabel(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnected:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-virtual {v2, v1, v10, v11}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getCellBroadcastMessage(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnected:Z

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-virtual {v2, v0, v10, v11}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getCellBroadcastEnabled(ZZZ)Z

    move-result v0

    goto :goto_0

    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    :cond_1
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mBluetoothTethered:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0c0023

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEthernetConnected:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    const v11, 0x7f0c00ce

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->isEmergencyOnly()Z

    move-result v10

    if-nez v10, :cond_6

    iget-boolean v10, v9, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    if-eqz v10, :cond_5

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v10, :cond_5

    const-string v5, ""

    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v6, :cond_7

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;

    const/4 v11, 0x1

    invoke-interface {v10, v11, v5, v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$CarrierLabelListener;->setCarrierLabel(ILjava/lang/String;ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    .end local v6    # "length":I
    :cond_5
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->isMobileDataConnected()Z

    move-result v10

    if-nez v10, :cond_4

    iget-boolean v10, v9, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiState;->connected:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mBluetoothTethered:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mEthernetConnected:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .restart local v3    # "i":I
    .restart local v6    # "length":I
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLabelShortFormViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_b

    const-string v7, ""

    .local v7, "shortNetworkName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .restart local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    .local v8, "state":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;
    iget-object v10, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v7, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    goto :goto_4

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v11, v11, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v8    # "state":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mLabelShortFormViewListeners:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$LabelShortFormViewListener;

    invoke-interface {v10, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$LabelShortFormViewListener;->setLabelShortFormView(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v7    # "shortNetworkName":Ljava/lang/String;
    :cond_b
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_c

    const-string v10, "MotoNetwCtrlr"

    const-string v11, "refreshCarrierLabel: Completed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "removeNetworkSignalChangedCallback: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "removeNetworkSignalChangedCallback: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method setCurrentSubscriptions(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MotoNetwCtrlr"

    const-string v6, "setCurrentSubscriptions: Entered"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, "length":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setSubs(Ljava/util/List;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_2

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: number of subcriptions = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    new-instance v11, Ljava/util/LinkedHashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-direct {v11, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .local v11, "cachedControllers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "num":I
    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_c

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    .local v10, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v19

    .local v19, "subId":I
    const/4 v3, 0x0

    .local v3, "subContext":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "subConfig":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    .local v13, "configuration":Landroid/content/res/Configuration;
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: sorted by slotIndex: found active subscription for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .local v12, "config":Landroid/content/res/Configuration;
    iget v5, v12, Landroid/content/res/Configuration;->mcc:I

    iput v5, v13, Landroid/content/res/Configuration;->mcc:I

    iget v5, v12, Landroid/content/res/Configuration;->mnc:I

    iput v5, v13, Landroid/content/res/Configuration;->mnc:I

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions -- no mcc/mnc for sub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " using mcc/mnc from main context: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v12    # "config":Landroid/content/res/Configuration;
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v13}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MotoNetwCtrlr("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->readConfig(Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_4

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: mobileSignalController is already cached for subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_6
    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions -- mcc/mnc for sub: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    iput v5, v13, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v5

    iput v5, v13, Landroid/content/res/Configuration;->mnc:I

    goto/16 :goto_2

    :cond_7
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-nez v5, :cond_8

    :cond_8
    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: create new mobileSignalController for subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " slotIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " #_QS_callbacks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;Landroid/telephony/SubscriptionInfo;)V

    .local v2, "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setSubId(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_9

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: mDefaultSignalController is set to subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mListening:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_a

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: register listening for subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->registerListener()V

    goto/16 :goto_3

    :cond_b
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_5

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: not listening for subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
    .end local v3    # "subContext":Landroid/content/Context;
    .end local v4    # "subConfig":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v13    # "configuration":Landroid/content/res/Configuration;
    .end local v19    # "subId":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->recalculateEmergency()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mListening:Z

    if-eqz v5, :cond_f

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    .local v16, "key":Ljava/lang/Integer;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    if-ne v5, v6, :cond_e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_e

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: mDefaultSignalController was on key (subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): reset mDefaultSignalController=null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->unregisterListener()V

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_d

    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCurrentSubscriptions: unregisterListener for key (subId) ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/Integer;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->updateAirplaneMode(Z)V

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "MotoNetwCtrlr"

    const-string v6, "setCurrentSubscriptions: Completed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "setWifiEnabled: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr"

    const-string v1, "setWifiEnabled: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected updateNoSims()V
    .locals 4

    .prologue
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoNetwCtrlr"

    const-string v2, "updateNoSims: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    .local v0, "hasNoSims":Z
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v1, :cond_1

    const-string v1, "MotoNetwCtrlr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNoSims:  mHasMobileDataFeature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasMobileDataFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMobileSignalControllers.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> hasNoSims="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    if-eq v0, v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v1, :cond_2

    const-string v1, "MotoNetwCtrlr"

    const-string v2, "updateNoSims:  sim/no_sim status has changed: update mHasNoSims & notifyListeners."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->notifyListeners()V

    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MotoNetwCtrlr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNoSims: Completed: mHasNoSims="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .end local v0    # "hasNoSims":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

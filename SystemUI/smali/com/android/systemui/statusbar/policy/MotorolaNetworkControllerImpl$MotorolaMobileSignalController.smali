.class public Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
.super Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotorolaMobileSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$StatusBarHandler;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;,
        Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;",
        "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

.field mCurrentContext:Landroid/content/Context;

.field private final mMobileDataEnabledSettingChangedObserver:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;

.field private mMobileDataTypeMappingsHome:[Ljava/lang/String;

.field private mMobileDataTypeMappingsRoam:[Ljava/lang/String;

.field mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneId:I

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlmn:Ljava/lang/String;

.field private final mShortNameSettingChangedObserver:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;

.field private mShowPlmn:Z

.field private mShowSpn:Z

.field private mSpn:Ljava/lang/String;

.field private final mStatusBarHandler:Landroid/os/Handler;

.field mSubId:I

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;Landroid/telephony/SubscriptionInfo;)V
    .locals 7
    .param p1, "currentContext"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p7, "networkController"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
    .param p8, "info"    # Landroid/telephony/SubscriptionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;",
            "Z",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;",
            "Landroid/telephony/SubscriptionInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4437
    .local p5, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;>;"
    .local p6, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotoNetwCtrlrImpl.MotorolaMobileSignalController( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;)V

    .line 4283
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubId:I

    .line 4284
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    .line 4285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    .line 4286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .line 4287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    .line 4313
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    .line 4314
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    .line 4323
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$StatusBarHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    .line 4446
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 4447
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "MotorolaMobileSignalController (Constr) : Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4453
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    .line 4454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    .line 4455
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    .line 4457
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 4458
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .line 4459
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 4460
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 4461
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;

    invoke-virtual {p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4483
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_network_name"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    .line 4491
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 4492
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusBarHandler: ContentObserver: EVENT_DISPLAY_NAME mSettingShortNameAllowedByUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mShortNameSettingChangedObserver:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;

    .line 4509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mShortNameSettingChangedObserver:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$ShortNameSettingChangedObserver;->register()V

    .line 4518
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;-><init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataEnabledSettingChangedObserver:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataEnabledSettingChangedObserver:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MobileDataEnabledSettingChangedObserver;->register()V

    .line 4537
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mapIconSets()V

    .line 4539
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    .line 4541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    iput-boolean p3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    .line 4543
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    .line 4546
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateDataSim()V

    .line 4551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    .line 4554
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->time:J

    .line 4556
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_2

    .line 4557
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_4

    .line 4558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobileSignalController (Constr) : Completed: mCurrentState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    :cond_2
    :goto_1
    return-void

    .line 4483
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 4564
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "MotorolaMobileSignalController (Constr) : Completed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .prologue
    .line 4274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;

    .prologue
    .line 4274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V

    return-void
.end method

.method private doesDisplayDataIcon()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 8819
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 8820
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "doesDisplayDataIcon: Entered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8827
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 8836
    :goto_0
    return v0

    .line 8830
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8831
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 8832
    goto :goto_0

    .line 8836
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLevel(Landroid/telephony/SignalStrength;)I
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 7676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoLteOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7677
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 7678
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel: using Lte level: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7683
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 7707
    :goto_0
    return v0

    .line 7684
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7685
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 7686
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel: using CDMA level: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7691
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    .line 7692
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceGOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7693
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_4

    .line 7694
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel: using Gsm level: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7699
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0

    .line 7701
    :cond_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_6

    .line 7702
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel: using active-radio level: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7707
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5709
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 5710
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "hasDataService: Entered"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5715
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_6

    .line 5724
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5759
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_1

    .line 5760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "hasDataService: Completed: (switch default) returns: true (NOTE!)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 5773
    :goto_0
    return v0

    .line 5727
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 5728
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasDataService: Completed: STATE_OUT_OF_SERVICE returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v1

    .line 5732
    goto :goto_0

    .line 5735
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_3

    .line 5736
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasDataService: Completed: STATE_EMERGENCY_ONLY returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 5740
    goto :goto_0

    .line 5743
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_4

    .line 5744
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasDataService: Completed: STATE_POWER_OFF returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 5748
    goto :goto_0

    .line 5751
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_5

    .line 5752
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "hasDataService: Completed: STATE_IN_SERVICE returns: true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    .line 5756
    goto :goto_0

    .line 5768
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_7

    .line 5769
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasDataService: Completed: mServiceState==null returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    .line 5773
    goto :goto_0

    .line 5724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasService()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5581
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "hasService: Entered"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_6

    .line 5596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5617
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 5618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasService: Completed: Returns: true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v2, v1

    .line 5631
    :cond_2
    :goto_0
    return v2

    .line 5599
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 5600
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "hasService: Completed: Returns: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5608
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 5609
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasService: Completed: Returns: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5614
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 5609
    goto :goto_1

    :cond_5
    move v1, v2

    .line 5614
    goto :goto_2

    .line 5626
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 5627
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "hasService: Completed: mServiceState is null, Returns: false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasVoiceService()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5637
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5638
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "hasVoiceService: Entered"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_6

    .line 5652
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5688
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_1

    .line 5689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasVoiceService: Completed: (switch default) returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 5702
    :goto_0
    return v0

    .line 5654
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_2

    .line 5655
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasVoiceService: Completed: STATE_POWER_OFF returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v1

    .line 5659
    goto :goto_0

    .line 5662
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_3

    .line 5663
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasVoiceService: Completed: STATE_OUT_OF_SERVICE returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v1

    .line 5667
    goto :goto_0

    .line 5670
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_4

    .line 5671
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "hasVoiceService: Completed: STATE_EMERGENCY_ONLY returns: true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v2

    .line 5675
    goto :goto_0

    .line 5678
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_5

    .line 5679
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "hasVoiceService: Completed: STATE_IN_SERVICE returns: true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    .line 5683
    goto :goto_0

    .line 5697
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_7

    .line 5698
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "hasVoiceService: Completed: mServiceState==null returns: false"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    .line 5702
    goto :goto_0

    .line 5652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isAirplaneMode()Z
    .locals 3

    .prologue
    .line 4897
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 4898
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotorolaMobileSignalController.isAirplaneMode(): mCurrentState.airplaneMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4904
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    return v0
.end method

.method private isCdma()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5779
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5780
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "isCdma: Entered"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5787
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 5788
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCdma: Completed: Returns: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5871
    :cond_2
    :goto_1
    return v3

    :cond_3
    move v2, v4

    .line 5788
    goto :goto_0

    :cond_4
    move v3, v4

    .line 5797
    goto :goto_1

    .line 5810
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v3

    .line 5815
    .local v0, "isCdma":Z
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_9

    .line 5816
    if-eqz v0, :cond_7

    .line 5817
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5818
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "isCdma: Completed: Returns: true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "isCdma":Z
    :cond_6
    move v0, v4

    .line 5810
    goto :goto_2

    .line 5824
    .restart local v0    # "isCdma":Z
    :cond_7
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 5825
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "isCdma: Completed: Returns: false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v3, v4

    .line 5829
    goto :goto_1

    .line 5834
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 5835
    .local v1, "tech":I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_a

    const/16 v2, 0x8

    if-le v1, v2, :cond_c

    :cond_a
    const/16 v2, 0xc

    if-eq v1, v2, :cond_c

    const/16 v2, 0xd

    if-eq v1, v2, :cond_c

    if-eqz v1, :cond_b

    const/16 v2, 0xe

    if-ne v1, v2, :cond_d

    :cond_b
    if-eqz v0, :cond_d

    .line 5859
    :cond_c
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5860
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "isCdma: Completed: Returns: true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5866
    :cond_d
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 5867
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "isCdma: Completed: Returns: false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v3, v4

    .line 5871
    goto :goto_1
.end method

.method private isConfigMobileDataTypeShowDataDisabledIcon()Z
    .locals 4

    .prologue
    .line 8791
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 8792
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isConfigMobileDataTypeShowDataDisabledIcon: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8797
    :cond_0
    const/4 v0, 0x0

    .line 8798
    .local v0, "returnValue":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8799
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3002(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;Z)Z

    .line 8803
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    .line 8805
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 8806
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConfigMobileDataTypeShowDataDisabledIcon: Completed: mConfigShowDataDisabledIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", returnValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8813
    :cond_2
    return v0
.end method

.method private isConnectingOrAttachedMobileDataTypeIconShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 8763
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 8764
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isConnectingOrAttachedMobileDataTypeIconShown: Entered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8769
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    .line 8776
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8784
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 8776
    goto :goto_0

    :cond_2
    move v0, v1

    .line 8784
    goto :goto_0
.end method

.method private isDisabledMobileDataTypeIconShown()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 8842
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 8843
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v8, "isDisabledMobileDataTypeIconShown: Entered"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8848
    :cond_0
    const/4 v4, 0x0

    .line 8849
    .local v4, "returnValue":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 8850
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isConfigMobileDataTypeShowDataDisabledIcon()Z

    move-result v0

    .line 8851
    .local v0, "displayDataDisabledIcon":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_3

    move v1, v6

    .line 8858
    .local v1, "hasVoiceService":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isMobileDataEnabled()Z

    move-result v3

    .line 8859
    .local v3, "isDataEnabled":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-eqz v5, :cond_4

    :cond_1
    move v2, v6

    .line 8869
    .local v2, "isAllowedByWifi":Z
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v5

    if-nez v5, :cond_5

    move v4, v6

    .line 8880
    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 8881
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDisabledMobileDataTypeIconShown: Completed: displayDataDisabledIcon="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " hasVoiceService="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " ( ! isDataEnabled )="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v3, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " isAllowedByWifi="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " ( ! isEmergencyOnly() )="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v9

    if-nez v9, :cond_7

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returnValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8905
    .end local v0    # "displayDataDisabledIcon":Z
    .end local v1    # "hasVoiceService":Z
    .end local v2    # "isAllowedByWifi":Z
    .end local v3    # "isDataEnabled":Z
    :cond_2
    :goto_5
    return v4

    .restart local v0    # "displayDataDisabledIcon":Z
    :cond_3
    move v1, v7

    .line 8851
    goto/16 :goto_0

    .restart local v1    # "hasVoiceService":Z
    .restart local v3    # "isDataEnabled":Z
    :cond_4
    move v2, v7

    .line 8859
    goto :goto_1

    .restart local v2    # "isAllowedByWifi":Z
    :cond_5
    move v4, v7

    .line 8869
    goto :goto_2

    :cond_6
    move v5, v7

    .line 8881
    goto :goto_3

    :cond_7
    move v6, v7

    goto :goto_4

    .line 8898
    .end local v0    # "displayDataDisabledIcon":Z
    .end local v1    # "hasVoiceService":Z
    .end local v2    # "isAllowedByWifi":Z
    .end local v3    # "isDataEnabled":Z
    :cond_8
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 8899
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDisabledMobileDataTypeIconShown: Completed: returnValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private isDisabledMobileDataTypeIconShownForInternationalRoaming()Z
    .locals 4

    .prologue
    .line 8911
    const/4 v0, 0x0

    .line 8912
    .local v0, "returnValue":Z
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 8913
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisabledMobileDataTypeIconShownForInternationalRoaming: NOT IMPLEMENTED, returnValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8922
    :cond_0
    return v0
.end method

.method private isEvdo()Z
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5884
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 5885
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "isEvdo: Entered"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5890
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v1, :cond_2

    .line 5906
    :cond_1
    :goto_0
    return v2

    .line 5891
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 5892
    .local v0, "radioTech":I
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 5893
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEvdo: completed: Returns: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eq v0, v6, :cond_3

    if-eq v0, v7, :cond_3

    if-eq v0, v8, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    :cond_4
    if-eq v0, v6, :cond_5

    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_5

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    move v1, v2

    .line 5893
    goto :goto_1
.end method

.method private isLte()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0xe

    .line 5921
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 5922
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLte: entered/Completed: returns: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-ne v0, v5, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5945
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    if-ne v0, v5, :cond_4

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    .line 5922
    goto :goto_0

    :cond_4
    move v1, v2

    .line 5945
    goto :goto_1
.end method

.method private isMobileDataEnabled()Z
    .locals 3

    .prologue
    .line 8928
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 8929
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "isMobileDataEnabled: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    if-eq v1, v0, :cond_1

    .line 8940
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    .line 8944
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 8945
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMobileDataEnabled: Completed: returns:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8951
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    return v0
.end method

.method private isRoaming()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5986
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 5987
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "isRoaming: entered:"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5992
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5995
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 5996
    .local v0, "iconMode":I
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 5997
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoaming: completed: CDMA: Returns: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    if-eq v1, v2, :cond_4

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_4

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6011
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    if-eq v1, v2, :cond_5

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_5

    .line 6031
    .end local v0    # "iconMode":I
    :cond_3
    :goto_1
    return v2

    .restart local v0    # "iconMode":I
    :cond_4
    move v1, v3

    .line 5997
    goto :goto_0

    :cond_5
    move v2, v3

    .line 6011
    goto :goto_1

    .line 6021
    .end local v0    # "iconMode":I
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 6022
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoaming: completed: non-CDMA: Returns: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_8
    move v2, v3

    goto :goto_1

    :cond_9
    move v1, v3

    .line 6022
    goto :goto_2
.end method

.method private isSimOK()Z
    .locals 4

    .prologue
    .line 8957
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 8958
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isSimOK: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8963
    :cond_0
    const/4 v0, 0x0

    .line 8964
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasDataService()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_2

    .line 8991
    :cond_1
    const/4 v0, 0x1

    .line 8993
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 8994
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimOK: Completed returns:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9000
    :cond_3
    return v0
.end method

.method private isVoice1xOverrideMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7849
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v1, :cond_0

    .line 7850
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoice1xOverrideMode: mPhoneCallState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mDataNetType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isEvdo="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEvdo()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " TelephonyProperties.PROPERTY_SVDO="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ro.ril.svdo"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isLte="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " TelephonyProperties.PROPERTY_SVDATA="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ro.ril.svlte1x"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7884
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    if-eqz v1, :cond_6

    .line 7885
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7890
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 7896
    .local v0, "isCdmaOrLte":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ro.ril.svdo"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ro.ril.svlte1x"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    const/16 v4, 0xe

    if-eq v1, v4, :cond_6

    .line 7937
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 7938
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "isVoice1xOverrideMode: returns true ( use 1X mode )"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7951
    .end local v0    # "isCdmaOrLte":Z
    :cond_4
    :goto_1
    return v2

    :cond_5
    move v0, v3

    .line 7890
    goto :goto_0

    .line 7946
    :cond_6
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 7947
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isVoice1xOverrideMode: returns false ( use active radioTech\'s normal mode )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v3

    .line 7951
    goto :goto_1
.end method

.method private isVoiceGOverrideMode()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7957
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v1, :cond_0

    .line 7958
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceGOverrideMode: Entered: mPhoneCallState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mDataNetType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isGsm="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isCdma="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isLte="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7972
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    if-eqz v1, :cond_4

    .line 7973
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7980
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 7985
    .local v0, "isGsmOrLte":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_4

    .line 8000
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 8004
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isVoiceGOverrideMode: returns false ( feature not enabled )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8018
    .end local v0    # "isGsmOrLte":Z
    :cond_1
    :goto_2
    return v3

    :cond_2
    move v1, v3

    .line 7958
    goto :goto_0

    :cond_3
    move v0, v3

    .line 7980
    goto :goto_1

    .line 8013
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 8014
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isVoiceGOverrideMode: returns false ( use active radioTech\'s normal mode )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private isVoiceVoIPOverrideMode()Z
    .locals 3

    .prologue
    .line 8087
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v0, :cond_0

    .line 8088
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVoiceVoIPOverrideMode:  mPhoneCallState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mDataNetType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isLte="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8098
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    if-eqz v0, :cond_1

    .line 8115
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 8116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "isVoiceVoIPOverrideMode: returns false ( use active radioTech\'s normal mode )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8120
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isVoiceVoLteOverrideMode()Z
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 8024
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v1, :cond_0

    .line 8025
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoiceVoLteOverrideMode:  mPhoneCallState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " mDataNetType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " isLte="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " VoiceUsingLTE="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8046
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    if-eqz v1, :cond_5

    .line 8047
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8048
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 8053
    .local v0, "isLte":Z
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 8067
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 8068
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "isVoiceVoLteOverrideMode: returns true ( use VoLTE mode )"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8081
    .end local v0    # "isLte":Z
    :cond_1
    :goto_3
    return v2

    :cond_2
    move v1, v3

    .line 8025
    goto :goto_0

    :cond_3
    const-string v1, "unknown, serviceStateis null"

    goto :goto_1

    :cond_4
    move v0, v3

    .line 8048
    goto :goto_2

    .line 8076
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 8077
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "isVoiceVoLteOverrideMode: returns false ( use active radioTech\'s normal mode )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v2, v3

    .line 8081
    goto :goto_3
.end method

.method private mapIconSets()V
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 5001
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5002
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "mapIconSets: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5008
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 5012
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/4 v3, 0x5

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5013
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/4 v3, 0x6

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5014
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0xc

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5015
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0xe

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5016
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/4 v3, 0x3

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5017
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x11

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5019
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    if-nez v2, :cond_2

    .line 5022
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5023
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5024
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5025
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5027
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 5037
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 5039
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    if-eqz v2, :cond_1

    .line 5042
    sget-object v0, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 5044
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5045
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5046
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5047
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5049
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    if-eqz v2, :cond_3

    .line 5052
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5057
    :goto_1
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 5058
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "mapIconSets: Completed: Mappings:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5061
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v2, :cond_4

    .line 5063
    const/4 v1, 0x0

    .line 5064
    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 5067
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mapIconSets:    Maps "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5029
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5030
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5031
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5032
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5034
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    goto/16 :goto_0

    .line 5054
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 5077
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileDataTypeMappings()V

    .line 5080
    return-void
.end method

.method private final resolveMobileDataActivityIcons()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9472
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 9473
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "resolveMobileDataActivityIcons: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9478
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSActivityLookup:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    aget v2, v3, v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    .line 9480
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBActivityLookup:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    aget v2, v3, v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    .line 9482
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoActivityDescriptionLookup:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    aget v0, v2, v1

    .line 9484
    .local v0, "msgTextId":I
    if-eqz v0, :cond_4

    .line 9485
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    .line 9492
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 9493
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9494
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    .line 9495
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isAirplaneMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasDataService()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_5

    .line 9519
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 9601
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 9603
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 9609
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9610
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9611
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    .line 9620
    :goto_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 9621
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveMobileDataTypeIcons: Completed: mQSMobileUIModeDataTypeAndActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mQSMobileIconIdDataActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mQSMobileBoolDataActivityIn"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mQSMobileBoolDataActivityOut"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSBMobileUIModeDataTypeAndActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mSBMobileIconIdDataActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9637
    :cond_3
    return-void

    .line 9487
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v2, ""

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    goto/16 :goto_0

    .line 9521
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    packed-switch v1, :pswitch_data_0

    .line 9526
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 9527
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9528
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9536
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 9537
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9538
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9544
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasDataService()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->doesDisplayDataIcon()Z

    move-result v1

    if-nez v1, :cond_8

    .line 9563
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 9565
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9566
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9573
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9574
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9580
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9581
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9585
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9586
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9590
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9591
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9595
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 9596
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    goto/16 :goto_1

    .line 9605
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    goto/16 :goto_2

    .line 9613
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    goto/16 :goto_3

    .line 9616
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    .line 9617
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    goto/16 :goto_3

    .line 9521
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final resolveMobileDataTypeIcons()V
    .locals 7

    .prologue
    .line 9330
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 9331
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileDataTypeIcons: Entered: mQSMobileUIModeDataTypeAndActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mSBMobileUIModeDataTypeAndActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9341
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileDataTypeMappingIndex()V

    .line 9343
    const-string v2, ""

    .line 9344
    .local v2, "selectedIconGroupKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    packed-switch v3, :pswitch_data_0

    .line 9357
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_1

    .line 9358
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileDataTypeIcons: Use home mappings, index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9365
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    aget-object v2, v4, v3

    .line 9387
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_2

    .line 9388
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileDataTypeIcons: selectedIconGroupKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9396
    :cond_2
    const/4 v0, 0x0

    .line 9397
    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 9400
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    if-eqz v3, :cond_8

    .line 9401
    const-string v3, "3G_W"

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 9406
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    aget-object v4, v4, v0

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    .line 9422
    :cond_3
    :goto_2
    const/4 v0, 0x0

    .line 9423
    :goto_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 9426
    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 9431
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    aget-object v4, v4, v0

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    .line 9436
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 9437
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileDataTypeIcons: selected mapping:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9442
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v5, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSDataTypeLookup:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    aget v4, v5, v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    .line 9444
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v5, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBDataTypeLookup:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    aget v4, v5, v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    .line 9446
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget v1, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoDataTypeDescription:I

    .line 9448
    .local v1, "msgTextId":I
    if-eqz v1, :cond_b

    .line 9449
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    .line 9454
    :goto_4
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 9455
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileDataTypeIcons: Completed: mQSMobileUIModeDataTypeAndActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mQSMobileIconIdDataType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mSBMobileUIModeDataTypeAndActivity="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mSBMobileIconIdDataType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9467
    :cond_6
    return-void

    .line 9375
    .end local v0    # "i":I
    .end local v1    # "msgTextId":I
    :pswitch_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_7

    .line 9376
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileDataTypeIcons: Use roaming mappings, index="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9383
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    aget-object v2, v4, v3

    goto/16 :goto_0

    .line 9410
    .restart local v0    # "i":I
    :cond_8
    const-string v3, "G_W"

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 9415
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->WIDE_MOBILE_TYPE_MAPPINGS:[Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    aget-object v4, v4, v0

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    goto/16 :goto_2

    .line 9398
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 9424
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 9451
    .restart local v1    # "msgTextId":I
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_4

    .line 9344
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final resolveMobileDataTypeMappingIndex()V
    .locals 3

    .prologue
    .line 9642
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 9643
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileDataTypeMappingIndex: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9648
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    .line 9651
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 9738
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    .line 9739
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    .line 9741
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 9742
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileDataTypeMappingIndex: Completed: mDataNetType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mMobileUIModeDataType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSBMobileUIModeDataType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mQSMobileUIModeDataType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9760
    :cond_1
    return-void

    .line 9654
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9658
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9662
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9666
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9670
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9674
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9678
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9682
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9686
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9690
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9695
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9699
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9703
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9707
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xe

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9711
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xf

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9715
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9720
    :pswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x11

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9732
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    goto/16 :goto_0

    .line 9651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_11
        :pswitch_e
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_1
        :pswitch_10
    .end packed-switch
.end method

.method private final resolveMobileDataTypeMappings()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 9006
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 9007
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v7, "resolveMobileDataTypeMappings: Entered"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9014
    :cond_0
    const/4 v1, 0x2

    .line 9015
    .local v1, "i":I
    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v6, v6, v9

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 9018
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v9

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9019
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v9

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9016
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9023
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    if-eqz v6, :cond_4

    .line 9025
    const/4 v2, 0x1

    .line 9026
    .local v2, "j":I
    :goto_1
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_4

    .line 9029
    const-string v6, "min3g-w"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9031
    const/4 v1, 0x2

    .line 9032
    :goto_2
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v6, v6, v9

    array-length v6, v6

    if-ge v1, v6, :cond_4

    .line 9035
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 9036
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9037
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9033
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9027
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9046
    .end local v2    # "j":I
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    if-eqz v6, :cond_a

    .line 9048
    const/4 v2, 0x1

    .line 9049
    .restart local v2    # "j":I
    :goto_3
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_a

    .line 9052
    const-string v6, "hspa-dist-w"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 9054
    const/4 v1, 0x2

    .line 9055
    :goto_4
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 9058
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 9059
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9060
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9056
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9064
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 9066
    const/4 v3, 0x1

    .line 9067
    .local v3, "k":I
    :goto_5
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_a

    .line 9070
    const-string v6, "hspap-dist-w"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v3

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 9072
    const/4 v1, 0x2

    .line 9073
    :goto_6
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v6, v6, v3

    array-length v6, v6

    if-ge v1, v6, :cond_a

    .line 9076
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v3

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 9077
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9078
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v3

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9074
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 9068
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 9050
    .end local v3    # "k":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 9089
    .end local v2    # "j":I
    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    if-eqz v6, :cond_d

    .line 9091
    const/4 v2, 0x1

    .line 9092
    .restart local v2    # "j":I
    :goto_7
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_d

    .line 9095
    const-string v6, "4g_for_lte-w"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 9097
    const/4 v1, 0x2

    .line 9098
    :goto_8
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v1, v6, :cond_d

    .line 9101
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 9102
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9103
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_GENERIC:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9099
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 9093
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 9112
    .end local v2    # "j":I
    :cond_d
    const-string v6, "@0"

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 9113
    const/4 v4, 0x0

    .line 9114
    .local v4, "processedHome":Z
    const/4 v5, 0x0

    .line 9116
    .local v5, "processedRoam":Z
    const/4 v2, 0x1

    .line 9117
    .restart local v2    # "j":I
    :goto_9
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_13

    .line 9120
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_e

    .line 9121
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: MotorolaTelephonyIcons.MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION[j][0]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ?== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9128
    :cond_e
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v6, v6, v2

    aget-object v6, v6, v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 9129
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_f

    .line 9130
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: MATCHED: MotorolaTelephonyIcons.MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION[j][0]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ?== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9138
    :cond_f
    const-string v6, "both"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 9141
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_10

    .line 9142
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: Processing both for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9148
    :cond_10
    const/4 v1, 0x2

    .line 9149
    :goto_a
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v1, v6, :cond_12

    .line 9152
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 9153
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9154
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9155
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_11

    .line 9156
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: remapped ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, -0x2

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexShortName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9150
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 9165
    :cond_12
    const/4 v4, 0x1

    .line 9166
    const/4 v5, 0x1

    .line 9167
    if-eqz v4, :cond_16

    if-eqz v5, :cond_16

    .line 9232
    :cond_13
    if-eq v4, v5, :cond_14

    .line 9233
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: \"Carrier Extension Table\" is incorrect for carrier="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", entry for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v4, :cond_1f

    const-string v6, "home"

    :goto_b
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is missing."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9250
    .end local v2    # "j":I
    .end local v4    # "processedHome":Z
    .end local v5    # "processedRoam":Z
    :cond_14
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_20

    .line 9252
    const/4 v1, 0x2

    .line 9253
    :goto_c
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_20

    .line 9256
    const-string v6, "-"

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 9257
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9258
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9254
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 9170
    .restart local v2    # "j":I
    .restart local v4    # "processedHome":Z
    .restart local v5    # "processedRoam":Z
    :cond_16
    const-string v6, "home"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 9173
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_17

    .line 9174
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: Processing home for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9180
    :cond_17
    const/4 v1, 0x2

    .line 9181
    :goto_d
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v1, v6, :cond_19

    .line 9184
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 9185
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9186
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_18

    .line 9187
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: remapped ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, -0x2

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexShortName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9182
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 9196
    :cond_19
    const/4 v4, 0x1

    .line 9197
    if-eqz v4, :cond_1a

    if-nez v5, :cond_13

    .line 9200
    :cond_1a
    const-string v6, "roam"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 9203
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_1b

    .line 9204
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: Processing roam for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9210
    :cond_1b
    const/4 v1, 0x2

    .line 9211
    :goto_e
    sget-object v6, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    if-ge v1, v6, :cond_1d

    .line 9214
    const-string v6, "-"

    sget-object v7, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v7, v7, v2

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 9215
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9216
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_1c

    .line 9217
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveMobileDataTypeMappings: remapped ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, -0x2

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexShortName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->MOBILE_TYPE_AND_ACTIVITY_MAPPINGS_CARRIER_EXTENSION:[[Ljava/lang/String;

    aget-object v8, v8, v2

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9212
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 9226
    :cond_1d
    const/4 v5, 0x1

    .line 9227
    if-eqz v4, :cond_1e

    if-nez v5, :cond_13

    .line 9118
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 9233
    :cond_1f
    const-string v6, "roam"

    goto/16 :goto_b

    .line 9262
    .end local v2    # "j":I
    .end local v4    # "processedHome":Z
    .end local v5    # "processedRoam":Z
    :cond_20
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_22

    .line 9264
    const/4 v1, 0x2

    .line 9265
    :goto_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_22

    .line 9268
    const-string v6, "-"

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    .line 9269
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9266
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 9273
    :cond_22
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_24

    .line 9275
    const/4 v1, 0x2

    .line 9276
    :goto_10
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_24

    .line 9279
    const-string v6, "-"

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 9280
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    add-int/lit8 v7, v1, -0x2

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    aget-object v8, v8, v1

    aput-object v8, v6, v7

    .line 9277
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 9286
    :cond_24
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v6, :cond_29

    .line 9287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9288
    .local v0, "debugString":Ljava/lang/StringBuilder;
    const-string v6, "resolveMobileDataTypeMappings: home: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9290
    const/4 v1, 0x0

    .line 9291
    :goto_11
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_26

    .line 9294
    if-eqz v1, :cond_25

    .line 9295
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9297
    :cond_25
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexShortName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9298
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9299
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsHome:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9292
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 9301
    :cond_26
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v0, v9, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 9307
    const-string v6, "resolveMobileDataTypeMappings: roam: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9309
    const/4 v1, 0x0

    .line 9310
    :goto_12
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_28

    .line 9313
    if-eqz v1, :cond_27

    .line 9314
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9316
    :cond_27
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexShortName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9317
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9318
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mMobileDataTypeMappingsRoam:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9311
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 9320
    :cond_28
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9325
    .end local v0    # "debugString":Ljava/lang/StringBuilder;
    :cond_29
    return-void
.end method

.method private final resolveMobileRoamingUIMode()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, -0x1

    .line 6610
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 6611
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "resolveMobileRoamingUIMode: Entered"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6616
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    .line 6617
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v5, ""

    iput-object v5, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    .line 6618
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isAirplaneMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6623
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6624
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 6625
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "resolveMobileRoamingUIMode: no Service, EmergencyOnly mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6629
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    .line 6906
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v5, Lcom/android/systemui/statusbar/policy/MotorolaPredefStdMappings;->UI_MODE_MOBILE_ROAMING_FORCE_FULLY:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    aget v4, v5, v4

    :goto_1
    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    .line 6916
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    .line 6920
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v5, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->SB_TELEPHONY_ROAMING_INDICATOR_WIDE:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    aget v4, v5, v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    .line 6923
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v5, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->QS_TELEPHONY_ROAMING_INDICATOR_WIDE:[I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    aget v4, v5, v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    .line 6926
    sget-object v4, Lcom/android/systemui/statusbar/policy/MotorolaAccessibilityContentDescriptions;->MOBILE_ROAMING_DESCRIPTION:[I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    aget v0, v4, v3

    .line 6928
    .local v0, "contentDescriptionDataSignalId":I
    if-eqz v0, :cond_20

    .line 6929
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    .line 6938
    :goto_2
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 6939
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveMobileRoamingUIMode: Completed: mMobileUIModeRoaming ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileRoamingUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mSBMobileUIModeRoaming ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileRoamingUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mQSMobileUIModeRoaming ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileRoamingUIMode_Name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mSBMobileIconIdRoaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mQSMobileIconIdRoaming="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mMobileContentDescriptionRoaming=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6956
    :cond_3
    return-void

    .line 6632
    .end local v0    # "contentDescriptionDataSignalId":I
    :cond_4
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 6633
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "resolveMobileRoamingUIMode: no Service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6637
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    .line 6638
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    const v5, 0x7f0c018b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_0

    .line 6644
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v3

    if-nez v3, :cond_b

    .line 6645
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_7

    .line 6646
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "resolveMobileRoamingUIMode: has Service, not CDMA"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6651
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6663
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_8

    .line 6664
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6666
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v4, 0x5

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6669
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_a

    .line 6670
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6672
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v7, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6676
    :cond_b
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_c

    .line 6677
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "resolveMobileRoamingUIMode: has Service, CDMA"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6705
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 6709
    .local v1, "iconIndex":I
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 6713
    .local v2, "iconUIMode":I
    :goto_4
    if-eq v1, v4, :cond_d

    if-ne v2, v4, :cond_15

    .line 6715
    :cond_d
    if-ne v1, v4, :cond_e

    .line 6716
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v5, "resolveMobileRoamingUIMode: getCdmaEriIconIndex returned -1, use isNetworkRoaming not ERI"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6721
    :cond_e
    if-ne v2, v4, :cond_f

    .line 6722
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "resolveMobileRoamingUIMode: getCdmeEriIconUIMode returned -1, use isNetworkRoaming not ERI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6727
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 6739
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_12

    .line 6740
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .end local v1    # "iconIndex":I
    .end local v2    # "iconUIMode":I
    :cond_10
    move v1, v4

    .line 6705
    goto :goto_3

    .restart local v1    # "iconIndex":I
    :cond_11
    move v2, v4

    .line 6709
    goto :goto_4

    .line 6742
    .restart local v2    # "iconUIMode":I
    :cond_12
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v4, 0x5

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6745
    :cond_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_14

    .line 6746
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6748
    :cond_14
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v7, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6753
    :cond_15
    const/4 v3, 0x1

    if-ne v1, v3, :cond_18

    .line 6754
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_16

    .line 6755
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "Cdma ROAMING_INDICATOR_OFF, removing ERI icon"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6759
    :cond_16
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_17

    .line 6760
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6762
    :cond_17
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v7, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6765
    :cond_18
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 6767
    :pswitch_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_19

    .line 6768
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "resolveMobileRoamingUIMode: CDMA normal mode"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6772
    :cond_19
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_1a

    .line 6773
    packed-switch v1, :pswitch_data_1

    .line 6797
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v8, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6776
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v8, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6781
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6786
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6791
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0xa

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6802
    :cond_1a
    packed-switch v1, :pswitch_data_2

    .line 6826
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v9, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6805
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v9, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6810
    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v7, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6815
    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6820
    :pswitch_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0xb

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6833
    :pswitch_9
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v3, :cond_1b

    .line 6834
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "resolveMobileRoamingUIMode: CDMA flashing mode"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    :cond_1b
    if-nez v1, :cond_1c

    const/4 v1, 0x2

    .line 6839
    :cond_1c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v3, :cond_1d

    .line 6840
    packed-switch v1, :pswitch_data_3

    .line 6864
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6843
    :pswitch_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v8, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6848
    :pswitch_b
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6853
    :pswitch_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0x8

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6858
    :pswitch_d
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0xc

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6869
    :cond_1d
    packed-switch v1, :pswitch_data_4

    .line 6893
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6872
    :pswitch_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v9, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6877
    :pswitch_f
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v7, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6882
    :pswitch_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0x9

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6887
    :pswitch_11
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v4, 0xd

    iput v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_0

    .line 6906
    .end local v1    # "iconIndex":I
    .end local v2    # "iconUIMode":I
    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_1

    :cond_1f
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    goto/16 :goto_1

    .line 6934
    .restart local v0    # "contentDescriptionDataSignalId":I
    :cond_20
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    goto/16 :goto_2

    .line 6765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 6773
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 6802
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 6840
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 6869
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private resolveMobileSignalUIMode()V
    .locals 12

    .prologue
    .line 6961
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_0

    .line 6962
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Entered: mSignalStrength="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6969
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    .line 6970
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v7, :cond_2

    .line 6971
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getMaxLevel()I

    move-result v5

    .line 6972
    .local v5, "newMaxSignalLevel":I
    if-lez v5, :cond_1

    .line 6973
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v5, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 6975
    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 6976
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode mMaxSignalLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6982
    .end local v5    # "newMaxSignalLevel":I
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    .line 6983
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x4

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 6985
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    const/4 v8, 0x6

    if-le v7, v8, :cond_4

    .line 6986
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x6

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 6989
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyIconRequiredByCountry()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 7002
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 7003
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v8, "resolveMobileSignalUIMode: show EmergencyOnly icon"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7008
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: isEmergencyOnly="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mConfigShowEmergencyCallsOnlyIcon="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isEmergencyIconRequiredByCountry()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyIconRequiredByCountry()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7019
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x2

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    .line 7020
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 7021
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Emergency Only - mSBMobileIconIdSignal="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mQSMobileIconIdSignal="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Accessibility=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7601
    :cond_7
    :goto_0
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_8

    .line 7602
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: mMobileUIModeSignal="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7609
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v8

    if-eqz v8, :cond_3a

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v8

    if-eqz v8, :cond_39

    sget-object v9, Lcom/android/systemui/statusbar/policy/MotorolaPredefStdMappings;->UI_MODE_MOBILE_SIGNAL_FORCE_FULLY:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    aget v8, v9, v8

    :goto_1
    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    .line 7618
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    .line 7620
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    if-eqz v7, :cond_3b

    .line 7621
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v9, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->SB_TELEPHONY_SIGNAL_STRENGTH_SEPARATED_WIDE:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    aget v8, v9, v8

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    .line 7624
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v9, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_SEPARATED_WIDE:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    aget v8, v9, v8

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    .line 7634
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    .line 7635
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    .line 7637
    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaAccessibilityContentDescriptions;->PHONE_SIGNAL_DESCRIPTION:[I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    aget v1, v8, v7

    .line 7639
    .local v1, "contentDescriptionMobileSignalId":I
    if-eqz v1, :cond_3c

    .line 7640
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    .line 7647
    :goto_3
    sget-object v8, Lcom/android/systemui/statusbar/policy/MotorolaAccessibilityContentDescriptions;->DATA_SIGNAL_DESCRIPTION:[I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    aget v0, v8, v7

    .line 7649
    .local v0, "contentDescriptionDataSignalId":I
    if-eqz v0, :cond_3d

    .line 7650
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    .line 7657
    :goto_4
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 7658
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Completed: mSBMobileIconIdSignal="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mQSMobileIconIdSignal="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Accessibility=\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7669
    :cond_9
    return-void

    .line 7032
    .end local v0    # "contentDescriptionDataSignalId":I
    .end local v1    # "contentDescriptionMobileSignalId":I
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isAirplaneMode()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 7033
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    packed-switch v7, :pswitch_data_0

    .line 7037
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x3

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    .line 7046
    :goto_5
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v7, :cond_7

    .line 7047
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v8, "resolveMobileSignalUIMode:  Service Disabled (AirplaneMode)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7040
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x10

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto :goto_5

    .line 7043
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x1f

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto :goto_5

    .line 7051
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    if-eqz v7, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasDataService()Z

    move-result v7

    if-nez v7, :cond_e

    .line 7058
    :cond_c
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v7, :cond_d

    .line 7059
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v8, "resolveMobileSignalUIMode:  No service"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7063
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    packed-switch v7, :pswitch_data_1

    .line 7067
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x5

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7070
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x12

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7073
    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x21

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7077
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v7, :cond_10

    .line 7078
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_f

    .line 7079
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v8, "resolveMobileSignalUIMode: SignalStrength Service not ready: mSignalStrength == null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7084
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    .line 7085
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    packed-switch v7, :pswitch_data_2

    .line 7089
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x4

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7092
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x11

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7095
    :pswitch_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x20

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7099
    :cond_10
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v7, :cond_11

    .line 7100
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v8, "resolveMobileSignalUIMode: mSignalStrength != null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7107
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    if-eqz v7, :cond_1e

    .line 7112
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    .local v4, "iconLevel":I
    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    .line 7113
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_12

    .line 7114
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: mConfig.alwaysShowCdmaRssi="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " set to getCdmaLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " instead of \"best service\" ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] getLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7161
    :cond_12
    :goto_6
    if-gez v4, :cond_13

    .line 7162
    const/4 v4, 0x0

    .line 7164
    :cond_13
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    if-le v4, v7, :cond_14

    .line 7165
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 7168
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoLteOverrideMode()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v7

    if-nez v7, :cond_35

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v7

    if-nez v7, :cond_35

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1700(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_35

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceGOverrideMode()Z

    move-result v7

    if-nez v7, :cond_35

    .line 7195
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 7196
    .local v2, "currTime":J
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_18

    .line 7197
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Before Smoothing: iconLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " NumBars="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " iconLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  currTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mSignalSmoothingLastIncreaseChangeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v10, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mSignalSmoothingLastDecreaseChangeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v10, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mSignalSmoothingReportedIconLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mSignalSmoothingIsFirstStepInThisDirection="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mConfig.mConfigSignalSmoothingDelayFirstDecrease="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfig.mConfigSignalSmoothingDecreaseInterval="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mConfig.mConfigSignalSmoothingDelayFirstIncrease="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfig.mConfigSignalSmoothingIncreaseInterval="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7223
    :cond_18
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_19

    .line 7225
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 7226
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 7228
    :cond_19
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 7229
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_22

    .line 7231
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7233
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 7234
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 7235
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 7236
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 7237
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7414
    :cond_1a
    :goto_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7415
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_1b

    .line 7416
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: After Smoothing: iconLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " NumBars="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " smoothed iconLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  currTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mSignalSmoothingLastIncreaseChangeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v10, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mSignalSmoothingLastDecreaseChangeTime="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v10, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mSignalSmoothingReportedIconLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mSignalSmoothingIsFirstStepInThisDirection="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mConfig.mConfigSignalSmoothingDelayFirstDecrease="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfig.mConfigSignalSmoothingDecreaseInterval="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n  mConfig.mConfigSignalSmoothingDelayFirstIncrease="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " mConfig.mConfigSignalSmoothingIncreaseInterval="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7453
    .end local v2    # "currTime":J
    :cond_1b
    :goto_8
    if-gez v4, :cond_1c

    .line 7454
    const/4 v4, 0x0

    .line 7456
    :cond_1c
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    if-le v4, v7, :cond_1d

    .line 7458
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 7460
    :cond_1d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    packed-switch v7, :pswitch_data_3

    .line 7464
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v7, :cond_36

    .line 7465
    packed-switch v4, :pswitch_data_4

    goto/16 :goto_0

    .line 7467
    :pswitch_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x6

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7128
    .end local v4    # "iconLevel":I
    :cond_1e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getLevel(Landroid/telephony/SignalStrength;)I

    move-result v4

    .restart local v4    # "iconLevel":I
    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    .line 7132
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-nez v7, :cond_21

    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v7, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v7

    if-nez v7, :cond_21

    :cond_1f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v7

    if-nez v7, :cond_21

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoLteOverrideMode()Z

    move-result v7

    if-nez v7, :cond_21

    :cond_20
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isLte()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceGOverrideMode()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 7147
    :cond_21
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: reportedLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (either getCdmaLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " or \"best service\" ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] getLevel="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v7}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 7238
    .restart local v2    # "currTime":J
    :cond_22
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    if-ge v4, v7, :cond_2b

    .line 7241
    const/16 v6, 0x3e8

    .line 7245
    .local v6, "timerInterval":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    if-eqz v7, :cond_23

    .line 7247
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 7249
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v6

    .line 7250
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 7252
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 7253
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 7255
    :cond_23
    if-eqz v6, :cond_25

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    if-eqz v7, :cond_24

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    sub-long v8, v2, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gez v7, :cond_25

    :cond_24
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    if-nez v7, :cond_27

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    sub-long v8, v2, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_27

    .line 7278
    :cond_25
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v7

    if-nez v7, :cond_29

    .line 7280
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7281
    const/4 v6, 0x0

    .line 7298
    :cond_26
    :goto_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 7300
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 7301
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 7303
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 7305
    :cond_27
    if-eqz v6, :cond_1a

    .line 7307
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_28

    .line 7308
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Smoothing: Decrease timerInterval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7314
    :cond_28
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    int-to-long v10, v6

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 7283
    :cond_29
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    if-lez v7, :cond_2a

    .line 7284
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7285
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v6

    .line 7286
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_26

    .line 7287
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Smoothing: Reported IconLevel decreased to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 7295
    :cond_2a
    const/4 v6, 0x0

    goto/16 :goto_9

    .line 7319
    .end local v6    # "timerInterval":I
    :cond_2b
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    if-le v4, v7, :cond_34

    .line 7322
    const/16 v6, 0x3e8

    .line 7327
    .restart local v6    # "timerInterval":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    if-eqz v7, :cond_2c

    .line 7329
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 7331
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v6

    .line 7332
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 7334
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 7335
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 7337
    :cond_2c
    if-eqz v6, :cond_2e

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    if-eqz v7, :cond_2d

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    sub-long v8, v2, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gez v7, :cond_2e

    :cond_2d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    if-nez v7, :cond_30

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    sub-long v8, v2, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_30

    .line 7360
    :cond_2e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v7

    if-nez v7, :cond_32

    .line 7362
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7363
    const/4 v6, 0x0

    .line 7384
    :cond_2f
    :goto_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 7386
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 7387
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 7389
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 7391
    :cond_30
    if-eqz v6, :cond_1a

    .line 7393
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_31

    .line 7394
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Smoothing: Increase timerInterval="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7400
    :cond_31
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    int-to-long v10, v6

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 7365
    :cond_32
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    if-ge v8, v7, :cond_33

    .line 7370
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 7371
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I

    move-result v6

    .line 7372
    sget-boolean v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v7, :cond_2f

    .line 7373
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveMobileSignalUIMode: Smoothing: Reported IconLevel increased to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 7381
    :cond_33
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 7405
    .end local v6    # "timerInterval":I
    :cond_34
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    if-ne v4, v7, :cond_1a

    .line 7407
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 7408
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-wide v2, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 7412
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    goto/16 :goto_7

    .line 7446
    .end local v2    # "currTime":J
    :cond_35
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 7447
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 7448
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 7449
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 7450
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 7451
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, -0x1

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    goto/16 :goto_8

    .line 7470
    :pswitch_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x8

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7473
    :pswitch_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0xa

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7476
    :pswitch_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0xc

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7479
    :pswitch_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0xe

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7483
    :cond_36
    packed-switch v4, :pswitch_data_5

    goto/16 :goto_0

    .line 7485
    :pswitch_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v8, 0x7

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7488
    :pswitch_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x9

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7491
    :pswitch_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0xb

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7494
    :pswitch_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0xd

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7497
    :pswitch_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0xf

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7503
    :pswitch_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v7, :cond_37

    .line 7504
    packed-switch v4, :pswitch_data_6

    goto/16 :goto_0

    .line 7506
    :pswitch_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x13

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7509
    :pswitch_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x15

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7512
    :pswitch_13
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x17

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7515
    :pswitch_14
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x19

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7518
    :pswitch_15
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x1b

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7521
    :pswitch_16
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x1d

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7525
    :cond_37
    packed-switch v4, :pswitch_data_7

    goto/16 :goto_0

    .line 7527
    :pswitch_17
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x14

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7530
    :pswitch_18
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x16

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7533
    :pswitch_19
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x18

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7536
    :pswitch_1a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x1a

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7539
    :pswitch_1b
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x1c

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7542
    :pswitch_1c
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x1e

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7548
    :pswitch_1d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v7, :cond_38

    .line 7549
    packed-switch v4, :pswitch_data_8

    goto/16 :goto_0

    .line 7551
    :pswitch_1e
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x22

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7554
    :pswitch_1f
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x24

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7557
    :pswitch_20
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x26

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7560
    :pswitch_21
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x28

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7563
    :pswitch_22
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x2a

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7566
    :pswitch_23
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x2c

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7569
    :pswitch_24
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x2e

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7573
    :cond_38
    packed-switch v4, :pswitch_data_9

    goto/16 :goto_0

    .line 7575
    :pswitch_25
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x23

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7578
    :pswitch_26
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x25

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7581
    :pswitch_27
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x27

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7584
    :pswitch_28
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x29

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7587
    :pswitch_29
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x2b

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7590
    :pswitch_2a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x2d

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7593
    :pswitch_2b
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v8, 0x2f

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_0

    .line 7609
    .end local v4    # "iconLevel":I
    :cond_39
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_1

    :cond_3a
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    goto/16 :goto_1

    .line 7627
    :cond_3b
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v9, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->SB_TELEPHONY_SIGNAL_STRENGTH_WIDE:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    aget v8, v9, v8

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    .line 7630
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v9, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH_WIDE:[I

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    aget v8, v9, v8

    iput v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    goto/16 :goto_2

    .line 7645
    .restart local v1    # "contentDescriptionMobileSignalId":I
    :cond_3c
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    goto/16 :goto_3

    .line 7655
    .restart local v0    # "contentDescriptionDataSignalId":I
    :cond_3d
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v8, ""

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    goto/16 :goto_4

    .line 7033
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 7063
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 7085
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 7460
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_10
        :pswitch_1d
    .end packed-switch

    .line 7465
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 7483
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 7504
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 7525
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 7549
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch

    .line 7573
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method private resolveMobileSimUIMode()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 8126
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 8127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileSimUIMode: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    if-eqz v0, :cond_1

    .line 8135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_3

    .line 8136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    .line 8195
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 8196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileSimUIMode: Completed: mSimState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getSimStateLogString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1200(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> mMobileUIModeSim="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSimUIMode_Name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8204
    :cond_2
    return-void

    .line 8137
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_5

    .line 8138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto :goto_0

    .line 8141
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto :goto_0

    .line 8143
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_7

    .line 8144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto :goto_0

    .line 8148
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto :goto_0

    .line 8150
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_8

    .line 8151
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8152
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_b

    .line 8153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 8154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8157
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8160
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8162
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_e

    .line 8163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8167
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8170
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8172
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_11

    .line 8173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 8174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8177
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8180
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8182
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_13

    .line 8183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$2300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8186
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8188
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_14

    .line 8189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0

    .line 8191
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    goto/16 :goto_0
.end method

.method private resolveMobileTypeAndActivityUIMode()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 8261
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 8262
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: Entered: mDataServiceState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " hasDataService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasDataService()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " hasVoiceService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mDataConnectionState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getConnectionStateLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2700(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mDataActivityState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getDataActivityLogString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2800(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8276
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 8281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    if-nez v0, :cond_1

    .line 8282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    .line 8284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    .line 8285
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    .line 8301
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isSimOK()Z

    move-result v0

    if-nez v0, :cond_9

    .line 8308
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 8309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: isEmergencyOnly()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isAirplaneMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isAirplaneMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSimOK()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isSimOK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8320
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 8533
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    if-ne v0, v5, :cond_6

    .line 8534
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    if-nez v0, :cond_2a

    .line 8535
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 8536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: has service: connectionState=NETWORK_TYPE_UNKNOWN or DATA_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8541
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 8717
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    if-ne v0, v5, :cond_7

    .line 8718
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 8719
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Failed to set a mode: show \"icon off\""

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8731
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-object v2, Lcom/android/systemui/statusbar/policy/MotorolaPredefStdMappings;->UI_MODE_MOBILE_TYPE_AND_ACTIVITY_FORCE_FULLY:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    aget v1, v2, v1

    :goto_2
    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    .line 8741
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    .line 8743
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 8744
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: Completed: mMobileUIModeDataTypeAndActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSBMobileUIModeDataTypeAndActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mQSMobileUIModeDataTypeAndActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8754
    :cond_8
    return-void

    .line 8321
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoLteOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8323
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_a

    .line 8324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: isVoiceVoLteOverrideMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoLteOverrideMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8331
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    if-eqz v0, :cond_b

    .line 8332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8335
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xd

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8338
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8339
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 8340
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: isVoice1xOverrideMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoice1xOverrideMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8347
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    if-eqz v0, :cond_e

    .line 8348
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8351
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8354
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceGOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8355
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 8356
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: isVoiceGOverrideMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceGOverrideMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8363
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    if-eqz v0, :cond_11

    .line 8364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8367
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8370
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoIPOverrideMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8371
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_13

    .line 8372
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: isVoiceVoIPOverrideMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isVoiceVoIPOverrideMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8379
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    if-eqz v0, :cond_14

    .line 8380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8383
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xe

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8387
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 8389
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_16

    .line 8390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "Data is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8394
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    if-ne v0, v7, :cond_1a

    .line 8398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    if-eqz v0, :cond_18

    .line 8399
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 8400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is enabled, Mobile connectionState is DATA_SUSPENDED and showSuspended is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8407
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8409
    :cond_18
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_19

    .line 8410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is enabled, Mobile connectionState is DATA_SUSPENDED and showSuspended is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8417
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8420
    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    if-eqz v0, :cond_1e

    .line 8422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    if-eqz v0, :cond_1c

    .line 8425
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 8426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is enabled, wifi is active, show-both is true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8432
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x10

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8437
    :cond_1c
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 8438
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is enabled, wifi is active, show-both is false:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8443
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0xf

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8448
    :cond_1e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_23

    .line 8449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    if-ne v0, v3, :cond_22

    .line 8450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isConnectingOrAttachedMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 8453
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 8454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: GSM|LTE: Data is enabled, wifi is inactive, attached icon feature enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8460
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8463
    :cond_20
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 8464
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: GSM|LTE: Data is enabled, wifi is inactive, attached icon feature disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8470
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8474
    :cond_22
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 8475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: GSM|LTE: Data is enabled, Wifi is inactive: not in attached mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8484
    :cond_23
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 8485
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Is CDMA, Data is enabled, Wifi is inactive: do not check for attached mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8496
    :cond_24
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    .line 8497
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8505
    :cond_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isDisabledMobileDataTypeIconShownForInternationalRoaming()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 8506
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 8507
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is disabled for international roaming:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8512
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8515
    :cond_27
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 8516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: Data is disabled by user setting:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8521
    :cond_28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isDisabledMobileDataTypeIconShown()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 8522
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8525
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_0

    .line 8542
    :cond_2a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasDataService()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    if-eqz v0, :cond_3b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasVoiceService()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 8551
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    packed-switch v0, :pswitch_data_0

    .line 8554
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 8555
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8560
    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8563
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 8564
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8569
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8572
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    .line 8573
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_CONNECTING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8580
    :cond_2e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8584
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    if-eqz v0, :cond_30

    .line 8585
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 8586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_SUSPENDED, showSuspended is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8593
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8595
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 8597
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 8598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_SUSPENDED, showSuspended is disabled: show \"no icon\""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8609
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    packed-switch v0, :pswitch_data_1

    .line 8612
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 8613
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_CONNECTED, DataActivity=DATA_ACTIVITY_DORMANT, inetCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8621
    :cond_31
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v0, :cond_32

    .line 8622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x12

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8625
    :cond_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x18

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8630
    :pswitch_4
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_33

    .line 8631
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_CONNECTED, DataActivity=DATA_ACTIVITY_NONE, inetCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8639
    :cond_33
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v0, :cond_34

    .line 8640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x13

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8643
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x19

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8648
    :pswitch_5
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_35

    .line 8649
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_CONNECTED, DataActivity=DATA_ACTIVITY_IN, inetCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8657
    :cond_35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v0, :cond_36

    .line 8658
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x14

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8661
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x1a

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8666
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_37

    .line 8667
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_CONNECTED, DataActivity=DATA_ACTIVITY_OUT, inetCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8675
    :cond_37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v0, :cond_38

    .line 8676
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x15

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8679
    :cond_38
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x1b

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8684
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 8685
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveMobileTypeAndActivityUIMode: has service: connectionState=DATA_CONNECTED, DataActivity=DATA_ACTIVITY_INOUT, inetCondition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8693
    :cond_39
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetCondition:I

    if-nez v0, :cond_3a

    .line 8694
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x16

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8697
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const/16 v1, 0x1c

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8706
    :cond_3b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3c

    .line 8707
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "resolveMobileTypeAndActivityUIMode: No service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8712
    :cond_3c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_1

    .line 8731
    :cond_3d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_2

    :cond_3e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    goto/16 :goto_2

    .line 8551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 8609
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 6168
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 6169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "updateDataSim: Entered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    :cond_0
    sget v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->mDataSubId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    .line 6195
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    .line 6197
    return-void

    .line 6183
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 6192
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    goto :goto_1
.end method

.method private updateSimState(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6529
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 6530
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "updateSimState: Entered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6535
    :cond_0
    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6538
    .local v2, "stateExtra":Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6541
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6544
    .local v0, "absentReason":Ljava/lang/String;
    const-string v3, "PERM_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6547
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 6596
    .end local v0    # "absentReason":Ljava/lang/String;
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v3, :cond_1

    .line 6597
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSimState: Completed: mSimState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getSimStateLogString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1200(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6605
    :cond_1
    return-void

    .line 6549
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 6551
    .end local v0    # "absentReason":Ljava/lang/String;
    :cond_3
    const-string v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "IMSI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6558
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 6559
    :cond_5
    const-string v3, "LOCKED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6562
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6565
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v3, "PIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6568
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 6569
    :cond_6
    const-string v3, "PUK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6572
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 6573
    :cond_7
    const-string v3, "PERSO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 6577
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 6578
    :cond_8
    const-string v3, "PERM_DISABLED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6581
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 6583
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 6585
    .end local v1    # "lockedReason":Ljava/lang/String;
    :cond_a
    const-string v3, "CARD_IO_ERROR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 6588
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 6589
    :cond_b
    const-string v3, "NOT_READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 6592
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 6594
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0
.end method

.method private final updateTelephony()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9769
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 9770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "updateTelephony: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9777
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    .line 9783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-eqz v0, :cond_1

    .line 9787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_a

    .line 9792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->level:I

    .line 9796
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9797
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->checkLevel(I)V

    .line 9801
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 9804
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    .line 9809
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_c

    :goto_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    .line 9815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    .line 9821
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-eq v1, v0, :cond_3

    .line 9824
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    .line 9825
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->recalculateEmergency()V

    .line 9827
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 9828
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephony: hasService="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->hasService()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mSignalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " level="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->level:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dataConnected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isRoaming()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isRoaming()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isEmergencyOnly()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->isEmergencyOnly()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " iconGroup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9851
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9855
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileSimUIMode()V

    .line 9856
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileRoamingUIMode()V

    .line 9857
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileSignalUIMode()V

    .line 9858
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileTypeAndActivityUIMode()V

    .line 9860
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileDataTypeIcons()V

    .line 9861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileDataActivityIcons()V

    .line 9869
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9876
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    .line 9878
    :cond_6
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 9879
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTelephony: networkName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9887
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    .line 9889
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 9890
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "updateTelephony: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9895
    :cond_8
    return-void

    :cond_9
    move v1, v3

    .line 9777
    goto/16 :goto_0

    .line 9794
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->level:I

    goto/16 :goto_1

    .line 9806
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    goto/16 :goto_2

    :cond_c
    move v2, v3

    .line 9809
    goto/16 :goto_3
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;
    .locals 2

    .prologue
    .line 5572
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5573
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "cleanState: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
    .locals 1

    .prologue
    .line 4274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9939
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->dump(Ljava/io/PrintWriter;)V

    .line 9940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9945
    return-void
.end method

.method public getCellBroadcastEnabled(ZZZ)Z
    .locals 6
    .param p1, "preexistingCellBroadcastEnabled"    # Z
    .param p2, "connected"    # Z
    .param p3, "isMobileLabel"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4821
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v1, :cond_0

    .line 4827
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-nez v1, :cond_2

    .line 4830
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v1, :cond_1

    .line 4861
    .end local p1    # "preexistingCellBroadcastEnabled":Z
    :goto_1
    return p1

    .line 4822
    .restart local p1    # "preexistingCellBroadcastEnabled":Z
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v4, "getCellBroadcastEnabled: Entered"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4831
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellBroadcastEnabled: Completed: mobile not enabled, Returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4840
    :cond_2
    const/4 v0, 0x0

    .line 4848
    .local v0, "mobileCellBroadcastEnabled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsCellBroadcastEnabled:Z

    .line 4850
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v1, :cond_5

    .line 4861
    :goto_2
    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    move p1, v2

    goto :goto_1

    .line 4851
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCellBroadcastEnabled: Completed: Returns: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public getCellBroadcastMessage(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "preexistingCellBroadcastMessage"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "isMobileLabel"    # Z

    .prologue
    .line 4770
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v1, :cond_0

    .line 4776
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-nez v1, :cond_2

    .line 4779
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v1, :cond_1

    :goto_1
    move-object v1, p1

    .line 4812
    :goto_2
    return-object v1

    .line 4771
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "getCellBroadcastMessage: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4780
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "getCellBroadcastMessage: Completed: mobile not enabled, Returns: (empty-string)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4788
    :cond_2
    const-string v0, ""

    .line 4790
    .local v0, "mobileCellBroadcastMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    .line 4792
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 4799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4805
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v1, :cond_4

    .line 4812
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 4806
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellBroadcastMessage: Completed: Returns: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public bridge synthetic getContentDescription()I
    .locals 1

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getContentDescription()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentIconId()I
    .locals 1

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method public getLabel(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p1, "preexistingLabel"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "isMobileLabel"    # Z

    .prologue
    .line 4648
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 4649
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "getLabel: Entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-nez v1, :cond_2

    .line 4657
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4658
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v2, "getLabel: Completed: mobile not enabled, Returns: (empty-string)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    :cond_1
    const-string v1, ""

    .line 4750
    :goto_0
    return-object v1

    .line 4666
    :cond_2
    const-string v0, ""

    .line 4674
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v1, :cond_6

    .line 4677
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    .line 4715
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 4720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4724
    :cond_4
    if-eqz p3, :cond_c

    .line 4727
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 4728
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLabel: Completed: mobile enabled, Returns: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4734
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4679
    :cond_6
    if-nez p2, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-eqz v1, :cond_9

    .line 4684
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-eqz v1, :cond_3

    .line 4690
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    goto :goto_1

    .line 4693
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-eqz v1, :cond_a

    .line 4694
    const-string v0, ""

    goto/16 :goto_1

    .line 4701
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4706
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    const v2, 0x7f0c00be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 4710
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_1

    .line 4736
    :cond_c
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 4737
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLabel: Completed: mobile not enabled, Returns: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v1, :cond_e

    move-object v1, v0

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v1, :cond_f

    .end local v0    # "mobileLabel":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 4737
    .restart local v0    # "mobileLabel":Ljava/lang/String;
    :cond_e
    const-string v1, ""

    goto :goto_2

    .line 4750
    :cond_f
    const-string v0, ""

    goto :goto_3
.end method

.method public bridge synthetic getQsCurrentIconId()I
    .locals 1

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getQsCurrentIconId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTransportType()I
    .locals 1

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->getTransportType()I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 6042
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6044
    .local v0, "action":Ljava/lang/String;
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_1

    .line 6054
    :goto_0
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6057
    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "spn"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "showPlmn"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "plmn"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 6074
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    .line 6160
    :cond_0
    :goto_1
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_d

    .line 6165
    :goto_2
    return-void

    .line 6045
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBroadcast: Entered: Intent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6077
    :cond_2
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6080
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6083
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateSimState(Landroid/content/Intent;)V

    .line 6085
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v6, :cond_3

    .line 6086
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 6087
    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "spn"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "showPlmn"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "plmn"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 6091
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V

    goto :goto_1

    .line 6095
    :cond_4
    const-string v5, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6098
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateDataSim()V

    goto :goto_1

    .line 6102
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    if-eqz v5, :cond_8

    const-string v5, "com.motorola.cellbroadcastreceiver.CB_INFO_ON_SYSTEMUI"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6113
    const-string v5, "enable"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 6114
    .local v3, "enable":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean v3, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsCellBroadcastEnabled:Z

    .line 6115
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-nez v5, :cond_7

    .line 6120
    :goto_3
    if-nez v3, :cond_6

    .line 6121
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v6, ""

    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    .line 6123
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 6116
    :cond_7
    const-string v6, "MotoNetwCtrlr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCBEnableReceiver: onReceive: mIsCellBroadcastActive="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsCellBroadcastEnabled:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 6124
    .end local v3    # "enable":Z
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsCellBroadcastEnabled:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6137
    const/4 v2, 0x0

    .line 6138
    .local v2, "cbMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 6139
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_9

    .line 6140
    const-string v5, "message"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 6141
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 6142
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_b

    .line 6147
    .end local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    :cond_9
    :goto_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v6, ""

    iput-object v6, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    .line 6148
    if-eqz v2, :cond_a

    .line 6149
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object v2, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    .line 6150
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-nez v5, :cond_c

    .line 6156
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_1

    .line 6142
    .restart local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    :cond_b
    const-string v5, "MotoNetwCtrlr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCBInfoReceiver: mCellBroadcastMessage, cbMsg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 6150
    .end local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    :cond_c
    const-string v6, "MotoNetwCtrlr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCBInfoReceiver: mCellBroadcastMessage, Text=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 6161
    .end local v2    # "cbMsg":Ljava/lang/String;
    .end local v4    # "extras":Landroid/os/Bundle;
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v6, "handleBroadcast: Completed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public bridge synthetic isDirty()Z
    .locals 1

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->isDirty()Z

    move-result v0

    return v0
.end method

.method public isEmergencyIconRequiredByCountry()Z
    .locals 13

    .prologue
    .line 7719
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 7720
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v11, "isEmergencyIconRequiredByCountry: Entered"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7725
    :cond_0
    const/4 v8, 0x0

    .line 7731
    .local v8, "returnValue":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 7733
    const-string v3, ""

    .line 7735
    .local v3, "countryIso":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_d

    .line 7736
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 7737
    .local v0, "allCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v0, :cond_c

    .line 7738
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 7739
    .local v2, "cellInfo":Landroid/telephony/CellInfo;
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 7740
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEmergencyIconRequiredByCountry: cellInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7745
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7747
    const/4 v7, -0x1

    .line 7749
    .local v7, "mcc":I
    instance-of v10, v2, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_8

    .line 7750
    check-cast v2, Landroid/telephony/CellInfoGsm;

    .end local v2    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v4

    .line 7751
    .local v4, "gsm":Landroid/telephony/CellIdentityGsm;
    if-eqz v4, :cond_3

    .line 7752
    invoke-virtual {v4}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v7

    .line 7783
    .end local v4    # "gsm":Landroid/telephony/CellIdentityGsm;
    :cond_3
    :goto_0
    if-ltz v7, :cond_1

    const/16 v10, 0x3e7

    if-gt v7, v10, :cond_1

    .line 7788
    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v3

    .line 7789
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 7790
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEmergencyIconRequiredByCountry: set from cellInfo: countryIso="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7816
    .end local v0    # "allCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "mcc":I
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 7818
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 7819
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEmergencyIconRequiredByCountry: countryIso="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7827
    :cond_5
    const-string v10, "au"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 7828
    const/4 v8, 0x1

    .line 7831
    :cond_6
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_7

    .line 7832
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isEmergencyIconRequiredByCountry: Completed: returns:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7842
    .end local v3    # "countryIso":Ljava/lang/String;
    :cond_7
    return v8

    .line 7754
    .restart local v0    # "allCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v2    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v3    # "countryIso":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "mcc":I
    :cond_8
    instance-of v10, v2, Landroid/telephony/CellInfoCdma;

    if-eqz v10, :cond_9

    .line 7755
    check-cast v2, Landroid/telephony/CellInfoCdma;

    .end local v2    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    .line 7756
    .local v1, "cdma":Landroid/telephony/CellIdentityCdma;
    if-eqz v1, :cond_3

    .line 7758
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 7759
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v11, "isEmergencyIconRequiredByCountry: Mcc not supported for CDMA, country unknown"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7765
    .end local v1    # "cdma":Landroid/telephony/CellIdentityCdma;
    .restart local v2    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v10, v2, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_a

    .line 7766
    check-cast v2, Landroid/telephony/CellInfoLte;

    .end local v2    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v6

    .line 7767
    .local v6, "lte":Landroid/telephony/CellIdentityLte;
    if-eqz v6, :cond_3

    .line 7768
    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v7

    goto/16 :goto_0

    .line 7770
    .end local v6    # "lte":Landroid/telephony/CellIdentityLte;
    .restart local v2    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    instance-of v10, v2, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_b

    .line 7771
    check-cast v2, Landroid/telephony/CellInfoWcdma;

    .end local v2    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v9

    .line 7772
    .local v9, "wcdma":Landroid/telephony/CellIdentityWcdma;
    if-eqz v9, :cond_3

    .line 7773
    invoke-virtual {v9}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v7

    goto/16 :goto_0

    .line 7776
    .end local v9    # "wcdma":Landroid/telephony/CellIdentityWcdma;
    .restart local v2    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 7777
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v11, "isEmergencyIconRequiredByCountry: Unknown type of cellInfo"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7801
    .end local v2    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "mcc":I
    :cond_c
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 7802
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v11, "isEmergencyIconRequiredByCountry: Can\'t get cell info: mPhone.getAllCellInfo() returns null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7809
    .end local v0    # "allCellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :cond_d
    sget-boolean v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 7810
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v11, "isEmergencyIconRequiredByCountry: Can\'t get cell info: mPhone == null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isEmergencyOnly()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5967
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 5968
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEmergencyOnly: Entered/Completed: returns: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 5968
    goto :goto_0

    :cond_2
    move v1, v2

    .line 5978
    goto :goto_1
.end method

.method motorolaUpdateNetworkNameShortForm()V
    .locals 4

    .prologue
    .line 6276
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mShowSpn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSpn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mShowPlmn:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->motorolaUpdateNetworkNameShortForm(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 6277
    return-void
.end method

.method motorolaUpdateNetworkNameShortForm(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 9
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 6289
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 6290
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "motorolaUpdateNetworkNameShortForm: Entered: showSpn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " spn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " showPlmn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " plmn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6305
    :cond_0
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    const/4 p3, 0x1

    .line 6316
    :goto_0
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 p1, 0x1

    .line 6337
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 6338
    .local v5, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 6345
    .local v1, "isLongFormPopulated":Z
    const-string v4, ""

    .line 6346
    .local v4, "short_spn":Ljava/lang/String;
    const-string v3, ""

    .line 6347
    .local v3, "short_plmn":Ljava/lang/String;
    const/4 v2, 0x0

    .line 6349
    .local v2, "isShortFormDone":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    if-eqz v6, :cond_f

    .line 6354
    move-object v4, p2

    .line 6355
    move-object v3, p4

    .line 6356
    if-eqz p4, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6361
    const/4 v3, 0x0

    .line 6362
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v7, ""

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6365
    :cond_1
    if-eqz p4, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104039c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 6375
    const/4 v3, 0x0

    .line 6376
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v7, ""

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6379
    :cond_2
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_3

    .line 6385
    const/4 v0, 0x0

    .line 6386
    .local v0, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    .line 6389
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 6394
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    aget-object v4, v6, v7

    .line 6400
    .end local v0    # "i":I
    :cond_3
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_4

    .line 6406
    const/4 v0, 0x0

    .line 6407
    .restart local v0    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 6410
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 6415
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    add-int/lit8 v7, v0, 0x1

    aget-object v3, v6, v7

    .line 6421
    .end local v0    # "i":I
    :cond_4
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 6422
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "motorolaUpdateNetworkNameShortForm:   mConfigNetworkNameShortFormSupported is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6426
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "motorolaUpdateNetworkNameShortForm:  mConfigNetworkNameSpnHasPriority is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6430
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "motorolaUpdateNetworkNameShortForm:   mConfigShowNoServiceText is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$1100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "motorolaUpdateNetworkNameShortForm:   updateNetworkName after fixups: showSpn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " spn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " short_spn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "showPlmn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " plmn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " short_plmn=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6447
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz p1, :cond_6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104039c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v4, :cond_6

    .line 6469
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6470
    const/4 v2, 0x1

    .line 6473
    :cond_6
    if-nez v2, :cond_7

    if-eqz p3, :cond_7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104039c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_7

    .line 6489
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object v3, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6490
    const/4 v2, 0x1

    .line 6492
    :cond_7
    if-nez v2, :cond_8

    if-eqz p1, :cond_8

    if-eqz v4, :cond_8

    .line 6499
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-object v4, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6500
    const/4 v2, 0x1

    .line 6503
    :cond_8
    if-nez v2, :cond_9

    .line 6504
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v7, ""

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 6515
    :cond_9
    :goto_4
    sget-boolean v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v6, :cond_a

    .line 6516
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "motorolaUpdateNetworkNameShortForm: Completed: mNetworkNameShortForm=\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6524
    :cond_a
    return-void

    .line 6305
    .end local v1    # "isLongFormPopulated":Z
    .end local v2    # "isShortFormDone":Z
    .end local v3    # "short_plmn":Ljava/lang/String;
    .end local v4    # "short_spn":Ljava/lang/String;
    .end local v5    # "str":Ljava/lang/StringBuilder;
    :cond_b
    const/4 p3, 0x0

    goto/16 :goto_0

    .line 6316
    :cond_c
    const/4 p1, 0x0

    goto/16 :goto_1

    .line 6387
    .restart local v0    # "i":I
    .restart local v1    # "isLongFormPopulated":Z
    .restart local v2    # "isShortFormDone":Z
    .restart local v3    # "short_plmn":Ljava/lang/String;
    .restart local v4    # "short_spn":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/StringBuilder;
    :cond_d
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_2

    .line 6408
    :cond_e
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_3

    .line 6508
    .end local v0    # "i":I
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    const-string v7, ""

    iput-object v7, v6, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    goto :goto_4
.end method

.method public notifyListeners()V
    .locals 40

    .prologue
    .line 5084
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 5085
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v2, :cond_4

    .line 5086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: Entered mCurrentState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    move-result-object v36

    check-cast v36, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 5100
    .local v36, "icons":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getContentDescription()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v5

    .line 5101
    .local v5, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v36

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v9

    .line 5114
    .local v9, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    if-nez v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/MotorolaTelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    if-ne v2, v3, :cond_5

    :cond_2
    const/16 v38, 0x1

    .line 5125
    .local v38, "showDataIcon":Z
    :goto_1
    if-eqz v38, :cond_6

    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mQsDataTypeLookup:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    aget v6, v3, v2

    .line 5131
    .local v6, "qsTypeIcon":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v37

    .line 5133
    .local v37, "length":I
    const/16 v35, 0x0

    .line 5134
    .local v35, "i":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_19

    .line 5138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 5140
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_3

    .line 5141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling QS ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] onMobileDataSignalChanged (Google api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " enab="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " QsSig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getQsCurrentIconId()I

    move-result v7

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SigDesc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " qsType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " In="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->activityIn:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Out="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->activityOut:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " TypeDesc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NetName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isDataTypeIconWide="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_b

    if-eqz v6, :cond_b

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5193
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    move/from16 v0, v35

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v3, :cond_c

    const/4 v3, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getQsCurrentIconId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->activityIn:Z

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->activityOut:Z

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-eqz v10, :cond_f

    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, v36

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    if-eqz v11, :cond_10

    if-eqz v6, :cond_10

    const/4 v11, 0x1

    :goto_d
    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 5135
    :goto_e
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_3

    .line 5092
    .end local v5    # "contentDescription":Ljava/lang/String;
    .end local v6    # "qsTypeIcon":I
    .end local v9    # "dataContentDescription":Ljava/lang/String;
    .end local v35    # "i":I
    .end local v36    # "icons":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
    .end local v37    # "length":I
    .end local v38    # "showDataIcon":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "notifyListeners: Entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5114
    .restart local v5    # "contentDescription":Ljava/lang/String;
    .restart local v9    # "dataContentDescription":Ljava/lang/String;
    .restart local v36    # "icons":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
    :cond_5
    const/16 v38, 0x0

    goto/16 :goto_1

    .line 5125
    .restart local v38    # "showDataIcon":Z
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 5141
    .restart local v6    # "qsTypeIcon":I
    .restart local v35    # "i":I
    .restart local v37    # "length":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_7

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 5193
    :cond_c
    const/4 v3, 0x0

    goto :goto_9

    :cond_d
    const/4 v7, 0x0

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    goto :goto_c

    :cond_10
    const/4 v11, 0x0

    goto :goto_d

    .line 5231
    :cond_11
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_13

    .line 5232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling QS ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] onMobileDataSignalChanged (Motorola api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Enab="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    :goto_f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Sim="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Sig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Roam="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Act="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " In="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Out="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NetName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescSim="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescSig="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescRoam="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " DescAct="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileNetworkName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileNoSim="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    if-eqz v2, :cond_16

    :cond_12
    const/4 v2, 0x1

    :goto_10
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isDataTypeIconWide="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ShowWhenWifi="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ShowWhenNotEnab="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " IsBidiDirEnab="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " IsMotoWideIcons="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " SubId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " phoneId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    move/from16 v0, v35

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_17

    const/4 v12, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v13, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v14, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v15, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    if-eqz v2, :cond_18

    :cond_14
    const/16 v27, 0x1

    :goto_12
    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubId:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    move/from16 v34, v0

    invoke-interface/range {v10 .. v34}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZZIIIIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZII)V

    goto/16 :goto_e

    .line 5232
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 5315
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_11

    :cond_18
    const/16 v27, 0x0

    goto :goto_12

    .line 5374
    :cond_19
    if-eqz v38, :cond_1b

    move-object/from16 v0, v36

    iget v13, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mDataType:I

    .line 5382
    .local v13, "typeIcon":I
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v39

    .line 5384
    .local v39, "signalClustersLength":I
    const/16 v35, 0x0

    .line 5385
    :goto_14
    move/from16 v0, v35

    move/from16 v1, v39

    if-ge v0, v1, :cond_2e

    .line 5388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 5390
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_1a

    .line 5391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling SB ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] setMobileDataIndicators (Google api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " visible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    :goto_15
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " strengthIcon="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getCurrentIconId()I

    move-result v7

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " typeIcon="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v4, v13}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " contentDescriptionString="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " typeContentDescriptionString="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isDataTypeIconWide="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_1d

    if-eqz v13, :cond_1d

    const/4 v2, 0x1

    :goto_16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " subId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v35

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_1e

    const/4 v11, 0x1

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->getCurrentIconId()I

    move-result v12

    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_1f

    if-eqz v13, :cond_1f

    const/16 v16, 0x1

    :goto_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v17

    move-object v14, v5

    move-object v15, v9

    invoke-interface/range {v10 .. v17}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 5386
    :goto_19
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_14

    .line 5374
    .end local v13    # "typeIcon":I
    .end local v39    # "signalClustersLength":I
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_13

    .line 5391
    .restart local v13    # "typeIcon":I
    .restart local v39    # "signalClustersLength":I
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_1d
    const/4 v2, 0x0

    goto :goto_16

    .line 5424
    :cond_1e
    const/4 v11, 0x0

    goto :goto_17

    :cond_1f
    const/16 v16, 0x0

    goto :goto_18

    .line 5445
    :cond_20
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v2, :cond_23

    .line 5446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListeners: calling SB ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] setMobileDataIndicators (Motorola api):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileUseMotoUI="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_26

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileSimIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileSignalIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileRoamingIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileDataTypeIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileDataActivityIconId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileCarrierDescription="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileSimDescription="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileSignalContentDescription="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileRoamingDescription="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileDataTypeContentDescription="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileDataActivityContentDescription="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileIsRoaming="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isDataTypeIconWide="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_21

    if-nez v13, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_22
    const/4 v2, 0x1

    :goto_1c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileIsBidiDirectionEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    :goto_1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mobileSubId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5516
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v35

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->enabled:Z

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-nez v2, :cond_2a

    const/16 v16, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    if-eqz v2, :cond_2b

    const/16 v28, 0x1

    :goto_1f
    move-object/from16 v0, v36

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_24

    if-nez v13, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_25
    const/16 v29, 0x1

    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->connected:Z

    if-eqz v2, :cond_2d

    const/16 v30, 0x1

    :goto_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v31

    invoke-interface/range {v14 .. v31}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalCluster;->setMobileDataIndicators(ZZIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZI)V

    goto/16 :goto_19

    .line 5446
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_1a

    :cond_27
    const/4 v2, 0x0

    goto/16 :goto_1b

    :cond_28
    const/4 v2, 0x0

    goto/16 :goto_1c

    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 5516
    :cond_2a
    const/16 v16, 0x0

    goto/16 :goto_1e

    :cond_2b
    const/16 v28, 0x0

    goto :goto_1f

    :cond_2c
    const/16 v29, 0x0

    goto :goto_20

    :cond_2d
    const/16 v30, 0x0

    goto :goto_21

    .line 5563
    :cond_2e
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_2f

    .line 5564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v3, "notifyListeners: Completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5568
    :cond_2f
    return-void
.end method

.method public bridge synthetic notifyListenersIfNecessary()V
    .locals 0

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public onWifiConnectionStateChanged(ZZ)V
    .locals 2
    .param p1, "wifiEnabled"    # Z
    .param p2, "wifiConnected"    # Z

    .prologue
    .line 4612
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4613
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "onWifiConnectionStateChanged: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    if-eq v0, p2, :cond_2

    .line 4623
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    .line 4624
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    .line 4626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V

    .line 4629
    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 4630
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "onWifiConnectionStateChanged: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    :cond_3
    return-void
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 4954
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 4955
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "registerListener: Entered:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4960
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4971
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 4972
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "registerListener: Completed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    :cond_1
    return-void
.end method

.method public bridge synthetic saveLastState()V
    .locals 0

    .prologue
    .line 4274
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->saveLastState()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 9902
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->activityIn:Z

    .line 9909
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    if-eq p1, v4, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->activityOut:Z

    .line 9932
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    .line 9933
    return-void

    :cond_3
    move v1, v2

    .line 9904
    goto :goto_0

    .line 9918
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    .line 9923
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileTypeAndActivityUIMode()V

    .line 9925
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileDataTypeIcons()V

    .line 9926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->resolveMobileDataActivityIcons()V

    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 3
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 4911
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4912
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAirplaneMode: Entered: airplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4918
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    .line 4919
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->notifyListenersIfNecessary()V

    .line 4920
    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 4591
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4592
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "setConfiguration: Entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .line 4598
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mapIconSets()V

    .line 4599
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->updateTelephony()V

    .line 4601
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4602
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "setConfiguration: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    :cond_1
    return-void
.end method

.method public bridge synthetic setInetCondition(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 4274
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController;->setInetCondition(I)V

    return-void
.end method

.method public setInetCondition(II)V
    .locals 3
    .param p1, "inetCondition"    # I
    .param p2, "inetConditionForNetwork"    # I

    .prologue
    .line 4926
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4927
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInetCondition: Entered: inetCondition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inetConditionForNetwork="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4940
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    .line 4941
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->setInetCondition(I)V

    .line 4943
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 4944
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "setInetCondition: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4948
    :cond_1
    return-void
.end method

.method public setSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 4576
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSubId:I

    .line 4577
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    .line 4578
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 4583
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneId:I

    .line 4585
    :cond_1
    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    .line 4982
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    .line 4983
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "unregisterListener: Entered:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4987
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 4989
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    .line 4990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "unregisterListener: Completed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    :cond_1
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 6209
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mShowSpn:Z

    .line 6210
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mSpn:Ljava/lang/String;

    .line 6211
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mShowPlmn:Z

    .line 6212
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mPlmn:Ljava/lang/String;

    .line 6215
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 6216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName: Enetered: showSpn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6232
    .local v0, "str":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 6237
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6240
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 6245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 6248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6251
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6254
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 6257
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    .line 6261
    :goto_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v1, :cond_4

    .line 6262
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName: Completed: mCurrentState.networkName=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6271
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->motorolaUpdateNetworkNameShortForm()V

    .line 6272
    return-void

    .line 6259
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    goto :goto_0
.end method

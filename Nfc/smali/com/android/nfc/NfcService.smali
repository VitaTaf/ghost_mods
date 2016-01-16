.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$OpenSecureElement;,
        Lcom/android/nfc/NfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$TimerOpenSecureElement;,
        Lcom/android/nfc/NfcService$NfcSecureElementService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NxpNfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_CONNECTIVITY_EVENT_DETECTED:Ljava/lang/String; = "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field public static final ACTION_TRANSACTION_DETECTED:Ljava/lang/String; = "com.nxp.action.TRANSACTION_DETECTED"

.field public static final ALL_SE_ID_TYPE:I = 0x3

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z = true

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final DISABLE_WATCHDOG_MS:I = 0x7530

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.nxp.extra.DATA"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_CARD_EMULATION:I = 0xd

.field static final MSG_CLEAR_ROUTING:I = 0x6

.field static final MSG_COMMIT_ROUTING:I = 0x8

.field static final MSG_CONNECTIVITY_EVENT:I = 0x16

.field static final MSG_INVOKE_BEAM:I = 0x9

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_RESUME_POLLING:I = 0xc

.field static final MSG_RF_FIELD_ACTIVATED:I = 0xa

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xb

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_SET_SCREEN_STATE:I = 0x17

.field static final MSG_SE_APDU_RECEIVED:I = 0x11

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0x12

.field static final MSG_SE_FIELD_ACTIVATED:I = 0xf

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0x10

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0x14

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0x15

.field static final MSG_SE_MIFARE_ACCESS:I = 0x13

.field static final MSG_TARGET_DESELECTED:I = 0xe

.field static final MSG_UNROUTE_AID:I = 0x7

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFC_ON_DEFAULT:Z = true

.field static final NFC_POLLING_MODE:I = 0x3

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field private static final PREF_DEFAULT_ROUTE_ID:Ljava/lang/String; = "default_route_id"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PREF_SECURE_ELEMENT_ID:Ljava/lang/String; = "secure_element_id"

.field private static final PREF_SECURE_ELEMENT_ON:Ljava/lang/String; = "secure_element_on"

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_ALWAYS:I = 0x5

.field static final ROUTE_ON_WHEN_POWER_ON:I = 0x4

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2

.field static final ROUTE_ON_WHEN_SCREEN_UNLOCK:I = 0x3

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field public static final SMART_MX_ID_TYPE:I = 0x1

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_EE_WIPE:I = 0x4

.field static final TASK_ENABLE:I = 0x1

.field public static final UICC_ID_TYPE:I = 0x2

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field private static sNfcOnOob:Z

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private DEFAULT_ROUTE_ID_DEFAULT:I

.field private isClosed:Z

.field private isOpened:Z

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field private mHceRoutingState:I

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsAirplaneSensitive:Z

.field mIsAirplaneToggleable:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsNdefPushEnabled:Z

.field mIsRouteForced:Z

.field mIsRoutingTableDirty:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field private final mNFCDetect:Landroid/hardware/Sensor;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcDetectListener:Landroid/hardware/SensorEventListener;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcHceRouteEnabled:Z

.field mNfcPollingEnabled:Z

.field private mNfcSecureElementState:Z

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private final mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field mNfceeRouteEnabled:Z

.field mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

.field private mOpenSmxPending:Z

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private mPollingLoopStarted:Z

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mSecureElementHandle:I

.field mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

.field private mSelectedSeId:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mTimerOpenSmx:Ljava/util/Timer;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 12
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v10, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    .line 307
    iput v10, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    .line 310
    iput-boolean v9, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z

    .line 312
    iput-boolean v10, p0, Lcom/android/nfc/NfcService;->isClosed:Z

    .line 313
    iput-boolean v10, p0, Lcom/android/nfc/NfcService;->isOpened:Z

    .line 314
    iput-boolean v10, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    .line 321
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 335
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 340
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 396
    new-instance v0, Lcom/android/nfc/NfcService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDetectListener:Landroid/hardware/SensorEventListener;

    .line 3176
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3200
    new-instance v0, Lcom/android/nfc/NfcService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3283
    new-instance v0, Lcom/android/nfc/NfcService$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 560
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 562
    new-instance v0, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 563
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 564
    new-instance v0, Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    .line 565
    new-instance v0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 566
    const-string v0, "NfcService"

    const-string v1, "Starting NFC service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 571
    const-string v0, "ro.mot.NfcEnabled"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sNfcOnOob:Z

    .line 574
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 575
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 576
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 578
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 580
    new-instance v0, Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/HandoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 581
    const/4 v6, 0x0

    .line 583
    .local v6, "isNfcProvisioningEnabled":Z
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 588
    :goto_0
    if-eqz v6, :cond_3

    .line 589
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 595
    :goto_2
    new-instance v0, Lcom/android/nfc/NfcDispatcher;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v0, v1, v2, v4}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 597
    new-instance v0, Lcom/android/nfc/P2pLinkManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v3

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;IIZ)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 602
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcMetrics;->setContext(Landroid/content/Context;)V

    .line 606
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 607
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10009

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNFCDetect:Landroid/hardware/Sensor;

    .line 610
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 612
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 613
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/NfcService;->mHceRoutingState:I

    .line 614
    iput-boolean v9, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 615
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "NfcServicePrefs"

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 616
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 618
    new-instance v0, Lcom/android/nfc/NfceeAccessControl;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 620
    iput v9, p0, Lcom/android/nfc/NfcService;->mState:I

    .line 621
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "ndef_push_on"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 622
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 624
    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v9

    :goto_3
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 626
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 628
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "NfcService:mRoutingWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 630
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "NfcService:mEeWakeLock"

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 633
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 634
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 636
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 638
    const-string v0, "nfc"

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 641
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 642
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 647
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v4, v11

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 649
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 650
    .local v7, "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 653
    new-instance v7, Landroid/content/IntentFilter;

    .end local v7    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 654
    .restart local v7    # "ownerFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 659
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 661
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 662
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string v0, "android.hardware.nfc.hce"

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 663
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 664
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 665
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 668
    :cond_1
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 669
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v9, [Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 670
    return-void

    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    move v0, v10

    .line 589
    goto/16 :goto_1

    .line 592
    :cond_3
    iput-boolean v10, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_2

    :cond_4
    move v0, v10

    .line 624
    goto/16 :goto_3

    .line 585
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/nfc/NfcService;->mSelectedSeId:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mNfcSecureElementState:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/nfc/NfcService;->sNfcOnOob:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/nfc/NfcService;->mSecureElementHandle:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/nfc/NfcService;->mSecureElementHandle:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/nfc/NfcService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mTimerOpenSmx:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isOpened:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isOpened:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->isClosed:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/nfc/NfcService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->isClosed:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/nfc/NfcService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->maybeDisableDiscovery()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->maybeEnableDiscovery()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/nfc/NfcService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfceeAccessControl;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/nfc/NfcService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDetectListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/nfc/NfcService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNFCDetect:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/nfc/NfcService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/nfc/NfcService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/NfcService$OpenSecureElement;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 5
    .param p1, "screenState"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 2621
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 2623
    .local v0, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v2, 0x3

    if-lt p1, v2, :cond_7

    .line 2625
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v2, :cond_6

    .line 2626
    const/4 v1, 0x0

    .line 2627
    .local v1, "techMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2628
    or-int/lit8 v1, v1, 0x1

    .line 2629
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2630
    or-int/lit8 v1, v1, 0x2

    .line 2631
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 2632
    or-int/lit8 v1, v1, 0x4

    .line 2633
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 2634
    or-int/lit8 v1, v1, 0x8

    .line 2635
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v2, v2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    .line 2636
    or-int/lit8 v1, v1, 0x20

    .line 2638
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2639
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2652
    .end local v1    # "techMask":I
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v2

    return-object v2

    .line 2641
    :cond_6
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2643
    :cond_7
    if-ne p1, v4, :cond_8

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_8

    .line 2644
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0

    .line 2645
    :cond_8
    if-ne p1, v4, :cond_5

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2648
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 2649
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 2477
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 2488
    :cond_1
    return-object v0

    .line 2478
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2479
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 2480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2481
    add-int/lit8 v2, v2, 0x1

    .line 2483
    :cond_3
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 2484
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2485
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 2484
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private isTagPresent()Z
    .locals 3

    .prologue
    .line 2656
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2657
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 2658
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    .line 2661
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized maybeDisableDiscovery()V
    .locals 1

    .prologue
    .line 2218
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    if-nez v0, :cond_1

    .line 2220
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2225
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2222
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized maybeEnableDiscovery()V
    .locals 3

    .prologue
    .line 2199
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2200
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mOpenSmxPending:Z

    if-nez v0, :cond_0

    .line 2202
    const-string v0, "NfcService"

    const-string v1, "maybeEnableDiscovery inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2214
    :goto_0
    monitor-exit p0

    return-void

    .line 2207
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mPollingLoopStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2211
    :cond_1
    :try_start_2
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private setDefaultRoute(I)Z
    .locals 2
    .param p1, "routeLoc"    # I

    .prologue
    .line 2780
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    move-result v0

    .line 2781
    .local v0, "ret":Z
    return v0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 3314
    packed-switch p0, :pswitch_data_0

    .line 3324
    const-string v0, "<error>"

    :goto_0
    return-object v0

    .line 3316
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 3318
    :pswitch_1
    const-string v0, "turning on"

    goto :goto_0

    .line 3320
    :pswitch_2
    const-string v0, "on"

    goto :goto_0

    .line 3322
    :pswitch_3
    const-string v0, "turning off"

    goto :goto_0

    .line 3314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public SelectSecureElement()V
    .locals 5

    .prologue
    .line 2797
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v1

    .line 2798
    .local v1, "seList":[I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectSecureElement seList.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2800
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aget v3, v1, v0

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 2799
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2803
    :cond_0
    return-void
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1972
    monitor-enter p0

    .line 1973
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1992
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1976
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-nez v0, :cond_1

    .line 1977
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1979
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_2

    .line 1980
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1982
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_3

    .line 1983
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1986
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1987
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 1988
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 1989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 1990
    const-string v0, "NfcService"

    const-string v1, "applyRouting -8"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1992
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1993
    return-void
.end method

.method applyRouting(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2495
    monitor-enter p0

    .line 2496
    :try_start_0
    const-string v5, "NfcService"

    const-string v6, "applyRouting"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-eqz v5, :cond_1

    .line 2499
    :cond_0
    monitor-exit p0

    .line 2549
    :goto_0
    return-void

    .line 2501
    :cond_1
    new-instance v2, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v5, "applyRouting"

    const/16 v6, 0x2710

    invoke-direct {v2, p0, v5, v6}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2502
    .local v2, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v5, :cond_2

    .line 2503
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 2505
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v3, :cond_2

    .line 2508
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 2509
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v3}, Lcom/android/nfc/P2pLinkManager;->disableProvisioningMode()V

    .line 2510
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/HandoverManager;->setEnabled(Z)V

    .line 2515
    :cond_2
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2516
    const-string v3, "NfcService"

    const-string v4, "Not updating discovery parameters, tag connected."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2519
    monitor-exit p0

    goto :goto_0

    .line 2548
    .end local v2    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_3
    move v3, v4

    .line 2503
    goto :goto_1

    .line 2523
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 2525
    const-string v3, "NfcService"

    const-string v4, "computeEmulationParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/NfcService;->computeEmulationParameters(ZI)V

    .line 2528
    const-string v3, "NfcService"

    const-string v4, "computeDiscoveryParameters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v3}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 2530
    .local v0, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_5

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2531
    :cond_5
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2532
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v1

    .line 2533
    .local v1, "shouldRestart":Z
    const-string v3, "NfcService"

    const-string v4, "NFC-C ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v0, v1}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 2535
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2541
    .end local v1    # "shouldRestart":Z
    :goto_2
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2546
    :goto_3
    :try_start_2
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 2548
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2537
    :cond_6
    :try_start_3
    const-string v3, "NfcService"

    const-string v4, "NFC-C OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 2539
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 2546
    .end local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2543
    .restart local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_7
    :try_start_5
    const-string v3, "NfcService"

    const-string v4, "Discovery configuration equal, not updating."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3
.end method

.method public clearRouting()V
    .locals 2

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 2767
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 2763
    return-void
.end method

.method computeEmulationParameters(ZI)V
    .locals 7
    .param p1, "force"    # Z
    .param p2, "screenState"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2554
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_0

    .line 2555
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v1, v3, :cond_6

    .line 2556
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 2557
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost;->SetScreenState(Z)Z

    .line 2558
    const-string v1, "NfcService"

    const-string v2, "SCREEN_STATE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2570
    :cond_0
    :goto_0
    const-string v1, "NfcService"

    const-string v2, "configure EE routing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget v1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    if-ne v1, v6, :cond_8

    if-ne p2, v6, :cond_8

    .line 2572
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v1, :cond_2

    .line 2573
    :cond_1
    const-string v1, "NfcService"

    const-string v2, "NFC-EE ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2575
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->SelectSecureElement()V

    .line 2594
    :cond_2
    :goto_1
    const-string v1, "NfcService"

    const-string v2, "configure HCE routing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget v1, p0, Lcom/android/nfc/NfcService;->mHceRoutingState:I

    if-ne v1, v5, :cond_c

    if-lt p2, v5, :cond_c

    .line 2596
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    if-nez v1, :cond_4

    .line 2597
    :cond_3
    const-string v1, "NfcService"

    const-string v2, "NFC-HCE ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    .line 2599
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->enableRoutingToHost()V

    .line 2611
    :cond_4
    :goto_2
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configure routing table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    if-eqz v1, :cond_5

    .line 2613
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v0

    .line 2614
    .local v0, "defaultRoute":I
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set default route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->setDefaultAidRoute(I)Z

    .line 2616
    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 2618
    .end local v0    # "defaultRoute":I
    :cond_5
    return-void

    .line 2560
    :cond_6
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v1, v5, :cond_7

    .line 2561
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v4}, Lcom/android/nfc/DeviceHost;->SetScreenState(Z)Z

    .line 2562
    const-string v1, "NfcService"

    const-string v2, "SCREEN_STATE_ON_LOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2563
    :cond_7
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v1, v6, :cond_0

    .line 2564
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost;->SetScreenState(Z)Z

    .line 2565
    const-string v1, "NfcService"

    const-string v2, "SCREEN_STATE_ON_UNLOCKED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2578
    :cond_8
    iget v1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    if-lt p2, v3, :cond_a

    .line 2579
    if-nez p1, :cond_9

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v1, :cond_2

    .line 2580
    :cond_9
    const-string v1, "NfcService"

    const-string v2, "NFC-EE ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2582
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->SelectSecureElement()V

    goto/16 :goto_1

    .line 2586
    :cond_a
    if-nez p1, :cond_b

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v1, :cond_2

    .line 2587
    :cond_b
    const-string v1, "NfcService"

    const-string v2, "NFC-EE OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2589
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->deSelectSecureElement()V

    goto/16 :goto_1

    .line 2603
    :cond_c
    if-nez p1, :cond_d

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    if-eqz v1, :cond_4

    .line 2604
    :cond_d
    const-string v1, "NfcService"

    const-string v2, "NFC-HCE OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mNfcHceRouteEnabled:Z

    .line 2606
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->disableRoutingToHost()V

    goto/16 :goto_2
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deSelectSecureElement()V
    .locals 5

    .prologue
    .line 2805
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v1

    .line 2806
    .local v1, "seList":[I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectSecureElement seList.length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2808
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aget v3, v1, v0

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 2807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2811
    :cond_0
    return-void
.end method

.method doDisconnect(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 742
    return-void

    .line 740
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection()I
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .locals 2
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 727
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .locals 1
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    :goto_0
    return-void

    .line 3337
    :cond_0
    monitor-enter p0

    .line 3338
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3344
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3345
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 3346
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3348
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3349
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 412
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_2
    return-void
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 2699
    monitor-enter p0

    .line 2700
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2701
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2702
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2705
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultRoute()I
    .locals 3

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route_id"

    iget v2, p0, Lcom/android/nfc/NfcService;->DEFAULT_ROUTE_ID_DEFAULT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDefaultSecureElement()I
    .locals 3

    .prologue
    .line 2788
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v0

    .line 2789
    .local v0, "seList":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2791
    :cond_0
    const/4 v1, -0x1

    .line 2793
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    .prologue
    .line 1059
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .prologue
    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 676
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 677
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 678
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 680
    :cond_0
    monitor-exit p0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3306
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isNfcEnabled()Z
    .locals 2

    .prologue
    .line 2435
    monitor-enter p0

    .line 2436
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2437
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .prologue
    .line 2429
    monitor-enter p0

    .line 2430
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2431
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maybeDisconnectTarget()V
    .locals 11

    .prologue
    .line 2667
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2696
    :cond_0
    return-void

    .line 2671
    :cond_1
    monitor-enter p0

    .line 2672
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 2675
    .local v5, "objectValues":[Ljava/lang/Object;
    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 2676
    .local v6, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 2677
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2678
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 2679
    .local v4, "o":Ljava/lang/Object;
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "disconnecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_3

    move-object v7, v4

    .line 2682
    check-cast v7, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2683
    .local v7, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 2678
    .end local v7    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2677
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "objectValues":[Ljava/lang/Object;
    .end local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 2684
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "objectValues":[Ljava/lang/Object;
    .restart local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_3
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v8, :cond_2

    move-object v1, v4

    .line 2686
    check-cast v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 2687
    .local v1, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v8

    if-nez v8, :cond_2

    .line 2689
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_1
.end method

.method public onCardEmulationAidSelected([B[B)V
    .locals 2
    .param p1, "aid"    # [B
    .param p2, "data"    # [B

    .prologue
    .line 442
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_0

    .line 443
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    .local v0, "transactionInfo":Landroid/util/Pair;, "Landroid/util/Pair<[B[B>;"
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 446
    return-void
.end method

.method public onCardEmulationDeselected()V
    .locals 2

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 434
    :cond_0
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 436
    return-void
.end method

.method public onConnectivityEvent()V
    .locals 2

    .prologue
    .line 450
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 451
    return-void
.end method

.method public onHostCardEmulationActivated()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 461
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData([B)V

    .line 468
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 475
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 498
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 499
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 483
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 490
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 491
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 427
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .prologue
    .line 545
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 546
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .prologue
    .line 549
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 550
    return-void
.end method

.method public onSeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 525
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 527
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .locals 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 532
    :cond_0
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 534
    return-void
.end method

.method public onSeListenActivated()V
    .locals 2

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 504
    :cond_0
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 506
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated()V

    .line 509
    :cond_1
    return-void
.end method

.method public onSeListenDeactivated()V
    .locals 2

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 514
    :cond_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 516
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated()V

    .line 519
    :cond_1
    return-void
.end method

.method public onSeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 539
    :cond_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 541
    return-void
.end method

.method public playSound(I)V
    .locals 7
    .param p1, "sound"    # I

    .prologue
    .line 1039
    monitor-enter p0

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1041
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    monitor-exit p0

    .line 1056
    :goto_0
    return-void

    .line 1044
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1055
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1046
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 1049
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_1

    .line 1052
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1044
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 4
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 693
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    .line 700
    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    .line 703
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_0

    .line 704
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    :cond_0
    return-void

    .line 698
    :cond_1
    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    .line 700
    :cond_2
    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 2709
    monitor-enter p0

    .line 2710
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    monitor-exit p0

    .line 2712
    return-void

    .line 2711
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseSoundPool()V
    .locals 1

    .prologue
    .line 684
    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 687
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 689
    :cond_0
    monitor-exit p0

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;II)V
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 2749
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2750
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2751
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2752
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2753
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2754
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2755
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1032
    monitor-enter p0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1034
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1035
    monitor-exit p0

    .line 1036
    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendData([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2773
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2774
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2775
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2776
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2777
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 2745
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2746
    return-void
.end method

.method setBeamShareActivityState(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1063
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.nfc"

    const-string v4, "com.android.nfc.BeamShareActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1068
    return-void

    .line 1063
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method unregisterObject(I)V
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 2715
    monitor-enter p0

    .line 2716
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    monitor-exit p0

    .line 2718
    return-void

    .line 2717
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 2758
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2759
    return-void
.end method

.method updatePackageCache()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 709
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 710
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v3, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 711
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 712
    :try_start_0
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    .line 713
    monitor-exit p0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

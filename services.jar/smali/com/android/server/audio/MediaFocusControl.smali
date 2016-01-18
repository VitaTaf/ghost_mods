.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;
    }
.end annotation


# static fields
.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final MSG_RCC_NEW_PLAYBACK_INFO:I = 0x4

.field private static final MSG_RCC_NEW_PLAYBACK_STATE:I = 0x6

.field private static final MSG_RCC_NEW_VOLUME_OBS:I = 0x5

.field private static final MSG_RCC_SEEK_REQUEST:I = 0x7

.field private static final MSG_RCC_UPDATE_METADATA:I = 0x8

.field private static final MSG_RCDISPLAY_CLEAR:I = 0x1

.field private static final MSG_RCDISPLAY_INIT_INFO:I = 0x9

.field private static final MSG_RCDISPLAY_UPDATE:I = 0x2

.field private static final MSG_REEVALUATE_RCD:I = 0xa

.field private static final MSG_REEVALUATE_REMOTE:I = 0x3

.field private static final MSG_UNREGISTER_MEDIABUTTONINTENT:I = 0xb

.field private static final RCD_REG_FAILURE:I = 0x0

.field private static final RCD_REG_SUCCESS_ENABLED_NOTIF:I = 0x2

.field private static final RCD_REG_SUCCESS_PERMISSION:I = 0x1

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final VOICEBUTTON_ACTION_DISCARD_CURRENT_KEY_PRESS:I = 0x1

.field private static final VOICEBUTTON_ACTION_SIMULATE_KEY_PRESS:I = 0x3

.field private static final VOICEBUTTON_ACTION_START_VOICE_INPUT:I = 0x2

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private mCurrentRcClientIntent:Landroid/app/PendingIntent;

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private final mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemotePlayback:Z

.field private mIsRinging:Z

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

.field private mMainRemoteIsActive:Z

.field private final mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaReceiverForCalls:Landroid/content/ComponentName;

.field private final mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

.field private mNotifyFocusOwnerOnDuck:Z

.field private final mPRStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/PlayerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field private final mVoiceEventLock:Ljava/lang/Object;

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService$VolumeController;Lcom/android/server/audio/AudioService;)V
    .locals 7
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "volumeCtrl"    # Lcom/android/server/audio/AudioService$VolumeController;
    .param p4, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    .line 409
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 467
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 634
    iput-boolean v6, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 958
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    .line 1101
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1119
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    .line 1125
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1130
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1144
    iput v5, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1170
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    .line 1176
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1777
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    .line 101
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    invoke-direct {v3, p0, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 102
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 103
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 105
    iput-object p4, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 107
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 108
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "handleMediaEvent"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    const/4 v3, 0x3

    invoke-virtual {p4, v3}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    .line 110
    .local v0, "maxMusicLevel":I
    new-instance v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v0, v0}, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;-><init>(III)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    .line 113
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 115
    .local v2, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 117
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 118
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 120
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    invoke-direct {v3, p0}, Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifListenerObserver:Lcom/android/server/audio/MediaFocusControl$NotificationListenerObserver;

    .line 122
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    .line 123
    iput-boolean v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 125
    invoke-static {p0}, Lcom/android/server/audio/PlayerRecord;->setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemote()V

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "x2"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$1700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/audio/MediaFocusControl;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->postReevaluateRemoteControlDisplays()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V

    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I
    .locals 9
    .param p1, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 177
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 180
    const/4 v5, 0x1

    .line 214
    :goto_0
    return v5

    .line 184
    :cond_0
    if-eqz p1, :cond_3

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 188
    .local v6, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 189
    .local v2, "currentUser":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_notification_listeners"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "enabledNotifListeners":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 194
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "components":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 196
    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 198
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    const/4 v5, 0x2

    .line 210
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 195
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "components":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    .end local v2    # "currentUser":I
    .end local v3    # "enabledNotifListeners":Ljava/lang/String;
    .end local v6    # "ident":J
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 210
    .restart local v6    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private checkUpdateRemoteControlDisplay_syncPrs(I)V
    .locals 1
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1550
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1559
    :goto_0
    return-void

    .line 1558
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->updateRemoteControlDisplay_syncPrs(I)V

    goto :goto_0
.end method

.method private clearRemoteControlDisplay_syncPrs()V
    .locals 3

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1501
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1502
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1505
    return-void

    .line 1502
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 17
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 917
    if-eqz p2, :cond_0

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 920
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 921
    .local v5, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 923
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 926
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    const/16 v4, 0x7bc

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    move-object/from16 v6, p0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    :goto_1
    :try_start_2
    monitor-exit v16

    .line 949
    return-void

    .line 926
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 929
    :catch_0
    move-exception v13

    .line 930
    .local v13, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {v13}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_1

    .line 948
    .end local v13    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 936
    :cond_2
    if-eqz p2, :cond_3

    .line 937
    :try_start_3
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    .line 941
    .local v14, "ident":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 945
    :try_start_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method private dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V
    .locals 12
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 893
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 894
    .local v1, "keyIntent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 895
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 896
    if-eqz p2, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 898
    const-string v0, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v2, 0x7bc

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 902
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    return-void

    .line 905
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 474
    const-string v1, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 477
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 480
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n Notify on duck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method private dumpRCCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1198
    const-string v1, "\nRemote Control Client stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1201
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 1207
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1204
    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nCurrent remote control generation ID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1207
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1208
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v2

    .line 1209
    :try_start_4
    const-string v1, "\nRemote Volume State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  has remote: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mHasRemotePlayback:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  is remote active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  rccId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume handling: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v1, v1, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    if-nez v1, :cond_1

    const-string v1, "PLAYBACK_VOLUME_FIXED(0)"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  volume steps: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v3, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1219
    return-void

    .line 1206
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1213
    :cond_1
    :try_start_7
    const-string v1, "PLAYBACK_VOLUME_VARIABLE(1)"

    goto :goto_1

    .line 1218
    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private dumpRCDList(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1226
    const-string v2, "\nRemote Control Display list entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v3

    .line 1228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1229
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1230
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1231
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  IRCD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- w:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- h:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- wantsPosSync:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2000(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1237
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1231
    .restart local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :try_start_1
    const-string v2, "disabled"

    goto :goto_1

    .line 1237
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1238
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1183
    const-string v1, "\nRemote Control stack entries (last is top of stack):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1185
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1186
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/audio/PlayerRecord;->dump(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    .line 1189
    .end local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    return-void
.end method

.method private enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enabled"    # Z

    .prologue
    .line 1803
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1804
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1805
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1806
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1808
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/media/IRemoteControlClient;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to client: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1814
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 863
    invoke-static {p1}, Lcom/android/server/audio/MediaFocusControl;->isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not dispatching invalid media key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_0
    return-void

    .line 868
    :cond_0
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 872
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEventForCalls(Landroid/view/KeyEvent;Z)V

    .line 873
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 875
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 876
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 878
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isValidVoiceInputKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    .line 875
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 881
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private filterVoiceInputKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    const/4 v2, 0x1

    .line 974
    const/4 v1, 0x1

    .line 975
    .local v1, "voiceButtonAction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 976
    .local v0, "keyAction":I
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceEventLock:Ljava/lang/Object;

    monitor-enter v3

    .line 977
    if-nez v0, :cond_2

    .line 978
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 980
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    .line 981
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 997
    :cond_0
    :goto_0
    monitor-exit v3

    .line 1000
    packed-switch v1, :pswitch_data_0

    .line 1014
    :goto_1
    :pswitch_0
    return-void

    .line 982
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 985
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    .line 986
    const/4 v1, 0x2

    goto :goto_0

    .line 988
    :cond_2
    if-ne v0, v2, :cond_0

    .line 989
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    if-eqz v2, :cond_0

    .line 991
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonDown:Z

    .line 992
    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl;->mVoiceButtonHandled:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 993
    const/4 v1, 0x3

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1007
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/audio/MediaFocusControl;->startVoiceBasedInteractions(Z)V

    goto :goto_1

    .line 1011
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_1

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "enabledArray"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 305
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 309
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "compString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 311
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    const/4 v2, 0x1

    goto :goto_0

    .line 310
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    const/4 v0, 0x1

    .line 1349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 572
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPlaystateActive(I)Z
    .locals 1
    .param p0, "playState"    # I

    .prologue
    .line 2084
    packed-switch p0, :pswitch_data_0

    .line 2093
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2091
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2084
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1027
    if-nez p0, :cond_0

    .line 1028
    const/4 v0, 0x0

    .line 1030
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isValidVoiceInputKeyCode(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1040
    const/16 v0, 0x4f

    if-ne p0, v0, :cond_0

    .line 1041
    const/4 v0, 0x1

    .line 1043
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 452
    :cond_0
    return-void
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1422
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1423
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1425
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1427
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1428
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1429
    return-void

    .line 1427
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1428
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "newRcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1470
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1471
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1472
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1477
    :try_start_2
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-interface {p1, v1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1482
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlClient;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1491
    :cond_0
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1492
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1493
    return-void

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v1, "MediaFocusControl"

    const-string v4, "Current valid remote client is dead: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1485
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1487
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1488
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "MediaFocusControl"

    const-string v4, "Dead display in onRcDisplayInitInfo()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1491
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1

    .line 1492
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method private onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    .locals 6
    .param p1, "prse"    # Lcom/android/server/audio/PlayerRecord;
    .param p2, "flags"    # I

    .prologue
    .line 1435
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1436
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1437
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1440
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    .line 1443
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-virtual {p1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1450
    :try_start_2
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientGen:I

    invoke-interface {v1, v4, p2}, Landroid/media/IRemoteControlClient;->onInformationRequested(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1460
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1461
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1462
    return-void

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 1460
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1461
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private onReevaluateRemote()V
    .locals 0

    .prologue
    .line 2199
    return-void
.end method

.method private onReevaluateRemoteControlDisplays()V
    .locals 17

    .prologue
    .line 251
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 252
    .local v8, "currentUser":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 257
    .local v13, "enabledNotifListeners":Ljava/lang/String;
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 258
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 262
    if-nez v13, :cond_1

    .line 263
    const/4 v12, 0x0

    .line 267
    .local v12, "enabledComponents":[Ljava/lang/String;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 268
    .local v10, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 271
    .local v9, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v14

    .line 273
    .local v14, "wasEnabled":Z
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v12}, Lcom/android/server/audio/MediaFocusControl;->isComponentInStringArray(Landroid/content/ComponentName;[Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9, v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 275
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eq v14, v1, :cond_0

    .line 278
    :try_start_2
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/IRemoteControlDisplay;->setEnabled(Z)V

    .line 280
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->enableRemoteControlDisplayForClient_syncRcStack(Landroid/media/IRemoteControlDisplay;Z)V

    .line 283
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0x9

    const/4 v3, 0x2

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v9}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 289
    :catch_0
    move-exception v11

    .line 290
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "MediaFocusControl"

    const-string v2, "Error en/disabling RCD: "

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 295
    .end local v9    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "enabledComponents":[Ljava/lang/String;
    .end local v14    # "wasEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 296
    :catchall_1
    move-exception v1

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 265
    :cond_1
    :try_start_5
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "enabledComponents":[Ljava/lang/String;
    goto :goto_0

    .line 295
    .restart local v10    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_2
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 297
    return-void
.end method

.method private onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 2020
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 2025
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2026
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2027
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2028
    iput-object p2, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v4

    .line 2037
    return-void

    .line 2025
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2032
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2034
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v5, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2036
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    .locals 6
    .param p1, "rcc"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1784
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1785
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1786
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1788
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_0
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v4

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v5

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    .line 1790
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2000(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1791
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1793
    :catch_0
    move-exception v2

    .line 1794
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Error connecting RCD to RCC in RCC registration"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1797
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private postReevaluateRemoteControlDisplays()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 246
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    .prologue
    .line 461
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 462
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    .line 465
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 585
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 586
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 587
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    move v1, v0

    .line 586
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 593
    const-string v2, "MediaFocusControl"

    const-string v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 597
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const/4 v2, 0x1

    .line 601
    :goto_1
    return v2

    .line 600
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 601
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z
    .locals 12
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "target"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1253
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1254
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    new-instance v9, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v9, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const/4 v7, 0x1

    .line 1315
    :goto_0
    return v7

    .line 1256
    :cond_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/PlayerRecord;

    invoke-virtual {v8, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1258
    const/4 v7, 0x0

    goto :goto_0

    .line 1260
    :cond_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v9, 0x1f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 1262
    const/4 v7, 0x0

    goto :goto_0

    .line 1264
    :cond_2
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1265
    .local v4, "oldTopPrse":Lcom/android/server/audio/PlayerRecord;
    const/4 v7, 0x0

    .line 1266
    .local v7, "topChanged":Z
    const/4 v5, 0x0

    .line 1267
    .local v5, "prse":Lcom/android/server/audio/PlayerRecord;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v3

    .line 1268
    .local v3, "lastPlayingIndex":I
    const/4 v1, -0x1

    .line 1272
    .local v1, "inStackIndex":I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "index":I
    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .local v6, "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_1
    if-ltz v2, :cond_5

    .line 1273
    :try_start_1
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1274
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_2
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1275
    move v3, v2

    .line 1277
    :cond_3
    invoke-virtual {v5, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-eqz v8, :cond_4

    .line 1278
    move v1, v2

    .line 1272
    :cond_4
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_1

    .line 1282
    :cond_5
    const/4 v8, -0x1

    if-ne v1, v8, :cond_6

    .line 1284
    :try_start_3
    new-instance v5, Lcom/android/server/audio/PlayerRecord;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/PlayerRecord;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1287
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_4
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1308
    .end local v2    # "index":I
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const-string v8, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Wrong index (inStack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lastPlaying="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " accessing media button stack"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1290
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v2    # "index":I
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_6
    :try_start_5
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_9

    .line 1291
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/PlayerRecord;
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1293
    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    :try_start_6
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 1294
    invoke-virtual {v5}, Lcom/android/server/audio/PlayerRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1296
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1299
    :cond_7
    if-le v1, v3, :cond_8

    .line 1300
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v8, v3, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1302
    :cond_8
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v5}, Ljava/util/Stack;->add(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 1308
    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto :goto_2

    .end local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_9
    move-object v5, v6

    .end local v6    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v5    # "prse":Lcom/android/server/audio/PlayerRecord;
    goto/16 :goto_0
.end method

.method private rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1822
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1823
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1824
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1825
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1826
    const/4 v2, 0x1

    .line 1829
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V
    .locals 17
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 1848
    sget-object v15, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1849
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    if-eqz p1, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/MediaFocusControl;->rcDisplayIsPluggedIn_syncRcStack(Landroid/media/IRemoteControlDisplay;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1851
    :cond_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1885
    :goto_0
    return-void

    .line 1853
    :cond_1
    :try_start_3
    new-instance v11, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    .line 1854
    .local v11, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    const/4 v4, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z
    invoke-static {v11, v4}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 1855
    move-object/from16 v0, p4

    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;
    invoke-static {v11, v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$402(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 1856
    invoke-virtual {v11}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->init()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1858
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v15

    goto :goto_0

    .line 1884
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 1861
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1866
    .local v14, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1867
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/audio/PlayerRecord;

    .line 1868
    .local v13, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1870
    :try_start_6
    invoke-virtual {v13}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 1871
    :catch_0
    move-exception v12

    .line 1872
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "MediaFocusControl"

    const-string v5, "Error connecting RCD to client: "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1883
    .end local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_1
    move-exception v4

    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1880
    .restart local v11    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .restart local v14    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v5, 0x9

    const/4 v6, 0x2

    const/4 v10, 0x0

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1883
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1884
    :try_start_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .prologue
    .line 495
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 498
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 499
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 500
    if-eqz p3, :cond_0

    .line 501
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 502
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 503
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 505
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 507
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 525
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    return-void

    .line 514
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 515
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 517
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 518
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 521
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 534
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 538
    .local v1, "isTopOfStackForClientToRemove":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 539
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 541
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 534
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 547
    .restart local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 550
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 552
    :cond_3
    return-void
.end method

.method private removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1326
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1327
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1328
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1329
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    .line 1331
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->removeElementAt(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    return-void

    .line 1326
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1335
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1337
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Wrong index accessing media button stack, lock error? "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 348
    if-nez p2, :cond_1

    .line 349
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1018
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1019
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1021
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1022
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1024
    return-void
.end method

.method private sendVolumeUpdateToRemote(II)V
    .locals 7
    .param p1, "rccId"    # I
    .param p2, "direction"    # I

    .prologue
    .line 2099
    if-nez p2, :cond_1

    .line 2129
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    const/4 v3, 0x0

    .line 2104
    .local v3, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2109
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2110
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2112
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 2113
    iget-object v3, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2122
    if-eqz v3, :cond_0

    .line 2124
    const/4 v4, -0x1

    :try_start_2
    invoke-interface {v3, p2, v4}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2125
    :catch_0
    move-exception v0

    .line 2126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaFocusControl"

    const-string v5, "Error dispatching relative volume update"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2109
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2117
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    .line 2119
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing media button stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2121
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 5
    .param p1, "newClientGeneration"    # I

    .prologue
    .line 1384
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1385
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1386
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1387
    .local v1, "se":Lcom/android/server/audio/PlayerRecord;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1389
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    const-string v4, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1392
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1393
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 1397
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "se":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 6
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1360
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v4

    .line 1361
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1362
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1363
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1366
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :try_start_1
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1368
    :catch_0
    move-exception v2

    .line 1369
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MediaFocusControl"

    const-string v5, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc()"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1371
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1375
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1376
    return-void
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .param p1, "newClientGeneration"    # I
    .param p2, "newMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    .line 1410
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 1412
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 1413
    return-void
.end method

.method private startVoiceBasedInteractions(Z)V
    .locals 10
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1051
    const/4 v5, 0x0

    .line 1056
    .local v5, "voiceIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1057
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v8}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v1, v6

    .line 1058
    .local v1, "isLocked":Z
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1059
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1060
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "MediaFocusControl"

    const-string v7, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_1
    if-eqz p1, :cond_0

    .line 1069
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1071
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1073
    .local v2, "identity":J
    if-eqz v5, :cond_1

    .line 1074
    const/high16 v6, 0x10800000

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1076
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1082
    if-eqz p1, :cond_2

    .line 1083
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1086
    :cond_2
    :goto_2
    return-void

    .end local v1    # "isLocked":Z
    .end local v2    # "identity":J
    :cond_3
    move v1, v7

    .line 1057
    goto :goto_0

    .line 1062
    .restart local v1    # "isLocked":Z
    :cond_4
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v8, "android.speech.extras.EXTRA_SECURE"

    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/android/server/audio/MediaFocusControl;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_3
    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1065
    const-string v6, "MediaFocusControl"

    const-string v7, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v6, v7

    .line 1063
    goto :goto_3

    .line 1078
    .restart local v2    # "identity":J
    :catch_0
    move-exception v0

    .line 1079
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "MediaFocusControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity for search: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1082
    if-eqz p1, :cond_2

    .line 1083
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 1081
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1082
    if-eqz p1, :cond_6

    .line 1083
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    throw v6
.end method

.method private updateRemoteControlDisplay_syncPrs(I)V
    .locals 6
    .param p1, "infoChangedFlags"    # I

    .prologue
    .line 1516
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    .line 1517
    .local v1, "prse":Lcom/android/server/audio/PlayerRecord;
    move v0, p1

    .line 1520
    .local v0, "infoFlagsAboutToBeUsed":I
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1522
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->clearRemoteControlDisplay_syncPrs()V

    .line 1536
    :goto_0
    return-void

    .line 1525
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1526
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1528
    const/16 v0, 0xf

    .line 1530
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 1531
    invoke-virtual {v1}, Lcom/android/server/audio/PlayerRecord;->getMediaButtonIntent()Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCurrentRcClientIntent:Landroid/app/PendingIntent;

    .line 1532
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1532
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v4, 0x1

    .line 815
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :try_start_0
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    const/4 v1, 0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1, v3}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 820
    monitor-exit v2

    .line 829
    :goto_0
    return v4

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 821
    :catch_0
    move-exception v0

    .line 825
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 662
    :goto_0
    return-void

    .line 648
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 651
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 652
    const/4 v0, 0x1

    .line 656
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    .line 657
    monitor-exit v4

    goto :goto_0

    .line 661
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 659
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected checkUpdateRemoteStateIfActive(I)Z
    .locals 9
    .param p1, "streamType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2046
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 2049
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2050
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2051
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    if-ne v6, v3, :cond_1

    iget-object v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    iget v6, v6, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v6}, Lcom/android/server/audio/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    if-ne v6, p1, :cond_1

    .line 2056
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2057
    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v8

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2058
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    .line 2059
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    .line 2060
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v8, v2, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    iput v8, v7, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeHandling:I

    .line 2061
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2062
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2074
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :goto_1
    return v3

    .line 2062
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2066
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v3, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2070
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2071
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v5

    .line 2072
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemoteIsActive:Z

    .line 2073
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move v3, v4

    .line 2074
    goto :goto_1

    .line 2049
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2070
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v3

    .line 2073
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    .prologue
    .line 432
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 436
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    .line 437
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 439
    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v2

    .line 440
    return-void

    .line 439
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 849
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 850
    return-void
.end method

.method protected dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 858
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->filterMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 859
    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCCStack(Ljava/io/PrintWriter;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpRCDList(Ljava/io/PrintWriter;)V

    .line 135
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 709
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x0

    monitor-exit v1

    .line 713
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamMaxVolume()I
    .locals 3

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2134
    const/4 v0, 0x0

    monitor-exit v1

    .line 2136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getRemoteStreamVolume()I
    .locals 3

    .prologue
    .line 2141
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v1

    .line 2142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2143
    const/4 v0, 0x0

    monitor-exit v1

    .line 2145
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mVolume:I

    monitor-exit v1

    goto :goto_0

    .line 2146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 682
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 685
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call newAudioFocusLoser() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 691
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .prologue
    .line 697
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 700
    .local v2, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call newAudioFocusLoser() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 706
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 1096
    const/16 v0, 0x7bc

    if-ne p3, v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1099
    :cond_0
    return-void
.end method

.method protected postReevaluateRemote()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2192
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2193
    return-void
.end method

.method protected registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1608
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to register media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1612
    :try_start_0
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1613
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1567
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1570
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/MediaFocusControl;->pushMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1574
    :cond_0
    monitor-exit v1

    .line 1575
    return-void

    .line 1574
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 1640
    const/4 v3, -0x1

    .line 1641
    .local v3, "rccId":I
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1644
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1645
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1646
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, p2, p3, v4}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    if-nez p2, :cond_2

    .line 1671
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1672
    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1674
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    return v3

    .line 1654
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v3

    .line 1658
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1659
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->plugRemoteControlDisplaysIntoClient_syncPrs(Landroid/media/IRemoteControlClient;)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1664
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1674
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 1644
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 233
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 235
    const/4 v1, 0x1

    .line 240
    :goto_0
    return v1

    .line 237
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register IRemoteControlDisplay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 4
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 219
    invoke-direct {p0, p4}, Lcom/android/server/audio/MediaFocusControl;->checkRcdRegistrationAuthorization(Landroid/content/ComponentName;)I

    move-result v0

    .line 220
    .local v0, "reg":I
    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->registerRemoteControlDisplay_int(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)V

    .line 222
    const/4 v1, 0x1

    .line 227
    :goto_0
    return v1

    .line 224
    :cond_0
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Access denied to process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", must have permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or be an enabled NotificationListenerService for registerRemoteController"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1941
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1942
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1943
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    const/4 v0, 0x0

    .line 1944
    .local v0, "artworkSizeUpdate":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 1945
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1946
    .local v1, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1947
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-ne v6, p2, :cond_1

    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I

    move-result v6

    if-eq v6, p3, :cond_0

    .line 1948
    :cond_1
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I
    invoke-static {v1, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$702(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1949
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I
    invoke-static {v1, p3}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$802(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I

    .line 1950
    const/4 v0, 0x1

    goto :goto_0

    .line 1954
    .end local v1    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_2
    if-eqz v0, :cond_4

    .line 1957
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1958
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1959
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1960
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1962
    :try_start_1
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Landroid/media/IRemoteControlClient;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1963
    :catch_0
    move-exception v3

    .line 1964
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting bitmap size for RCD on RCC: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1969
    .end local v0    # "artworkSizeUpdate":Z
    .end local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "artworkSizeUpdate":Z
    .restart local v2    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1970
    return-void
.end method

.method protected remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 1986
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1987
    const/4 v4, 0x0

    .line 1990
    .local v4, "rcdRegistered":Z
    :try_start_0
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1991
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1992
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1993
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1994
    # setter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$2002(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z

    .line 1995
    const/4 v4, 0x1

    .line 1999
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :cond_1
    if-nez v4, :cond_2

    .line 2000
    monitor-exit v7

    .line 2016
    :goto_0
    return-void

    .line 2004
    :cond_2
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2005
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2006
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/PlayerRecord;

    .line 2007
    .local v3, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2009
    :try_start_1
    invoke-virtual {v3}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Landroid/media/IRemoteControlClient;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2010
    :catch_0
    move-exception v2

    .line 2011
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MediaFocusControl"

    const-string v8, "Error setting position sync flag for RCD on RCC: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2015
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 665
    if-nez p1, :cond_0

    .line 676
    :goto_0
    return-void

    .line 668
    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 669
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 670
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 18
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 721
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 725
    const-string v3, "MediaFocusControl"

    const-string v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v16, 0x0

    .line 807
    :goto_0
    return v16

    .line 729
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x20

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    const/16 v16, 0x0

    goto :goto_0

    .line 734
    :cond_1
    sget-object v17, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v17

    .line 735
    const/4 v14, 0x0

    .line 736
    .local v14, "focusGrantDelayed":Z
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 737
    and-int/lit8 v3, p7, 0x1

    if-nez v3, :cond_2

    .line 738
    const/16 v16, 0x0

    monitor-exit v17

    goto :goto_0

    .line 805
    :catchall_0
    move-exception v3

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 743
    :cond_2
    const/4 v14, 0x1

    .line 750
    :cond_3
    :try_start_1
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 759
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/audio/FocusRequester;

    .line 763
    .local v15, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_4

    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v3

    move/from16 v0, p7

    if-ne v3, v0, :cond_4

    .line 766
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 767
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 769
    const/16 v16, 0x1

    monitor-exit v17

    goto/16 :goto_0

    .line 753
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_0
    move-exception v13

    .line 755
    .local v13, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/16 v16, 0x0

    monitor-exit v17

    goto/16 :goto_0

    .line 773
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4
    if-nez v14, :cond_5

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 776
    invoke-virtual {v15}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 781
    .end local v15    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 783
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    .line 785
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    if-eqz v14, :cond_7

    .line 788
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v16

    .line 789
    .local v16, "requestResult":I
    if-eqz v16, :cond_6

    .line 790
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 792
    :cond_6
    monitor-exit v17

    goto/16 :goto_0

    .line 795
    .end local v16    # "requestResult":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 796
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 800
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 805
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    const/16 v16, 0x1

    goto/16 :goto_0
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 637
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 638
    return-void

    .line 637
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setRemoteStreamVolume(I)V
    .locals 8
    .param p1, "vol"    # I

    .prologue
    .line 2151
    const/4 v3, -0x1

    .line 2152
    .local v3, "rccId":I
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    monitor-enter v6

    .line 2153
    :try_start_0
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v5, v5, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2154
    monitor-exit v6

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2156
    :cond_1
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMainRemote:Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;

    iget v3, v5, Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;->mRccId:I

    .line 2157
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    const/4 v4, 0x0

    .line 2159
    .local v4, "rvo":Landroid/media/IRemoteVolumeObserver;
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v6

    .line 2164
    :try_start_1
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2165
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v5, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 2167
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRccId()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 2168
    iget-object v4, v2, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2176
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2177
    if-eqz v4, :cond_0

    .line 2179
    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v4, v5, p1}, Landroid/media/IRemoteVolumeObserver;->dispatchRemoteVolumeUpdate(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2180
    :catch_0
    move-exception v0

    .line 2181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "MediaFocusControl"

    const-string v6, "Error dispatching absolute volume update"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2157
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 2164
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    .restart local v4    # "rvo":Landroid/media/IRemoteVolumeObserver;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2172
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_1
    move-exception v0

    .line 2174
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_5
    const-string v5, "MediaFocusControl"

    const-string v7, "Wrong index accessing media button stack, lock error? "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2176
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 834
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 835
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 836
    monitor-exit v1

    .line 837
    return-void

    .line 836
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonEventReceiverForCalls()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    const-string v0, "MediaFocusControl"

    const-string v1, "Invalid permissions to unregister media button receiver for calls"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :goto_0
    return-void

    .line 1625
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v1

    .line 1626
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMediaReceiverForCalls:Landroid/content/ComponentName;

    .line 1627
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1583
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v2

    .line 1586
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 1587
    .local v0, "topOfStackWillChange":Z
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeMediaButtonReceiver_syncPrs(Landroid/app/PendingIntent;)V

    .line 1588
    if-eqz v0, :cond_0

    .line 1590
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1592
    :cond_0
    monitor-exit v2

    .line 1593
    return-void

    .line 1592
    .end local v0    # "topOfStackWillChange":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v3, 0x0

    .line 1596
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3, v3, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1599
    return-void
.end method

.method protected unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 7
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 1685
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v5

    .line 1686
    const/4 v3, 0x0

    .line 1688
    .local v3, "topRccChange":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1689
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlayerRecord;

    .line 1690
    .local v2, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/PlayerRecord;->hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1693
    invoke-virtual {v2}, Lcom/android/server/audio/PlayerRecord;->resetControllerInfoForNoRcc()V

    .line 1694
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v3, 0x1

    .line 1703
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 1705
    const/16 v4, 0xf

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/audio/MediaFocusControl;->checkUpdateRemoteControlDisplay_syncPrs(I)V

    .line 1707
    :cond_1
    monitor-exit v5

    .line 1708
    return-void

    .line 1694
    .restart local v1    # "index":I
    .restart local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1688
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1699
    .end local v1    # "index":I
    .end local v2    # "prse":Lcom/android/server/audio/PlayerRecord;
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "MediaFocusControl"

    const-string v6, "Wrong index accessing RC stack, lock error? "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1707
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 9
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1895
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    monitor-enter v7

    .line 1896
    if-nez p1, :cond_0

    .line 1897
    :try_start_0
    monitor-exit v7

    .line 1929
    :goto_0
    return-void

    .line 1900
    :cond_0
    const/4 v2, 0x0

    .line 1901
    .local v2, "displayWasPluggedIn":Z
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1902
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    .line 1903
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .line 1904
    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    # getter for: Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1905
    const/4 v2, 0x1

    .line 1906
    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->release()V

    .line 1907
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1928
    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .end local v2    # "displayWasPluggedIn":Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1911
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    .restart local v2    # "displayWasPluggedIn":Z
    :cond_2
    if-eqz v2, :cond_4

    .line 1914
    :try_start_1
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1915
    .local v5, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1916
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/PlayerRecord;

    .line 1917
    .local v4, "prse":Lcom/android/server/audio/PlayerRecord;
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1919
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/audio/PlayerRecord;->getRcc()Landroid/media/IRemoteControlClient;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1920
    :catch_0
    move-exception v3

    .line 1921
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "MediaFocusControl"

    const-string v8, "Error disconnecting remote control display to client: "

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1928
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v4    # "prse":Lcom/android/server/audio/PlayerRecord;
    .end local v5    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/PlayerRecord;>;"
    :cond_4
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

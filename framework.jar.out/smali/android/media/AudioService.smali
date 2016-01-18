.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioPolicyProxy;,
        Landroid/media/AudioService$AudioServiceInternal;,
        Landroid/media/AudioService$VolumeController;,
        Landroid/media/AudioService$StreamOverride;,
        Landroid/media/AudioService$MyDisplayStatusCallback;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$StreamVolumeCommand;,
        Landroid/media/AudioService$AudioOrientationEventListener;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_MODE:Z

.field private static final DEBUG_SESSIONS:Z

.field protected static final DEBUG_VOL:Z

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x2e

.field private static DEFAULT_STREAM_VOLUME:[I = null

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static MAX_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PLATFORM_DEFAULT:I = 0x0

.field private static final PLATFORM_TELEVISION:I = 0x2

.field private static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final PREVENT_VOLUME_ADJUSTMENT_IF_SILENT:Z = true

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field private static final STREAM_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOLUME_SETS_RINGER_MODE_SILENT:Z

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0xa

    const/4 v4, 0x3

    .line 118
    const-string v0, "AudioService.MOD"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_MODE:Z

    .line 121
    const-string v0, "AudioService.AP"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_AP:Z

    .line 124
    const-string v0, "AudioService.VOL"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    .line 127
    const-string v0, "AudioService.SESSIONS"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_SESSIONS:Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 253
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 266
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    .line 330
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    .line 346
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v5

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v6

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v7

    const-string v1, "STREAM_MUSIC"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "STREAM_ALARM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STREAM_NOTIFICATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREAM_BLUETOOTH_SCO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STREAM_DTMF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STREAM_TTS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 534
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5453
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v5

    const-string v1, "VIBRATE"

    aput-object v1, v0, v6

    const-string v1, "NORMAL"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 253
    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
    .end array-data

    .line 266
    :array_1
    .array-data 4
        0x4
        0x7
        0x5
        0xb
        0x6
        0x5
        0x7
        0x7
        0xb
        0xb
    .end array-data

    .line 330
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 543
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 173
    new-instance v0, Landroid/media/AudioService$VolumeController;

    invoke-direct {v0}, Landroid/media/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 228
    iput v6, p0, Landroid/media/AudioService;->mMode:I

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 250
    const/4 v0, 0x2

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 288
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 300
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 312
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 359
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 382
    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 401
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 470
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 474
    iput v6, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 484
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 488
    iput v6, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 489
    iput v6, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 493
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 496
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 497
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 501
    const v0, 0x2c1c00

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 507
    iput v6, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 513
    iput-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 515
    iput v6, p0, Landroid/media/AudioService;->mDockState:I

    .line 528
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 530
    iput-boolean v6, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 1629
    iput v6, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 2863
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 4580
    const v0, 0x27f8c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 5242
    iput v6, p0, Landroid/media/AudioService;->mMcc:I

    .line 5246
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 5353
    iput-boolean v6, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 5364
    new-instance v0, Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    .line 5897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 5899
    iput v6, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    .line 544
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 546
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 548
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    iput v4, p0, Landroid/media/AudioService;->mPlatformType:I

    .line 558
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 559
    .local v10, "pm":Landroid/os/PowerManager;
    const-string v0, "handleAudioEvent"

    invoke-virtual {v10, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 561
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 562
    .local v11, "vibrator":Landroid/os/Vibrator;
    if-nez v11, :cond_6

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 565
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    sget-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 567
    .local v9, "maxVolume":I
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v6

    if-eq v9, v0, :cond_0

    .line 568
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput v9, v0, v6

    .line 569
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v6

    .line 571
    :cond_0
    const-string/jumbo v0, "ro.config.media_vol_steps"

    sget-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 573
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v2

    if-eq v9, v0, :cond_1

    .line 574
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput v9, v0, v2

    .line 575
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v2

    .line 578
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 581
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 583
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 585
    new-instance v0, Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 588
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 590
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 592
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 593
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_7

    const/16 v4, 0xb

    :goto_2
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 602
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio_safe_volume_state"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 607
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 610
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 614
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 619
    invoke-direct {p0, v6}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 620
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 621
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 622
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 624
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    .line 628
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 629
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 632
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 634
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 635
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    const-string v0, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 637
    const-string v0, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 639
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 643
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    .line 646
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_2

    .line 647
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 651
    :cond_2
    const-string/jumbo v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    .line 652
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 655
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "monitoring device rotation, initial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mDeviceRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v0, Landroid/media/AudioService$AudioOrientationEventListener;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$AudioOrientationEventListener;-><init>(Landroid/media/AudioService;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    .line 658
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 661
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 664
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 668
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Landroid/media/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioServiceInternal;-><init>(Landroid/media/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 669
    return-void

    .line 551
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "maxVolume":I
    .end local v10    # "pm":Landroid/os/PowerManager;
    .end local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 553
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_0

    .line 555
    :cond_5
    iput v6, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_0

    .line 562
    .restart local v10    # "pm":Landroid/os/PowerManager;
    .restart local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_6
    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_1

    .restart local v7    # "cameraSoundForced":Z
    .restart local v9    # "maxVolume":I
    :cond_7
    move v4, v6

    .line 593
    goto/16 :goto_2

    .line 288
    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data

    .line 300
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 312
    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$AudioHandler;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 113
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$10008(Landroid/media/AudioService;)I
    .locals 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$1002(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$ForceControlStreamClient;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService;ILandroid/os/IBinder;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolCallback;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2502(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;II)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800()[I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    return v0
.end method

.method static synthetic access$4100()[I
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolListenerThread;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$5400()Ljava/util/List;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5600()I
    .locals 1

    .prologue
    .line 113
    sget v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$5800()V
    .locals 0

    .prologue
    .line 113
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$6200(Landroid/media/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$6400(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$6500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$702(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return p1
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7600(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7800(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7900(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$8100(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$8200(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$8300(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8400(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget v0, p0, Landroid/media/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$8502(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$8600(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Landroid/media/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$8900(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$9200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$9202(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$9500(Landroid/media/AudioService;)Landroid/media/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 113
    iget-object v0, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$9602(Landroid/media/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$9700(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9800(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9900(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 113
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method private adjustStreamVolume(IIILjava/lang/String;I)V
    .locals 25
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1014
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    sget-boolean v4, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v4, :cond_2

    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() stream="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dir="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 1021
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1023
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->isMuteAdjust(I)Z

    move-result v15

    .line 1028
    .local v15, "isMuteAdjust":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v24, v4, p1

    .line 1030
    .local v24, "streamTypeAlias":I
    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1034
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v4, v24

    .line 1036
    .local v9, "streamState":Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 1038
    .local v7, "device":I
    invoke-virtual {v9, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1039
    .local v12, "aliasIndex":I
    const/4 v11, 0x1

    .line 1044
    .local v11, "adjustVolume":Z
    and-int/lit16 v4, v7, 0x380

    if-nez v4, :cond_4

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_0

    .line 1049
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v5, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v5, v5, v24

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v5

    .line 1056
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1057
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    and-int/lit8 p3, p3, -0x21

    .line 1060
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_f

    .line 1062
    or-int/lit8 p3, p3, 0x20

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    and-int/lit8 v4, v7, 0xc

    if-eqz v4, :cond_e

    .line 1069
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v22, v0

    .line 1073
    .local v22, "step":I
    :goto_1
    if-eqz v12, :cond_5

    .line 1074
    move/from16 v12, v22

    .line 1083
    :cond_5
    :goto_2
    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v4

    move/from16 v0, v24

    if-ne v0, v4, :cond_9

    .line 1085
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v20

    .line 1087
    .local v20, "ringerMode":I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_7

    .line 1088
    and-int/lit8 p3, p3, -0x11

    .line 1092
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v22

    invoke-direct {v0, v12, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)I

    move-result v19

    .line 1093
    .local v19, "result":I
    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_10

    const/4 v11, 0x1

    .line 1095
    :goto_3
    move/from16 v0, v19

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_8

    .line 1096
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1099
    :cond_8
    move/from16 v0, v19

    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_9

    .line 1100
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 1104
    .end local v19    # "result":I
    .end local v20    # "ringerMode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v18

    .line 1106
    .local v18, "oldIndex":I
    if-eqz v11, :cond_18

    if-eqz p2, :cond_18

    .line 1109
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_b

    and-int/lit16 v4, v7, 0x380

    if-eqz v4, :cond_b

    and-int/lit8 v4, p3, 0x40

    if-nez v4, :cond_b

    .line 1112
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1113
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_a

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1116
    :cond_a
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1119
    :cond_b
    if-eqz v15, :cond_14

    .line 1121
    const/16 v4, 0x65

    move/from16 v0, p2

    if-ne v0, v4, :cond_12

    .line 1122
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_11

    const/16 v21, 0x1

    .line 1126
    .local v21, "state":Z
    :goto_4
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_c

    .line 1127
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/AudioService;->setSystemAudioMute(Z)V

    .line 1129
    :cond_c
    const/16 v23, 0x0

    .local v23, "stream":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v4, v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_15

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v23

    move/from16 v0, v24

    if-ne v0, v4, :cond_d

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, v23

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/media/AudioService$VolumeStreamState;->mute(Z)V

    .line 1133
    new-instance v14, Landroid/content/Intent;

    const-string v4, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v14, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v14, "intent":Landroid/content/Intent;
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    move/from16 v0, v23

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1135
    const-string v4, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    move/from16 v0, v21

    invoke-virtual {v14, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1129
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_d
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 1057
    .end local v18    # "oldIndex":I
    .end local v21    # "state":Z
    .end local v22    # "step":I
    .end local v23    # "stream":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1071
    :cond_e
    invoke-virtual {v9}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v22

    .restart local v22    # "step":I
    goto/16 :goto_1

    .line 1078
    .end local v22    # "step":I
    :cond_f
    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v22

    .restart local v22    # "step":I
    goto/16 :goto_2

    .line 1093
    .restart local v19    # "result":I
    .restart local v20    # "ringerMode":I
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1116
    .end local v19    # "result":I
    .end local v20    # "ringerMode":I
    .restart local v18    # "oldIndex":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1122
    :cond_11
    const/16 v21, 0x0

    goto :goto_4

    .line 1124
    :cond_12
    const/16 v4, -0x64

    move/from16 v0, p2

    if-ne v0, v4, :cond_13

    const/16 v21, 0x1

    .restart local v21    # "state":Z
    :goto_6
    goto :goto_4

    .end local v21    # "state":Z
    :cond_13
    const/16 v21, 0x0

    goto :goto_6

    .line 1139
    :cond_14
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_19

    add-int v4, v12, v22

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1, v4, v7}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v4

    if-nez v4, :cond_19

    .line 1141
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1160
    :cond_15
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v17

    .line 1161
    .local v17, "newIndex":I
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_16

    .line 1162
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1164
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v4, :cond_18

    .line 1165
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v5

    .line 1167
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/AudioService;->mHdmiCecSink:Z

    if-eqz v4, :cond_17

    const/4 v4, 0x3

    move/from16 v0, v24

    if-ne v0, v4, :cond_17

    move/from16 v0, v18

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 1170
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1171
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1c

    const/16 v16, 0x19

    .line 1173
    .local v16, "keyCode":I
    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v8, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v8, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0, v8}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1175
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1177
    .end local v16    # "keyCode":I
    :cond_17
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1180
    .end local v17    # "newIndex":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    invoke-virtual {v4, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v13

    .line 1181
    .local v13, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v13, v3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1143
    .end local v13    # "index":I
    :cond_19
    mul-int v4, p2, v22

    invoke-virtual {v9, v4, v7}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v4

    if-nez v4, :cond_1a

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1146
    :cond_1a
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1148
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/media/AudioService$VolumeStreamState;->mute(Z)V

    .line 1150
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_7

    .line 1171
    .restart local v17    # "newIndex":I
    :cond_1c
    const/16 v16, 0x18

    goto :goto_8

    .line 1175
    .restart local v16    # "keyCode":I
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4

    .line 1177
    .end local v16    # "keyCode":I
    :catchall_3
    move-exception v4

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 977
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isMuteAdjust(I)Z

    move-result v6

    .line 981
    .local v6, "isMute":Z
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 982
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 986
    .local v1, "streamType":I
    :goto_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v7, v0, v1

    .line 989
    .local v7, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1

    .line 991
    and-int/lit8 p3, p3, -0x5

    .line 996
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, v7, p3, v6}, Landroid/media/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 997
    const/4 p1, 0x0

    .line 998
    and-int/lit8 p3, p3, -0x5

    .line 999
    and-int/lit8 p3, p3, -0x11

    .line 1000
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2

    const-string v0, "AudioService"

    const-string v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1003
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1004
    return-void

    .line 984
    .end local v1    # "streamType":I
    .end local v7    # "resolvedStream":I
    :cond_3
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1513
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1515
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1516
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 3344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3345
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3346
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3348
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3349
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 2848
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2850
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 3353
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3354
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3355
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3356
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3357
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3359
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 4446
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 4447
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    .prologue
    .line 744
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 745
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 746
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 747
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 748
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 752
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 746
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_2
    monitor-exit v3

    .line 757
    return-void

    .line 756
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .prologue
    .line 761
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 762
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 763
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 768
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 769
    return-void
.end method

.method private checkForRingerModeChange(III)I
    .locals 5
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 3089
    const/4 v0, 0x1

    .line 3090
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 3092
    .local v1, "ringerMode":I
    packed-switch v1, :pswitch_data_0

    .line 3148
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :cond_0
    :goto_0
    const-string v2, "AudioService.checkForRingerModeChange"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3154
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 3156
    return v0

    .line 3094
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 3095
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 3101
    if-gt p3, p1, :cond_0

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 3102
    const/4 v1, 0x1

    goto :goto_0

    .line 3106
    :cond_1
    if-ge p1, p3, :cond_0

    goto :goto_0

    .line 3115
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_2

    .line 3116
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3120
    :cond_2
    if-ne p2, v3, :cond_4

    .line 3121
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_3

    .line 3125
    or-int/lit16 v0, v0, 0x800

    .line 3131
    :cond_3
    :goto_1
    and-int/lit8 v0, v0, -0x2

    .line 3132
    goto :goto_0

    .line 3128
    :cond_4
    if-ne p2, v4, :cond_3

    .line 3129
    const/4 v1, 0x2

    goto :goto_1

    .line 3134
    :pswitch_2
    if-ne p2, v4, :cond_5

    .line 3136
    or-int/lit16 v0, v0, 0x80

    .line 3145
    :cond_5
    and-int/lit8 v0, v0, -0x2

    .line 3146
    goto :goto_0

    .line 3092
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v2, 0x3

    .line 5305
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5306
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v2, :cond_0

    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, v0, :cond_0

    .line 5310
    const/4 v0, 0x0

    monitor-exit v1

    .line 5312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 5313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 2756
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2760
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2762
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 4588
    const/4 v7, 0x0

    .line 4589
    .local v7, "delay":I
    if-nez p2, :cond_2

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 4590
    const/4 v9, 0x0

    .line 4591
    .local v9, "devices":I
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4592
    .local v8, "dev":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v8

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 4594
    or-int/2addr v9, v8

    goto :goto_0

    .line 4597
    .end local v8    # "dev":I
    :cond_1
    if-ne v9, p1, :cond_2

    .line 4598
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4605
    const/16 v7, 0x3e8

    .line 4609
    .end local v9    # "devices":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4612
    :cond_3
    sget-object v1, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    .line 4613
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 4614
    .local v12, "time":J
    sget-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-lez v0, :cond_4

    .line 4615
    sget-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    .line 4617
    :cond_4
    monitor-exit v1

    .line 4619
    .end local v12    # "time":J
    :cond_5
    return v7

    .line 4617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 4734
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4735
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4736
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 4737
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 4738
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 4739
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 4740
    .local v19, "status":I
    if-nez v19, :cond_8

    .line 4741
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 4742
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v5, v16

    .line 4743
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 4744
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/high16 v21, 0x40000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 4747
    :cond_1
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    .line 4748
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 4749
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4750
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget v8, v3, v12

    .line 4752
    .local v8, "format":I
    if-eqz v8, :cond_2

    .line 4753
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4750
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4756
    .end local v8    # "format":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 4757
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 4758
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 4757
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 4760
    :cond_4
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4763
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    const/4 v15, 0x0

    .line 4764
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_7

    aget v14, v3, v12

    .line 4765
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 4766
    .local v4, "channelCount":I
    if-le v4, v15, :cond_6

    .line 4767
    move v15, v4

    .line 4764
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 4770
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_7
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4776
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 725
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 726
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 727
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 772
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 773
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 775
    .local v2, "streams":[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 776
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 775
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 780
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 781
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1606
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1607
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    .line 1609
    .local v0, "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1610
    invoke-virtual {v0}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 1611
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1612
    const/4 v2, 0x1

    .line 1615
    .end local v0    # "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2817
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2818
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2819
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 2821
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 2822
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 2823
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2825
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2836
    :cond_1
    :goto_0
    monitor-exit v7

    .line 2837
    return-void

    .line 2828
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2830
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 2836
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2834
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .param p1, "volume"    # F
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 1760
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 1762
    .local v8, "oldVolume":I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1764
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 1765
    .local v7, "newVolume":I
    if-eq v7, v8, :cond_0

    .line 1767
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1769
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterMaxVolume()I

    move-result v0

    invoke-direct {p0, v8, v7, v0, p2}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1772
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 1774
    .end local v7    # "newVolume":I
    .end local v8    # "oldVolume":I
    :cond_1
    return-void
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 5829
    const-string v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5830
    iget-object v3, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 5831
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

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

    check-cast v1, Landroid/media/AudioService$AudioPolicyProxy;

    .line 5832
    .local v1, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-virtual {v1}, Landroid/media/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5834
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5835
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 5460
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5463
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5464
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5465
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5466
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5467
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5468
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 784
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 786
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 787
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 789
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 792
    iget v2, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 5280
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5281
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 5282
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 5284
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    .line 5285
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 5286
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 5287
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5289
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5290
    .local v10, "index":I
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    .line 5291
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 5292
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5300
    :cond_1
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 5301
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5302
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private enforceSelfOrSystemUI(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 5514
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3221
    sparse-switch p1, :sswitch_data_0

    .line 3230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3232
    :sswitch_0
    return-void

    .line 3221
    nop

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
    .end sparse-switch
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 1834
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1837
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .param p1, "steps"    # I

    .prologue
    .line 3235
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 3236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3238
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3241
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3244
    :cond_1
    return-void
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .param p1, "direction"    # I
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1405
    const/4 v0, 0x0

    .line 1406
    .local v0, "delta":I
    if-ne p1, v5, :cond_4

    .line 1407
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return v3

    .line 1411
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1414
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v5, :cond_2

    .line 1415
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 1416
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1    # "i":I
    :cond_2
    :goto_2
    move v3, v0

    .line 1436
    goto :goto_0

    .line 1414
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 1420
    .end local v1    # "i":I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 1421
    if-eqz p2, :cond_0

    .line 1424
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1426
    .local v2, "length":I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1429
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 1430
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 1431
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1432
    goto :goto_2

    .line 1429
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x5

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 3276
    iget v4, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v4, :pswitch_data_0

    .line 3310
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3311
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 3313
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3314
    :cond_0
    const/4 p1, 0x6

    .line 3339
    .end local p1    # "suggestedStreamType":I
    :cond_1
    :goto_0
    return p1

    .line 3278
    .restart local p1    # "suggestedStreamType":I
    :pswitch_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3279
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 3282
    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    move p1, v0

    .line 3285
    goto :goto_0

    .line 3287
    :cond_3
    if-ne p1, v5, :cond_7

    .line 3288
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3289
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_4

    .line 3290
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move p1, v1

    .line 3291
    goto :goto_0

    .line 3293
    :cond_5
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_6

    .line 3294
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move p1, v2

    .line 3295
    goto :goto_0

    .line 3297
    :cond_7
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3298
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_8

    .line 3299
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move p1, v1

    .line 3300
    goto :goto_0

    .line 3304
    :pswitch_1
    if-ne p1, v5, :cond_12

    move p1, v1

    .line 3306
    goto :goto_0

    .line 3316
    :cond_9
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_a

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move p1, v0

    .line 3317
    goto :goto_0

    .line 3319
    :cond_b
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_c

    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3323
    :cond_c
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_d

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move p1, v3

    .line 3324
    goto :goto_0

    .line 3325
    :cond_e
    if-ne p1, v5, :cond_12

    .line 3326
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3327
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_f

    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move p1, v1

    .line 3328
    goto/16 :goto_0

    .line 3330
    :cond_10
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_11

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: using STREAM_NOTIFICATION as default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move p1, v3

    .line 3332
    goto/16 :goto_0

    .line 3337
    :cond_12
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_1

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2801
    const/4 v8, 0x0

    .line 2802
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 2803
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 2804
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 2811
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2813
    return v8

    :cond_1
    move v6, v2

    .line 2811
    goto :goto_0
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1707
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 3408
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 3409
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 3416
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3417
    const/4 v0, 0x2

    .line 3428
    :cond_0
    :goto_0
    return v0

    .line 3418
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 3419
    const/high16 v0, 0x40000

    goto :goto_0

    .line 3420
    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 3421
    const/high16 v0, 0x80000

    goto :goto_0

    .line 3422
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 3423
    const/high16 v0, 0x200000

    goto :goto_0

    .line 3425
    :cond_4
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method protected static getMaxStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1703
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 2765
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2766
    const/4 v0, 0x0

    .line 2767
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2768
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .local v1, "client":Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2769
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2770
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 2771
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 2777
    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 2768
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 2773
    :cond_1
    if-eqz p2, :cond_2

    .line 2774
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2775
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 2778
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2019
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 2022
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2024
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5080
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 5082
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 5083
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 5084
    .local v11, "newOrientation":I
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    .line 5085
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 5086
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 5089
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5097
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 5099
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5100
    const/4 v8, 0x0

    .line 5101
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5102
    :try_start_2
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_1

    .line 5103
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 5104
    const/4 v8, 0x1

    .line 5106
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5107
    if-eqz v8, :cond_3

    .line 5108
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5109
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 5110
    .local v12, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    .line 5111
    invoke-virtual {v12}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 5112
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 5120
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 5123
    .end local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_5

    const/16 v4, 0xb

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5132
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5139
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5140
    :try_start_4
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5144
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    .line 5106
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 5139
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 5141
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 5142
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5115
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    :try_start_8
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v12, v0}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 5116
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 5123
    .end local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 6
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4557
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 4558
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 4561
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 4562
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4565
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4566
    monitor-exit v4

    move v1, v2

    .line 4575
    :goto_1
    return v1

    .end local v0    # "isConnected":Z
    :cond_1
    move v0, v3

    .line 4558
    goto :goto_0

    .line 4567
    .restart local v0    # "isConnected":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 4568
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4571
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4572
    monitor-exit v4

    move v1, v2

    goto :goto_1

    .line 4574
    :cond_3
    monitor-exit v4

    move v1, v3

    .line 4575
    goto :goto_1

    .line 4574
    .end local v0    # "isConnected":Z
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1620
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1621
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1622
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1623
    const/4 v1, 0x1

    .line 1626
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 4451
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3271
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

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

.method private isInCommunication()Z
    .locals 6

    .prologue
    .line 3252
    const/4 v0, 0x0

    .line 3254
    .local v0, "IsInCall":Z
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3257
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3258
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3259
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3261
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMuteAdjust(I)Z
    .locals 1
    .param p1, "adjust"    # I

    .prologue
    .line 3247
    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 165
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3165
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2226
    sget-object v1, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2228
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2229
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2231
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 14

    .prologue
    .line 2234
    const/4 v9, 0x0

    .line 2237
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2306
    :cond_0
    :goto_0
    return-void

    .line 2241
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2244
    :try_start_0
    iget-object v11, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1110001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2246
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2247
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2248
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2250
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2252
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2253
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2254
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2265
    :goto_1
    if-eqz v7, :cond_3

    .line 2266
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2267
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2268
    if-nez v1, :cond_5

    .line 2302
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 2303
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2257
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2258
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2259
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2260
    const/4 v7, 0x1

    .line 2261
    goto :goto_1

    .line 2271
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2272
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2273
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2277
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2278
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 2284
    .local v4, "fx":I
    :try_start_3
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2285
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_6

    .line 2286
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2287
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2289
    :cond_6
    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2295
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2296
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2302
    if-eqz v9, :cond_0

    .line 2303
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2279
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2280
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2297
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2298
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2302
    if-eqz v9, :cond_0

    .line 2303
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2299
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 2300
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2302
    if-eqz v9, :cond_0

    .line 2303
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2302
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_7

    .line 2303
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 4378
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 4379
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4381
    invoke-virtual {p0, v7}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4382
    invoke-static {v3, v7, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4386
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4387
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4389
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 4418
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4420
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4422
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4423
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4425
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 4397
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4398
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 4399
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4400
    invoke-static {v3, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4403
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4404
    iget-object v7, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 4406
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4407
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4408
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4411
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4412
    return-void

    .line 4399
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4411
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 4429
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4432
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4434
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x7ffe0000

    .line 4438
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4441
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4442
    return-void
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2853
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 2854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2855
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2856
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2858
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2859
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2861
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive()V
    .locals 11

    .prologue
    const v10, 0xea60

    .line 3003
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3004
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3005
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3007
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_1

    .line 3008
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3015
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3016
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_1

    .line 3019
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3020
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 3021
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 3022
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3024
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->saveMusicActiveMs()V

    .line 3028
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_1
    monitor-exit v9

    .line 3029
    return-void

    .line 3028
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    .line 3036
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3037
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    .line 3038
    .local v7, "mcc":I
    iget v1, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v1, v7, :cond_0

    iget v1, p0, Landroid/media/AudioService;->mMcc:I

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 3039
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 3041
    const-string v1, "audio.safemedia.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v8, v0

    .line 3049
    .local v8, "safeMediaVolumeEnabled":Z
    :cond_2
    if-eqz v8, :cond_6

    .line 3050
    const/4 v3, 0x3

    .line 3054
    .local v3, "persistedState":I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 3055
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    if-nez v0, :cond_5

    .line 3056
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3057
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 3067
    :cond_3
    :goto_0
    iput v7, p0, Landroid/media/AudioService;->mMcc:I

    .line 3068
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3076
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_4
    monitor-exit v9

    .line 3077
    return-void

    .line 3060
    .restart local v3    # "persistedState":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 3076
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3064
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_6
    const/4 v3, 0x1

    .line 3065
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .prologue
    .line 4392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4393
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 4456
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    .line 4457
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4459
    :cond_0
    if-nez p1, :cond_1

    .line 4515
    :goto_0
    return-void

    .line 4462
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 4463
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4464
    const-string v7, ""

    .line 4467
    :cond_2
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 4468
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4472
    .local v8, "isConnected":Z
    :goto_1
    if-eqz v8, :cond_8

    if-eq p2, v4, :cond_8

    .line 4473
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4474
    if-nez p2, :cond_3

    .line 4478
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 4484
    :cond_3
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4485
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 4486
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4487
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4490
    :cond_4
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4514
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v8    # "isConnected":Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    move v8, v1

    .line 4468
    goto :goto_1

    .line 4482
    .restart local v8    # "isConnected":Z
    :cond_7
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 4490
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 4491
    :cond_8
    if-nez v8, :cond_5

    if-ne p2, v4, :cond_5

    .line 4492
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4494
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4495
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 4504
    :cond_9
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 4505
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4506
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 4507
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4508
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4509
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4512
    :cond_a
    monitor-exit v11

    goto :goto_3

    .end local v9    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 4499
    :cond_b
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4500
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4501
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x2

    .line 4519
    sget-boolean v2, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_0

    .line 4520
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    :cond_0
    if-nez p1, :cond_1

    .line 4541
    :goto_0
    return-void

    .line 4525
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4526
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4527
    const-string v0, ""

    .line 4530
    :cond_2
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 4531
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 4535
    .local v1, "isConnected":Z
    :goto_1
    if-eqz v1, :cond_5

    if-eq p2, v5, :cond_5

    .line 4536
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 4540
    :cond_3
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "isConnected":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4531
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 4537
    .restart local v1    # "isConnected":Z
    :cond_5
    if-nez v1, :cond_3

    if-ne p2, v5, :cond_3

    .line 4538
    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onSetStreamVolume(IIII)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v3, 0x0

    .line 1257
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-direct {p0, v1, p2, p4, v3}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 1259
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1262
    :cond_0
    if-nez p2, :cond_3

    .line 1263
    iget-boolean v1, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 1269
    .local v0, "newRingerMode":I
    :goto_0
    const-string v1, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v0, v1, v3}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1271
    .end local v0    # "newRingerMode":I
    :cond_1
    return-void

    .line 1263
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1267
    :cond_3
    const/4 v0, 0x2

    .restart local v0    # "newRingerMode":I
    goto :goto_0
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 9
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x20000

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4680
    iget-object v8, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v8

    .line 4681
    if-nez p2, :cond_1

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 4684
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4686
    :cond_1
    and-int/lit16 v2, p1, -0x6001

    if-eqz v2, :cond_2

    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_a

    const v2, 0x7fffe7ff

    and-int/2addr v2, p1

    if-nez v2, :cond_a

    :cond_2
    move v7, v0

    .line 4689
    .local v7, "isUsb":Z
    :goto_0
    if-ne p2, v0, :cond_3

    move v1, v0

    :cond_3
    if-eqz v7, :cond_b

    move-object v0, p3

    :goto_1
    invoke-direct {p0, v1, p1, v0}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 4690
    if-eqz p2, :cond_c

    .line 4691
    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_5

    .line 4694
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4696
    :cond_5
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_6

    .line 4697
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4706
    :cond_6
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_8

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_8

    .line 4707
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 4708
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 4709
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8

    .line 4710
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4711
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_7

    .line 4712
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 4713
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 4715
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4727
    :cond_8
    :goto_2
    if-nez v7, :cond_9

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_9

    .line 4728
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 4730
    :cond_9
    monitor-exit v8

    .line 4731
    return-void

    .end local v7    # "isUsb":Z
    :cond_a
    move v7, v1

    .line 4686
    goto :goto_0

    .line 4689
    .restart local v7    # "isUsb":Z
    :cond_b
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 4715
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 4730
    .end local v7    # "isUsb":Z
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 4719
    .restart local v7    # "isUsb":Z
    :cond_c
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_8

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_8

    .line 4720
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8

    .line 4721
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4722
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 4723
    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3371
    .local v8, "ident":J
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3372
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3373
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3374
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 5507
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 5508
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 5509
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 9
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 2416
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 2419
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 2420
    .local v0, "numStreamTypes":I
    const/4 v2, 0x0

    .local v2, "streamType":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2421
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 2423
    .local v1, "streamState":Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v3, v8, :cond_0

    .line 2420
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2427
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2428
    const-class v4, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 2430
    :try_start_0
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3

    .line 2432
    :cond_2
    const/4 v3, 0x0

    # setter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1, v3}, Landroid/media/AudioService$VolumeStreamState;->access$302(Landroid/media/AudioService$VolumeStreamState;Z)Z

    .line 2434
    :cond_3
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2439
    .end local v1    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v3

    invoke-direct {p0, v3, v5}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2441
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 2442
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 2444
    iget-object v4, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 2445
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v5, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x0

    const v6, 0x44aa200

    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    iput v3, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 2448
    iget-object v3, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 2449
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 2451
    :cond_5
    monitor-exit v4

    .line 2452
    return-void

    .line 2451
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 846
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 849
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 850
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 855
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2

    move v4, v1

    :goto_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 863
    return-void

    :cond_0
    move v0, v6

    .line 846
    goto :goto_0

    .line 852
    :cond_1
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_1

    :cond_2
    move v4, v6

    .line 855
    goto :goto_2
.end method

.method private readPersistedSettings()V
    .locals 13

    .prologue
    const/4 v7, 0x2

    const/4 v12, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 866
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 868
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 871
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 874
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->isValidRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 875
    const/4 v3, 0x2

    .line 877
    :cond_0
    if-ne v3, v5, :cond_1

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v8, :cond_1

    .line 878
    const/4 v3, 0x0

    .line 880
    :cond_1
    if-eq v3, v4, :cond_2

    .line 881
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    :cond_2
    iget-boolean v8, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_3

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 884
    :cond_3
    const/4 v3, 0x2

    .line 886
    :cond_4
    iget-object v9, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 887
    :try_start_0
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 888
    iget v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 889
    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 895
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    move v8, v7

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 899
    iget v8, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v10, 0x0

    iget-boolean v11, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v11, :cond_8

    :goto_1
    invoke-static {v8, v10, v7}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 904
    invoke-virtual {p0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    .line 905
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 906
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    const-string/jumbo v7, "mute_streams_affected"

    const/16 v8, 0x2e

    invoke-static {v0, v7, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iput v7, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 915
    const-string/jumbo v7, "volume_master_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_9

    move v1, v5

    .line 917
    .local v1, "masterMute":Z
    :goto_2
    iget-boolean v7, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v7, :cond_6

    .line 918
    const/4 v1, 0x0

    .line 919
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 921
    :cond_6
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 922
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 924
    const-string/jumbo v7, "microphone_mute"

    invoke-static {v0, v7, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_a

    move v2, v5

    .line 926
    .local v2, "microphoneMute":Z
    :goto_3
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 931
    const-string v7, "android.media.RINGER_MODE_CHANGED"

    iget v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 932
    const-string v7, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-direct {p0, v7, v8}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 935
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 936
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 939
    iget-object v5, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Landroid/media/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 940
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_7
    move v8, v6

    .line 895
    goto :goto_0

    :cond_8
    move v7, v6

    .line 899
    goto :goto_1

    .line 906
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_9
    move v1, v6

    .line 915
    goto :goto_2

    .restart local v1    # "masterMute":Z
    :cond_a
    move v2, v6

    .line 924
    goto :goto_3
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 943
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 2840
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2841
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2842
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2843
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2844
    monitor-exit v1

    .line 2845
    return-void

    .line 2844
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 5

    .prologue
    .line 1959
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_1

    .line 1960
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1970
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 1964
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1966
    .local v0, "volume":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 1967
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    goto :goto_0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 5495
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5501
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5496
    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_0

    .line 5497
    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_0

    .line 5498
    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_0

    .line 5499
    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_0

    .line 5495
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .prologue
    .line 3032
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3033
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1440
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1443
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1447
    return-void

    .line 1445
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 4624
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 4626
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4627
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4628
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4630
    const/4 v9, 0x0

    .line 4632
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 4633
    const/4 v9, 0x1

    .line 4634
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4635
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4654
    :cond_0
    :goto_0
    iget-object v14, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14

    .line 4655
    if-eqz v9, :cond_1

    .line 4656
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v13, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 4657
    .local v13, "newConn":I
    if-eqz p2, :cond_8

    .line 4658
    or-int/2addr v13, v9

    .line 4662
    :goto_1
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v13, v2, :cond_1

    .line 4663
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v13, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 4664
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4668
    .end local v13    # "newConn":I
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4670
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4672
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4674
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4676
    return-void

    .line 4636
    .end local v10    # "ident":J
    :cond_2
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 4639
    :cond_3
    const/4 v9, 0x2

    .line 4640
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4641
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 4642
    :cond_4
    const/16 v2, 0x800

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 4643
    const/4 v9, 0x4

    .line 4644
    const-string v2, "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4645
    :cond_5
    const/16 v2, 0x1000

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 4646
    const/4 v9, 0x4

    .line 4647
    const-string v2, "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4648
    :cond_6
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 4650
    :cond_7
    const/16 v9, 0x8

    .line 4651
    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Landroid/media/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4660
    .restart local v13    # "newConn":I
    :cond_8
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v13, v2

    goto :goto_1

    .line 4668
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4674
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1506
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {p0, p2}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1507
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1508
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "oldVolume"    # I
    .param p3, "newVolume"    # I

    .prologue
    .line 1496
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeController;->postMasterVolumeChanged(I)V

    .line 1498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1500
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1501
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1502
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3379
    if-nez p2, :cond_3

    .line 3380
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3384
    :cond_0
    sget-object v3, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 3385
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 3386
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3387
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 3390
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 3392
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3393
    .end local v0    # "time":J
    :goto_0
    return-void

    .line 3381
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3392
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1452
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1456
    return-void

    .line 1454
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1460
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1461
    const/4 p1, 0x5

    .line 1464
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1465
    invoke-direct {p0, p4}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 1467
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, p1, p4}, Landroid/media/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1469
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_2

    .line 1470
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 1471
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 1472
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1473
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1474
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1476
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1478
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private setMasterMuteInternal(IILjava/lang/String;I)V
    .locals 9
    .param p1, "adjust"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1673
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_3

    .line 1679
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_2

    move v8, v3

    .line 1683
    .local v8, "state":Z
    :goto_1
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq v8, v0, :cond_0

    .line 1684
    invoke-direct {p0, v8}, Landroid/media/AudioService;->setSystemAudioMute(Z)V

    .line 1685
    invoke-static {v8}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1687
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    if-eqz v8, :cond_5

    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1689
    invoke-direct {p0, v8, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1691
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1692
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1693
    invoke-direct {p0, v7}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "state":Z
    :cond_2
    move v8, v2

    .line 1679
    goto :goto_1

    .line 1681
    :cond_3
    const/16 v0, -0x64

    if-ne p1, v0, :cond_4

    move v8, v3

    .restart local v8    # "state":Z
    :goto_3
    goto :goto_1

    .end local v8    # "state":Z
    :cond_4
    move v8, v2

    goto :goto_3

    .restart local v8    # "state":Z
    :cond_5
    move v3, v2

    .line 1687
    goto :goto_2
.end method

.method private setModeInt(ILandroid/os/IBinder;I)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2112
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_0

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setModeInt(mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_0
    const/4 v8, 0x0

    .line 2114
    .local v8, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 2115
    const-string v12, "AudioService"

    const-string/jumbo v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2196
    .end local v8    # "newModeOwnerPid":I
    .local v9, "newModeOwnerPid":I
    :goto_0
    return v9

    .line 2119
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_1
    const/4 v5, 0x0

    .line 2120
    .local v5, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2121
    .local v7, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2122
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2123
    .local v4, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_2

    .line 2124
    move-object v5, v4

    .line 2126
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2127
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2131
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_3
    const/4 v10, 0x0

    .line 2133
    .local v10, "status":I
    :cond_4
    if-nez p1, :cond_a

    .line 2135
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2136
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2137
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2138
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2139
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_5

    .line 2140
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v5}, Landroid/media/AudioService$SetModeDeathHandler;->access$1600(Landroid/media/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_5
    :goto_1
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_f

    .line 2163
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 2164
    if-nez v10, :cond_c

    .line 2165
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_6

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mode successfully set to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_6
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioService;->mMode:I

    .line 2179
    :goto_2
    if-eqz v10, :cond_7

    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2181
    :cond_7
    if-nez v10, :cond_9

    .line 2182
    if-eqz p1, :cond_8

    .line 2183
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2184
    const-string v12, "AudioService"

    const-string/jumbo v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_8
    :goto_3
    const/high16 v12, -0x80000000

    invoke-direct {p0, v12}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v11

    .line 2190
    .local v11, "streamType":I
    invoke-direct {p0, v11}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 2191
    .local v2, "device":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2192
    .local v6, "index":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v2, v13}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 2194
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v2    # "device":I
    .end local v6    # "index":I
    .end local v11    # "streamType":I
    :cond_9
    move v9, v8

    .line 2196
    .end local v8    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 2145
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_a
    if-nez v5, :cond_b

    .line 2146
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 2150
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_b
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2158
    :goto_4
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2159
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 2151
    :catch_0
    move-exception v3

    .line 2153
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2168
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v5, :cond_d

    .line 2169
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2170
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2173
    :cond_d
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_e

    const-string v12, "AudioService"

    const-string v13, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    :cond_e
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 2177
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2186
    :cond_10
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_3
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5147
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5165
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5167
    :goto_0
    return-void

    .line 5150
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5154
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5158
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5162
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1854
    iget-boolean v4, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 1858
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1860
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidRingerMode(I)V

    .line 1861
    if-ne p1, v5, :cond_4

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_4

    .line 1862
    const/4 p1, 0x0

    .line 1864
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1866
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1867
    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v3

    .line 1868
    .local v3, "ringerModeInternal":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    .line 1869
    .local v2, "ringerModeExternal":I
    if-eqz p3, :cond_7

    .line 1870
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setRingerModeExt(I)V

    .line 1871
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_5

    .line 1872
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4, v2, p1, p2, v3}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;I)I

    move-result p1

    .line 1875
    :cond_5
    if-eq p1, v3, :cond_6

    .line 1876
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1888
    :cond_6
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1879
    :cond_7
    if-eq p1, v3, :cond_8

    .line 1880
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1882
    :cond_8
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_9

    .line 1883
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4, v3, p1, p2, v2}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;I)I

    move-result p1

    .line 1886
    :cond_9
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setRingerModeExt(I)V

    goto :goto_1

    .line 1888
    .end local v2    # "ringerModeExternal":I
    .end local v3    # "ringerModeInternal":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1890
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 1895
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1896
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 1901
    :goto_0
    return-void

    .line 1897
    :cond_0
    iput p1, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 1898
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1900
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    goto :goto_0

    .line 1898
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 18
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1905
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1906
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    const/4 v9, 0x1

    .line 1907
    .local v9, "change":Z
    :goto_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mRingerMode:I

    .line 1908
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    .line 1915
    .local v13, "numStreamTypes":I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v14, 0x1

    .line 1917
    .local v14, "ringerModeMute":Z
    :goto_1
    add-int/lit8 v17, v13, -0x1

    .local v17, "streamType":I
    :goto_2
    if-ltz v17, :cond_a

    .line 1918
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v12

    .line 1919
    .local v12, "isMuted":Z
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v16, 0x1

    .line 1920
    .local v16, "shouldMute":Z
    :goto_3
    move/from16 v0, v16

    if-ne v12, v0, :cond_4

    .line 1917
    :goto_4
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 1906
    .end local v9    # "change":Z
    .end local v12    # "isMuted":Z
    .end local v13    # "numStreamTypes":I
    .end local v14    # "ringerModeMute":Z
    .end local v16    # "shouldMute":Z
    .end local v17    # "streamType":I
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 1908
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1915
    .restart local v9    # "change":Z
    .restart local v13    # "numStreamTypes":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 1919
    .restart local v12    # "isMuted":Z
    .restart local v14    # "ringerModeMute":Z
    .restart local v17    # "streamType":I
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 1921
    .restart local v16    # "shouldMute":Z
    :cond_4
    if-nez v16, :cond_9

    .line 1925
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v17

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 1927
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1928
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v17

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 1929
    .local v15, "set":Ljava/util/Set;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1930
    .local v11, "i":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1931
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1932
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    .line 1933
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1936
    .end local v10    # "entry":Ljava/util/Map$Entry;
    .end local v11    # "i":Ljava/util/Iterator;
    .end local v15    # "set":Ljava/util/Set;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .restart local v11    # "i":Ljava/util/Iterator;
    .restart local v15    # "set":Ljava/util/Set;
    :cond_7
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1938
    .end local v11    # "i":Ljava/util/Iterator;
    .end local v15    # "set":Ljava/util/Set;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v17

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Z)V

    .line 1939
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v3, v3, v17

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_4

    .line 1942
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v17

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Z)V

    .line 1943
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v3, v3, v17

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_4

    .line 1948
    .end local v12    # "isMuted":Z
    .end local v16    # "shouldMute":Z
    :cond_a
    if-eqz p2, :cond_b

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1952
    :cond_b
    if-eqz v9, :cond_c

    .line 1954
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1956
    :cond_c
    return-void
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    .prologue
    .line 5170
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    packed-switch v0, :pswitch_data_0

    .line 5184
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    :goto_0
    return-void

    .line 5172
    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5175
    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5178
    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5181
    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5170
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5257
    iget-object v7, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 5258
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5260
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 5261
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5262
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 5276
    :cond_0
    :goto_0
    monitor-exit v7

    .line 5277
    return-void

    .line 5263
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 5264
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5265
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 5266
    invoke-direct {p0}, Landroid/media/AudioService;->saveMusicActiveMs()V

    .line 5267
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 5276
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;I)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v3, 0x3

    .line 1280
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1285
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, p1

    .line 1286
    .local v8, "streamTypeAlias":I
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v0, v8

    .line 1288
    .local v7, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 1293
    .local v5, "device":I
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_2

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_0

    .line 1298
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v1, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1, p5, p4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 1305
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1307
    invoke-virtual {v7, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1309
    .local v6, "oldIndex":I
    mul-int/lit8 v0, p2, 0xa

    invoke-direct {p0, v0, p1, v8}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1311
    if-ne v8, v3, :cond_4

    and-int/lit16 v0, v5, 0x380

    if-eqz v0, :cond_4

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_4

    .line 1314
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1315
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_3

    .line 1316
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1318
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1321
    :cond_4
    if-ne v8, v3, :cond_5

    .line 1322
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {p0, v6, p2, v0, p3}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1325
    :cond_5
    and-int/lit8 p3, p3, -0x21

    .line 1326
    if-ne v8, v3, :cond_6

    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    .line 1328
    or-int/lit8 p3, p3, 0x20

    .line 1331
    if-eqz p2, :cond_6

    .line 1332
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_7

    and-int/lit8 v0, v5, 0xc

    if-eqz v0, :cond_7

    .line 1334
    iget p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 1341
    :cond_6
    :goto_1
    invoke-direct {p0, v8, p2, v5}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1342
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p3}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1343
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1349
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1350
    invoke-direct {p0, p1, v6, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1349
    .end local v6    # "oldIndex":I
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1336
    .restart local v6    # "oldIndex":I
    :cond_7
    :try_start_5
    invoke-virtual {v7}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_1

    .line 1346
    :cond_8
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 1347
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p2

    goto :goto_2
.end method

.method private setStreamVolumeInt(IIIZ)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1532
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1534
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 1537
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1545
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 1548
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1550
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1559
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1551
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1554
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1556
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1559
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1556
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1558
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1185
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1193
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1203
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1194
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1197
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v5, p1, 0x5

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, p2, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v5, v6, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1200
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1202
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1203
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1200
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1202
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .prologue
    .line 797
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 799
    :goto_0
    return-object v0

    .line 798
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    goto :goto_0

    .line 799
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1483
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 1485
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 1487
    and-int/lit8 p1, p1, -0x2

    .line 1489
    :cond_0
    monitor-exit v1

    .line 1491
    :cond_1
    return p1

    .line 1489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .param p1, "updateVolumes"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 805
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 815
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 816
    const/4 v7, 0x3

    .line 819
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    iput v3, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 830
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 831
    if-eqz p1, :cond_0

    .line 832
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 834
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 835
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 842
    :cond_0
    return-void

    .line 807
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 808
    const/4 v7, 0x2

    .line 809
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 811
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 812
    const/4 v7, 0x3

    .line 813
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 822
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    const/4 v7, 0x0

    .line 824
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 826
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 731
    monitor-enter p0

    .line 732
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 735
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 740
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 5056
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1208
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioService;->adjustMasterVolume(IILjava/lang/String;I)V

    .line 1209
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;I)V
    .locals 7
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1212
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1215
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isMuteAdjust(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1216
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioService;->setMasterMuteInternal(IILjava/lang/String;I)V

    goto :goto_0

    .line 1219
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 1220
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1221
    .local v4, "volume":I
    const/4 v0, 0x0

    .line 1222
    .local v0, "delta":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1223
    .local v3, "numSteps":I
    if-lez p1, :cond_2

    const/4 v1, 0x1

    .line 1224
    .local v1, "direction":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 1225
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 1226
    add-int/2addr v4, v0

    .line 1224
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1223
    .end local v1    # "direction":I
    .end local v2    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1230
    .restart local v1    # "direction":I
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {p0, v4, p2, p3, p4}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1010
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 973
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 4545
    iget-object v7, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4546
    :try_start_0
    iput-boolean p2, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 4547
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4550
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4553
    monitor-exit v7

    .line 4554
    return-void

    .line 4553
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 3396
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3398
    const/4 v1, 0x1

    .line 3404
    :goto_0
    return v1

    .line 3400
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3403
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 2782
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2783
    const/4 v2, 0x0

    .line 2784
    .local v2, "savedClient":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2785
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2786
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 2787
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 2788
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2785
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2790
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 2793
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2794
    if-eqz v2, :cond_2

    .line 2795
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    :cond_2
    monitor-exit v5

    .line 2798
    return-void

    .line 2797
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .locals 5

    .prologue
    .line 5318
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5319
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5320
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 5321
    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_0

    .line 5322
    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v0, v0, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v2, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v2, v2, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v4, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v4, v4, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 5326
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 5328
    :cond_0
    monitor-exit v1

    .line 5329
    return-void

    .line 5328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5472
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5474
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 5475
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 5476
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 5477
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5478
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5479
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5481
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5482
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5483
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5484
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Landroid/media/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5485
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5486
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5487
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5488
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5489
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5491
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 5492
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 1634
    if-nez p2, :cond_0

    .line 1670
    :goto_0
    return-void

    .line 1637
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1639
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1642
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1643
    const/4 v0, 0x0

    .line 1644
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    .line 1645
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1646
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    .line 1648
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 1649
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 1650
    const/4 v0, 0x1

    .line 1652
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1664
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1666
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 1667
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1669
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1655
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Landroid/media/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    .line 1656
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1657
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    .line 1658
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 1659
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1660
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1355
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1356
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1357
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1358
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1360
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1365
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1366
    return-void

    .line 1363
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 1365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 5064
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 1795
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1788
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1789
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1790
    .local v0, "device":I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 1783
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 2

    .prologue
    .line 1800
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 1731
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1732
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2201
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerModeExternal()I
    .locals 2

    .prologue
    .line 1821
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1822
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    monitor-exit v1

    return v0

    .line 1823
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 1828
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1829
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 1830
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5207
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1779
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 1712
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1713
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1714
    .local v0, "device":I
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1715
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1718
    .local v1, "index":I
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1719
    const/4 v1, 0x0

    .line 1721
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 1723
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1725
    :cond_1
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v3

    return v2

    .line 1726
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 1995
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1996
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 2515
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2516
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 2517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 2499
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 5448
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 5449
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 5450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .prologue
    .line 5392
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1699
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2476
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3217
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3161
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1564
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 1565
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1567
    :cond_0
    const-class v1, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 1568
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    .line 1841
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2329
    const/4 v7, 0x3

    .line 2330
    .local v7, "attempts":I
    new-instance v5, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2332
    .local v5, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2333
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 2334
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 2336
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 2339
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .line 2337
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_0
    move-exception v9

    .line 2338
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2339
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v7, v8

    .line 2341
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2342
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    return v0

    .line 2341
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v11

    .line 2342
    goto :goto_1

    .line 2341
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_2
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 5551
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5554
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5560
    :cond_0
    :goto_0
    return-void

    .line 5558
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->setVisible(Z)V

    .line 5559
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    .line 678
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 681
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 683
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 684
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    .line 685
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    .line 688
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 691
    invoke-direct {p0, v8}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 693
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 694
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 695
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 701
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    .line 702
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 704
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 705
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 707
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 709
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/16 v6, 0x7530

    move v2, v3

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 720
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 721
    return-void

    .line 709
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 2310
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    .line 2311
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2315
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2316
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    :goto_0
    return-void

    .line 2320
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 5743
    sget-boolean v5, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerAudioPolicy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    :cond_0
    const/4 v3, 0x0

    .line 5747
    .local v3, "regId":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 5750
    .local v2, "hasPermissionForPolicy":Z
    :cond_1
    if-nez v2, :cond_2

    .line 5751
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t register audio policy for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    :goto_0
    return-object v4

    .line 5756
    :cond_2
    iget-object v5, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 5758
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5759
    const-string v6, "AudioService"

    const-string v7, "Cannot re-register policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5760
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 5772
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 5762
    :cond_3
    :try_start_2
    new-instance v0, Landroid/media/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/AudioService$AudioPolicyProxy;-><init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 5763
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 5764
    invoke-virtual {v0}, Landroid/media/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 5765
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5772
    :try_start_3
    monitor-exit v5

    move-object v4, v3

    .line 5773
    goto :goto_0

    .line 5766
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v1

    .line 5768
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio policy registration failed, could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5770
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5004
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 5000
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 2411
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    .line 2412
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5012
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 5013
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 5017
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 5018
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 5033
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5034
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5035
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5037
    const-string v0, "AudioService"

    const-string v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5038
    const/4 v0, 0x0

    .line 5051
    :goto_0
    return v0

    .line 5042
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 5043
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5044
    const-string v0, "AudioService"

    const-string v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 5047
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5051
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 3446
    if-eq p3, v2, :cond_0

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    .line 3447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3449
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3450
    if-ne p3, v2, :cond_2

    .line 3451
    const/16 v1, 0x80

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3456
    .local v6, "delay":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    if-ne p3, v2, :cond_3

    const/16 v2, 0x66

    :goto_1
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3463
    monitor-exit v7

    .line 3464
    return v6

    .line 3454
    .end local v6    # "delay":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "delay":I
    goto :goto_0

    .line 3456
    :cond_3
    const/16 v2, 0x65

    goto :goto_1

    .line 3463
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2504
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2505
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 2506
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2510
    monitor-exit v7

    .line 2511
    return-void

    .line 2506
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 2510
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 5191
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5192
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5193
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 5194
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5196
    monitor-exit v1

    .line 5197
    return-void

    .line 5194
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 5196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2481
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2495
    :goto_0
    return-void

    .line 2485
    :cond_0
    if-eqz p1, :cond_2

    .line 2486
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2491
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2493
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2487
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v4, :cond_1

    .line 2488
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 5793
    sget-boolean v7, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v7, :cond_0

    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5796
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v1, v6

    .line 5799
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    .line 5800
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5825
    :goto_1
    return v4

    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    move v1, v5

    .line 5796
    goto :goto_0

    .line 5806
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_2
    iget-object v7, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v7

    .line 5807
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5808
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5809
    monitor-exit v7

    goto :goto_1

    .line 5824
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5811
    :cond_3
    :try_start_1
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 5812
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-ne p1, v6, :cond_5

    .line 5814
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$AudioPolicyProxy;

    .line 5815
    .local v3, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    iget v8, v3, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v8, v6, :cond_4

    .line 5816
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5817
    monitor-exit v7

    goto :goto_1

    .line 5821
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :cond_5
    iput p1, v0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 5822
    iget-object v8, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    if-ne p1, v6, :cond_6

    move v4, v6

    :goto_2
    invoke-virtual {v8, v4}, Landroid/media/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 5824
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 5825
    goto :goto_1

    :cond_6
    move v4, v5

    .line 5822
    goto :goto_2
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 5368
    const/4 v0, 0x0

    .line 5369
    .local v0, "device":I
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2

    .line 5370
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 5371
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    .line 5372
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5373
    monitor-exit v3

    move v1, v0

    .line 5387
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_0
    return v1

    .line 5376
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5377
    :try_start_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_1

    .line 5378
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 5379
    const/4 v5, 0x5

    if-eqz p1, :cond_3

    const/16 v2, 0xc

    :goto_1
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5383
    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 5384
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5385
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v1, v0

    .line 5387
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_0

    .line 5379
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 5384
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 5385
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;I)V

    .line 1738
    return-void
.end method

.method public setMasterVolume(IILjava/lang/String;I)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1741
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1745
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1750
    if-gez p1, :cond_3

    .line 1751
    const/4 p1, 0x0

    .line 1755
    :cond_2
    :goto_1
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    goto :goto_0

    .line 1752
    :cond_3
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 1753
    const/16 p1, 0x64

    goto :goto_1
.end method

.method public setMicrophoneMute(ZLjava/lang/String;)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1805
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1817
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1815
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, -0x1

    .line 2076
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    :cond_0
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2106
    :cond_1
    :goto_0
    return-void

    .line 2081
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2085
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2090
    :cond_3
    if-lt p1, v4, :cond_1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    .line 2094
    const/4 v0, 0x0

    .line 2095
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2096
    if-ne p1, v4, :cond_4

    .line 2097
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 2099
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 2100
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    if-eqz v0, :cond_1

    .line 2104
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 2100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5022
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5023
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 5024
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 1845
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1846
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 1849
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 1850
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1851
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 5201
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5203
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2456
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2472
    :goto_0
    return-void

    .line 2460
    :cond_0
    if-eqz p1, :cond_3

    .line 2461
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2462
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2465
    :cond_1
    iput v7, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2470
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2466
    :cond_3
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2

    .line 2467
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    .line 1276
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2002
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 2009
    :goto_0
    return-void

    .line 2004
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 2007
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 5520
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5523
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5547
    :cond_0
    :goto_0
    return-void

    .line 5528
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 5529
    if-eqz p1, :cond_2

    .line 5532
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioService$3;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5545
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 5546
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5541
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3432
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3433
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3434
    .local v6, "delay":I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3440
    monitor-exit v7

    .line 3441
    return-void

    .line 3440
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1974
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 1989
    :goto_0
    :pswitch_0
    return v1

    .line 1976
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1979
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1982
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 1976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 2522
    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    const/4 v0, 0x0

    .line 2525
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2526
    return-void

    .line 2522
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 2534
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2547
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2544
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2545
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 2546
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2530
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2531
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 5212
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5213
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5214
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5215
    monitor-exit v2

    return-object v0

    .line 5216
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2551
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2564
    :cond_0
    :goto_0
    return-void

    .line 2555
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2559
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2560
    .local v2, "ident":J
    if-eqz v0, :cond_2

    .line 2561
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 2563
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 674
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2351
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2352
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5060
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 5061
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 5777
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5778
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 5779
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 5780
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    .line 5781
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5783
    monitor-exit v2

    .line 5790
    :goto_0
    return-void

    .line 5785
    :cond_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5787
    invoke-virtual {v0}, Landroid/media/AudioService$AudioPolicyProxy;->release()V

    .line 5788
    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 5008
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 5009
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 3172
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3179
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit8 v0, v0, 0x26

    .line 3183
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v1, :pswitch_data_0

    .line 3188
    and-int/lit8 v0, v0, -0x9

    .line 3192
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3193
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3194
    and-int/lit16 v0, v0, -0x81

    .line 3198
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3199
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3200
    or-int/lit16 v0, v0, 0x100

    .line 3205
    :goto_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_2

    .line 3206
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3210
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 3211
    const/4 v1, 0x1

    .line 3213
    :goto_3
    return v1

    .line 3185
    :pswitch_0
    const/4 v0, 0x0

    .line 3186
    goto :goto_0

    .line 3196
    :cond_0
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 3198
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3202
    :cond_1
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 3213
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 3183
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

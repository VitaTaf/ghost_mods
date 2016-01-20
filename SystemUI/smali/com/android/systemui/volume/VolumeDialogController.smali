.class public Lcom/android/systemui/volume/VolumeDialogController;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogController$1;,
        Lcom/android/systemui/volume/VolumeDialogController$Callbacks;,
        Lcom/android/systemui/volume/VolumeDialogController$State;,
        Lcom/android/systemui/volume/VolumeDialogController$StreamState;,
        Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;,
        Lcom/android/systemui/volume/VolumeDialogController$Receiver;,
        Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;,
        Lcom/android/systemui/volume/VolumeDialogController$C;,
        Lcom/android/systemui/volume/VolumeDialogController$W;,
        Lcom/android/systemui/volume/VolumeDialogController$VC;
    }
.end annotation


# static fields
.field private static final STREAMS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudio:Landroid/media/AudioManager;

.field private final mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mEnabled:Z

.field private final mHasVibrator:Z

.field private final mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

.field private final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

.field private mShowDndTile:Z

.field private final mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private final mStreamTitles:[Ljava/lang/String;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x8
        0x3
        0x5
        0x2
        0x1
        0x7
        0x9
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    .line 91
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    .line 92
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$C;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    .line 93
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 95
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    .line 101
    new-instance v0, Landroid/media/VolumePolicy;

    const/16 v3, 0x190

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    .line 106
    const/4 v0, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 107
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-class v3, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$W;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$W;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    .line 115
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->init()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->init()V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mStreamTitles:[Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    .line 121
    return-void

    :cond_0
    move v0, v2

    .line 120
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->onGetStateW()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialogController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/VolumeDialogController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateExitConditionW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialogController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogController;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialogController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onVolumeChangedW(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onDismissRequestedW(I)V

    return-void
.end method

.method private checkRoutedToBluetoothW(I)Z
    .locals 4
    .param p1, "stream"    # I

    .prologue
    const/4 v3, 0x3

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "changed":Z
    if-ne p1, v3, :cond_0

    .line 271
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x380

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 276
    .local v1, "routedToBluetooth":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .line 278
    .end local v1    # "routedToBluetooth":Z
    :cond_0
    return v0

    .line 271
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 413
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 423
    :cond_0
    :goto_0
    return-object v3

    .line 414
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 415
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "pkg":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 418
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "rt":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gtz v4, :cond_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "rt":Ljava/lang/String;
    :goto_1
    move-object v3, v1

    .line 423
    goto :goto_0

    .line 422
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static isLogWorthy(I)Z
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 367
    packed-switch p0, :pswitch_data_0

    .line 376
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 374
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isRinger(I)Z
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 393
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDismissRequestedW(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    .line 489
    return-void
.end method

.method private onGetStateW()V
    .locals 7

    .prologue
    .line 330
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 331
    .local v4, "stream":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    .line 332
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 333
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 334
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    .line 335
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    .line 336
    .local v3, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    .line 337
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mStreamTitles:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 338
    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v3    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v4    # "stream":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    .line 342
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateExitConditionW()Z

    .line 344
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v5, v6}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 345
    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 253
    if-nez p1, :cond_0

    .line 254
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    goto :goto_0
.end method

.method private onSetActiveStreamW(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    .line 473
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 476
    :cond_0
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->setZenModeCondition(Landroid/service/notification/Condition;)V

    .line 480
    return-void
.end method

.method private onSetRingerModeW(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .prologue
    .line 450
    if-eqz p2, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 455
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0
.end method

.method private onSetStreamMuteW(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    const/16 v0, -0x64

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 460
    return-void

    .line 458
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private onSetStreamVolumeW(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 463
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetStreamVolume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->setStreamVolume(II)V

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private onSetZenModeW(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 483
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetZenModeW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->setZenMode(I)V

    .line 485
    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSafetyWarning(I)V

    .line 266
    return-void
.end method

.method private onVolumeChangedW(II)V
    .locals 9
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 282
    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_7

    move v3, v5

    .line 283
    .local v3, "showUI":Z
    :goto_0
    and-int/lit16 v7, p2, 0x1000

    if-eqz v7, :cond_8

    move v1, v5

    .line 284
    .local v1, "fromKey":Z
    :goto_1
    and-int/lit16 v7, p2, 0x800

    if-eqz v7, :cond_9

    move v4, v5

    .line 285
    .local v4, "showVibrateHint":Z
    :goto_2
    and-int/lit16 v7, p2, 0x80

    if-eqz v7, :cond_a

    move v2, v5

    .line 286
    .local v2, "showSilentHint":Z
    :goto_3
    const/4 v0, 0x0

    .line 287
    .local v0, "changed":Z
    if-eqz v3, :cond_0

    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v7

    or-int/2addr v0, v7

    .line 290
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v7, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v7

    or-int/2addr v0, v7

    .line 291
    if-eqz v3, :cond_1

    const/4 p1, 0x3

    .end local p1    # "stream":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v7

    or-int/2addr v0, v7

    .line 292
    if-eqz v0, :cond_2

    .line 293
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 295
    :cond_2
    if-eqz v3, :cond_3

    .line 296
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v7, v5}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowRequested(I)V

    .line 298
    :cond_3
    if-eqz v4, :cond_4

    .line 299
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowVibrateHint()V

    .line 301
    :cond_4
    if-eqz v2, :cond_5

    .line 302
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSilentHint()V

    .line 304
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 305
    const/4 v5, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 307
    :cond_6
    return-void

    .end local v0    # "changed":Z
    .end local v1    # "fromKey":Z
    .end local v2    # "showSilentHint":Z
    .end local v3    # "showUI":Z
    .end local v4    # "showVibrateHint":Z
    .restart local p1    # "stream":I
    :cond_7
    move v3, v6

    .line 282
    goto :goto_0

    .restart local v3    # "showUI":Z
    :cond_8
    move v1, v6

    .line 283
    goto :goto_1

    .restart local v1    # "fromKey":Z
    :cond_9
    move v4, v6

    .line 284
    goto :goto_2

    .restart local v4    # "showVibrateHint":Z
    :cond_a
    move v2, v6

    .line 285
    goto :goto_3
.end method

.method private streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 322
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .end local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;-><init>()V

    .line 324
    .restart local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    :cond_0
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .locals 6
    .param p1, "activeStream"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-ne p1, v3, :cond_0

    .line 317
    :goto_0
    return v1

    .line 311
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    .line 312
    const/4 v3, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 313
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateActiveStreamW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_3

    move v0, p1

    .line 315
    .local v0, "s":I
    :goto_1
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceVolumeControlStream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    move v1, v2

    .line 317
    goto :goto_0

    .line 314
    .end local v0    # "s":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "effectsSuppressor"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 404
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput-object p1, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 406
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 407
    const/16 v2, 0xe

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v0, v1

    .line 409
    goto :goto_0
.end method

.method private updateExitConditionW()Z
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeCondition()Landroid/service/notification/Condition;

    move-result-object v0

    .line 398
    .local v0, "exitCondition":Landroid/service/notification/Condition;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 400
    :goto_0
    return v1

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput-object v0, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->exitCondition:Landroid/service/notification/Condition;

    .line 400
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateRingerModeExternalW(I)Z
    .locals 5
    .param p1, "rm"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 436
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    if-ne p1, v2, :cond_0

    .line 439
    :goto_0
    return v0

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    .line 438
    const/16 v2, 0xc

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v0, v1

    .line 439
    goto :goto_0
.end method

.method private updateRingerModeInternalW(I)Z
    .locals 5
    .param p1, "rm"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 443
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne p1, v2, :cond_0

    .line 446
    :goto_0
    return v0

    .line 444
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    .line 445
    const/16 v2, 0xb

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v0, v1

    .line 446
    goto :goto_0
.end method

.method private updateStreamLevelW(II)Z
    .locals 6
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 358
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget v3, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v3, p2, :cond_0

    .line 363
    :goto_0
    return v1

    .line 359
    :cond_0
    iput p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 360
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    const/16 v3, 0xa

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    :cond_1
    move v1, v2

    .line 363
    goto :goto_0
.end method

.method private updateStreamMuteW(IZ)Z
    .locals 6
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 381
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-ne v3, p2, :cond_0

    .line 389
    :goto_0
    return v1

    .line 382
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 383
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 384
    const/16 v3, 0xf

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 386
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isRinger(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    :cond_2
    move v1, v2

    .line 389
    goto :goto_0
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .locals 4
    .param p1, "stream"    # I
    .param p2, "routedToBluetooth"    # Z

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 349
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v1, p2, :cond_0

    const/4 v1, 0x0

    .line 353
    :goto_0
    return v1

    .line 350
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 351
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStreamRoutedToBluetoothW stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " routedToBluetooth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateZenModeW()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 427
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 429
    .local v0, "zen":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-ne v3, v0, :cond_0

    .line 432
    :goto_0
    return v1

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput v0, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    .line 431
    const/16 v3, 0xd

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v1, v2

    .line 432
    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$C;->add(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 188
    return-void
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .prologue
    .line 158
    new-instance v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    .line 129
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    const-string v0, "  mEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 175
    const-string v0, "  mDestroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 176
    const-string v0, "  mVolumePolicy: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 177
    const-string v0, "  mEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 178
    const-string v0, "  mShowDndTile: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 179
    const-string v0, "  mHasVibrator: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 180
    const-string v0, "  mRemoteStreams: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->access$400(Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    .line 184
    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getState()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    return v0
.end method

.method public notifyVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/16 v3, 0xc

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onUserActivityW()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 139
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->showDndTile(Z)V

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v1}, Lcom/android/systemui/volume/MediaSessions;->init()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set the volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v2, "No access to media sessions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveStream(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setRingerMode(IZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "external"    # Z

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v2, 0x4

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setStreamMute(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v2, 0x7

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setStreamVolume(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v2, "No volume policy api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setZenMode(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public showDndTile(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 492
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v1, "showDndTile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 494
    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->removeMessages(I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public vibrate()V
    .locals 4

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 244
    :cond_0
    return-void
.end method

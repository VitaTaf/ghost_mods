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
    const-class v0, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

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

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$C;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v0, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/os/HandlerThread;

    const-class v3, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$W;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$W;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->init()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->init()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mStreamTitles:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->onGetStateW()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialogController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/VolumeDialogController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeConfigW()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialogController;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
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
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/volume/VolumeDialogController;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialogController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onVolumeChangedW(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onDismissRequestedW(I)V

    return-void
.end method

.method private checkRoutedToBluetoothW(I)Z
    .locals 4
    .param p1, "stream"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .local v0, "changed":Z
    if-ne p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x380

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .local v1, "routedToBluetooth":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v2

    or-int/2addr v0, v2

    .end local v1    # "routedToBluetooth":Z
    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkg":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

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

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static isLogWorthy(I)Z
    .locals 1
    .param p0, "stream"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

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
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    return-void
.end method

.method private onGetStateW()V
    .locals 7

    .prologue
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .local v4, "stream":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    .local v3, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mStreamTitles:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v4    # "stream":I
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeConfigW()Z

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v5, v6}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    goto :goto_0
.end method

.method private onSetActiveStreamW(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    .local v0, "changed":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    :cond_0
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSetRingerModeW(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void

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
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    const/16 v0, -0x64

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void

    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private onSetStreamVolumeW(II)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
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

    :cond_0
    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->setStreamVolume(II)V

    :goto_0
    return-void

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

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSafetyWarning(I)V

    return-void
.end method

.method private onVolumeChangedW(II)V
    .locals 9
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    and-int/lit8 v7, p2, 0x1

    if-eqz v7, :cond_7

    move v3, v5

    .local v3, "showUI":Z
    :goto_0
    and-int/lit16 v7, p2, 0x1000

    if-eqz v7, :cond_8

    move v1, v5

    .local v1, "fromKey":Z
    :goto_1
    and-int/lit16 v7, p2, 0x800

    if-eqz v7, :cond_9

    move v4, v5

    .local v4, "showVibrateHint":Z
    :goto_2
    and-int/lit16 v7, p2, 0x80

    if-eqz v7, :cond_a

    move v2, v5

    .local v2, "showSilentHint":Z
    :goto_3
    const/4 v0, 0x0

    .local v0, "changed":Z
    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v7

    or-int/2addr v0, v7

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v7, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v7

    or-int/2addr v0, v7

    if-eqz v3, :cond_1

    const/4 p1, 0x3

    .end local p1    # "stream":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v7

    or-int/2addr v0, v7

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    :cond_2
    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v7, v5}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowRequested(I)V

    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowVibrateHint()V

    :cond_4
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSilentHint()V

    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    const/4 v5, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

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

    goto :goto_0

    .restart local v3    # "showUI":Z
    :cond_8
    move v1, v6

    goto :goto_1

    .restart local v1    # "fromKey":Z
    :cond_9
    move v4, v6

    goto :goto_2

    .restart local v4    # "showVibrateHint":Z
    :cond_a
    move v2, v6

    goto :goto_3
.end method

.method private streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .end local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;-><init>()V

    .restart local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .locals 6
    .param p1, "activeStream"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-ne p1, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    const/4 v3, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

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

    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_3

    move v0, p1

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

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    move v1, v2

    goto :goto_0

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

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput-object p1, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

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

    goto :goto_0
.end method

.method private updateRingerModeExternalW(I)Z
    .locals 5
    .param p1, "rm"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    const/16 v2, 0xc

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private updateRingerModeInternalW(I)Z
    .locals 5
    .param p1, "rm"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    const/16 v2, 0xb

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private updateStreamLevelW(II)Z
    .locals 6
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget v3, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v3, p2, :cond_0

    :goto_0
    return v1

    :cond_0
    iput p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v3

    if-eqz v3, :cond_1

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

    goto :goto_0
.end method

.method private updateStreamMuteW(IZ)Z
    .locals 6
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v3, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-ne v3, p2, :cond_0

    :goto_0
    return v1

    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v3

    if-eqz v3, :cond_1

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

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isRinger(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .locals 4
    .param p1, "stream"    # I
    .param p2, "routedToBluetooth"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v1, p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

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

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateZenModeConfigW()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .local v0, "zenModeConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput-object v0, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateZenModeW()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "zen":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-ne v3, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput v0, v3, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    const/16 v3, 0xd

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$C;->add(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    return-void
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .prologue
    new-instance v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
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

    const-string v0, "  mEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDestroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mVolumePolicy: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mShowDndTile: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mHasVibrator: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mRemoteStreams: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    # getter for: Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->access$400(Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getState()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    return v0
.end method

.method public notifyVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

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
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mShowDndTile:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->showDndTile(Z)V

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v1}, Lcom/android/systemui/volume/MediaSessions;->init()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set the volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

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
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

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
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

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

.method public setStreamVolume(II)V
    .locals 2
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

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
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v2, "No volume policy api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDndTile(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string v1, "showDndTile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    return-void
.end method

.method public userActivity()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public vibrate()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

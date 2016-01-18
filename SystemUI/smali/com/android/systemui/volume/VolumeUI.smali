.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$RestorationNotification;,
        Lcom/android/systemui/volume/VolumeUI$Receiver;,
        Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;,
        Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;,
        Lcom/android/systemui/volume/VolumeUI$VolumeController;
    }
.end annotation


# static fields
.field private static LOGD:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissDelay:I

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPanel:Lcom/android/systemui/volume/VolumePanel;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeUI$Receiver;

.field private mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

.field private final mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

.field private final mStartZenSettings:Ljava/lang/Runnable;

.field private mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

.field private mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "VolumeUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$Receiver;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mReceiver:Lcom/android/systemui/volume/VolumeUI$Receiver;

    .line 63
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    .line 180
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeUI$3;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;

    .line 305
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->setVolumeController(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$RestorationNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->showServiceActivationDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeUI;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeUI;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeUI;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    return-object v0
.end method

.method private getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 157
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "rt":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 164
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "rt":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "VolumeUI"

    const-string v5, "Error loading app label"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v2

    .line 164
    goto :goto_0
.end method

.method private initPanel()V
    .locals 5

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    .line 128
    new-instance v0, Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumeUI$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V

    .line 151
    return-void
.end method

.method private setVolumeController(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_1

    .line 115
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumeUI"

    const-string v1, "Registering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    if-eqz v0, :cond_2

    const-string v0, "VolumeUI"

    const-string v1, "Unregistering default volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    goto :goto_0
.end method

.method private showServiceActivationDialog(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0278

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI;->getAppLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 170
    const v1, 0x7f0c0279

    new-instance v2, Lcom/android/systemui/volume/VolumeUI$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/volume/VolumeUI$2;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 176
    const v1, 0x7f0c027a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 178
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "mEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 107
    const-string v0, "mVolumeControllerService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 102
    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 83
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->initPanel()V

    .line 86
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    .line 87
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    .line 88
    const-class v0, Lcom/android/systemui/volume/VolumeComponent;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mReceiver:Lcom/android/systemui/volume/VolumeUI$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$Receiver;->start()V

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/ServiceMonitor;

    const-string v1, "VolumeUI"

    sget-boolean v2, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v4, "volume_controller_service_component"

    new-instance v5, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/ServiceMonitor;-><init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->start()V

    goto :goto_0
.end method

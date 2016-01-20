.class public Lcom/android/systemui/volume/VolumePanelComponent;
.super Ljava/lang/Object;
.source "VolumePanelComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;,
        Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDismissDelay:I

.field private final mHandler:Landroid/os/Handler;

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mPanel:Lcom/android/systemui/volume/VolumePanel;

.field private final mRemoteVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;

.field private final mStartZenSettings:Ljava/lang/Runnable;

.field private final mSysui:Lcom/android/systemui/SystemUI;

.field private final mVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 3
    .param p1, "sysui"    # Lcom/android/systemui/SystemUI;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "controller"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/systemui/volume/VolumePanelComponent$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumePanelComponent$2;-><init>(Lcom/android/systemui/volume/VolumePanelComponent;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mStartZenSettings:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mSysui:Lcom/android/systemui/SystemUI;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mHandler:Landroid/os/Handler;

    .line 63
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mAudioManager:Landroid/media/AudioManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 66
    new-instance v0, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;-><init>(Lcom/android/systemui/volume/VolumePanelComponent;Lcom/android/systemui/volume/VolumePanelComponent$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;

    .line 67
    new-instance v0, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumePanelComponent;Lcom/android/systemui/volume/VolumePanelComponent$1;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mDismissDelay:I

    .line 69
    new-instance v0, Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p4}, Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumePanelComponent$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumePanelComponent$1;-><init>(Lcom/android/systemui/volume/VolumePanelComponent;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V

    .line 92
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumePanelComponent;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mStartZenSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/SystemUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mSysui:Lcom/android/systemui/SystemUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanelComponent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mDismissDelay:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dismissNow()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 127
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mAudioManager:Landroid/media/AudioManager;

    sget-object v1, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setVisible(Landroid/content/Context;Z)V

    .line 105
    return-void
.end method

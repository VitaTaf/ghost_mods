.class Lcom/android/systemui/volume/VolumePanelComponent$1;
.super Ljava/lang/Object;
.source "VolumePanelComponent.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanelComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanelComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanelComponent;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 3

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mSysui:Lcom/android/systemui/SystemUI;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$400(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/SystemUI;

    move-result-object v1

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 79
    .local v0, "kvm":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 82
    :cond_0
    return-void
.end method

.method public onVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$500(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$600(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$500(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mVolumeController:Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$600(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 89
    :cond_0
    return-void
.end method

.method public onZenSettings()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$300(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mStartZenSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$200(Lcom/android/systemui/volume/VolumePanelComponent;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$300(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$1;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mStartZenSettings:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$200(Lcom/android/systemui/volume/VolumePanelComponent;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

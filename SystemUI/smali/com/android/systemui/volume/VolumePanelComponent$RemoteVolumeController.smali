.class final Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;
.super Landroid/media/IRemoteVolumeController$Stub;
.source "VolumePanelComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteVolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanelComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanelComponent;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    invoke-direct {p0}, Landroid/media/IRemoteVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelComponent;Lcom/android/systemui/volume/VolumePanelComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumePanelComponent$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumePanelComponent;)V

    return-void
.end method


# virtual methods
.method public remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    .locals 2
    .param p1, "binder"    # Landroid/media/session/ISessionController;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$900(Lcom/android/systemui/volume/VolumePanelComponent;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    .line 143
    .local v0, "controller":Landroid/media/session/MediaController;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanelComponent;->access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/volume/VolumePanel;->postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    .line 144
    return-void
.end method

.method public updateRemoteController(Landroid/media/session/ISessionController;)V
    .locals 2
    .param p1, "session"    # Landroid/media/session/ISessionController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$RemoteVolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumePanel;->postRemoteSliderVisibility(Z)V

    .line 151
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

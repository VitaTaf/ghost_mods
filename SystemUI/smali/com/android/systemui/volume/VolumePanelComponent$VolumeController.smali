.class final Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumePanelComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanelComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanelComponent;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanelComponent;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelComponent;Lcom/android/systemui/volume/VolumePanelComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumePanelComponent;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumePanelComponent$1;

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;-><init>(Lcom/android/systemui/volume/VolumePanelComponent;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->dismissNow()V

    .line 182
    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 160
    return-void
.end method

.method public masterMuteChanged(I)V
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postLayoutDirection(I)V

    .line 177
    return-void
.end method

.method public volumeChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelComponent$VolumeController;->this$0:Lcom/android/systemui/volume/VolumePanelComponent;

    # getter for: Lcom/android/systemui/volume/VolumePanelComponent;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanelComponent;->access$800(Lcom/android/systemui/volume/VolumePanelComponent;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 166
    return-void
.end method

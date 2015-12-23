.class final Lcom/android/systemui/volume/VolumeUI$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeUI$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeUI$VolumeController;->dismissNow()V

    .line 182
    return-void
.end method

.method public dismissNow()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->postDismiss(J)V

    .line 197
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 192
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
    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 155
    return-void
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumePanel;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    return-object v0
.end method

.method public masterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMasterMuteChanged(I)V

    .line 171
    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMasterVolumeChanged(I)V

    .line 166
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
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

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
    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 161
    return-void
.end method

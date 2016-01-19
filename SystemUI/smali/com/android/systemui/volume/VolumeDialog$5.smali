.class Lcom/android/systemui/volume/VolumeDialog$5;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3300(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 832
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3400(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 833
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 813
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3200(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 827
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 817
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->showH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$3000(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 808
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3500(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 846
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3500(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 840
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$5;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$3100(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 822
    return-void
.end method

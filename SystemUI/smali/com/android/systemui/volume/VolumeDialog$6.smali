.class Lcom/android/systemui/volume/VolumeDialog$6;
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
    .line 774
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3800(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3900(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4000(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 805
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 783
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3700(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 798
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 788
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->showH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$3500(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 778
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 824
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4100(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$1800(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 819
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 809
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4100(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$1800(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 812
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$6;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$3600(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 793
    return-void
.end method

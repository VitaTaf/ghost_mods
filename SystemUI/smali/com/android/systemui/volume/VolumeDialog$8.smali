.class Lcom/android/systemui/volume/VolumeDialog$8;
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
    .line 853
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->updateWindowWidthH()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4500(Lcom/android/systemui/volume/VolumeDialog;)V

    .line 882
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 883
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mZenFooter:Lcom/android/systemui/volume/ZenFooter;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4700(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/ZenFooter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->onConfigurationChanged()V

    .line 884
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 862
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4400(Lcom/android/systemui/volume/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 877
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 867
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->showH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 857
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->showSafetyWarningH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4900(Lcom/android/systemui/volume/VolumeDialog;I)V

    .line 903
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4800(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 898
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 888
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4800(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 891
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$8;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialog;->access$4300(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 872
    return-void
.end method

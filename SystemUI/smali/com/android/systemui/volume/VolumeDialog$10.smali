.class Lcom/android/systemui/volume/VolumeDialog$10;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenFooter$Callback;


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
    .line 902
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismiss(I)V

    .line 919
    return-void
.end method

.method public onFooterExpanded()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4400(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 906
    return-void
.end method

.method public onPrioritySettingsClicked()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismiss(I)V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialog$Callback;->onZenPrioritySettingsClicked()V

    .line 927
    :cond_0
    return-void
.end method

.method public onSettingsClicked()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismiss(I)V

    .line 911
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$10;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mCallback:Lcom/android/systemui/volume/VolumeDialog$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumeDialog$Callback;->onZenSettingsClicked()V

    .line 914
    :cond_0
    return-void
.end method

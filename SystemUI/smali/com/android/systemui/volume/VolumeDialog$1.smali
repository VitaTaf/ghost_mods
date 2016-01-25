.class Lcom/android/systemui/volume/VolumeDialog$1;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogMotion$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/VolumeDialog$Callback;)V
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
    .line 179
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimatingChanged(Z)V
    .locals 3
    .param p1, "animating"    # Z

    .prologue
    const/4 v2, 0x0

    .line 182
    if-eqz p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$100(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 185
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # setter for: Lcom/android/systemui/volume/VolumeDialog;->mPendingStateChanged:Z
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->access$102(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$300(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$1;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # setter for: Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z
    invoke-static {v0, v2}, Lcom/android/systemui/volume/VolumeDialog;->access$302(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    goto :goto_0
.end method

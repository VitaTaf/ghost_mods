.class final Lcom/android/systemui/volume/VolumeDialog$CustomDialog;
.super Landroid/app/Dialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    .line 962
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 963
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 968
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 973
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 974
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mMotion:Lcom/android/systemui/volume/VolumeDialogMotion;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->access$5500(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogMotion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->isAnimating()Z

    move-result v0

    .line 975
    .local v0, "animating":Z
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop animating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    if-eqz v0, :cond_1

    .line 977
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/volume/VolumeDialog;->mPendingRecheckAll:Z
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialog;->access$302(Lcom/android/systemui/volume/VolumeDialog;Z)Z

    .line 981
    :goto_0
    return-void

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 985
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 987
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 991
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

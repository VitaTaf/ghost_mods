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
    .line 928
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    .line 929
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 930
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    .line 935
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 940
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$3900(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$H;->sendEmptyMessage(I)Z

    .line 942
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 946
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$CustomDialog;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    .line 952
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

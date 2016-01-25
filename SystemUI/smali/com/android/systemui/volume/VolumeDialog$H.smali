.class final Lcom/android/systemui/volume/VolumeDialog$H;
.super Landroid/os/Handler;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialog;)V
    .locals 1

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    .line 942
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 943
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 947
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 957
    :goto_0
    return-void

    .line 948
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->showH(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->access$4200(Lcom/android/systemui/volume/VolumeDialog;I)V

    goto :goto_0

    .line 949
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->dismissH(I)V

    goto :goto_0

    .line 950
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    invoke-static {v1, v0}, Lcom/android/systemui/volume/VolumeDialog;->access$4100(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 951
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->recheckH(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->access$4100(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 952
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    # invokes: Lcom/android/systemui/volume/VolumeDialog;->setStreamImportantH(IZ)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5300(Lcom/android/systemui/volume/VolumeDialog;IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 953
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialog;->rescheduleTimeoutH()V

    goto :goto_0

    .line 954
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->access$2400(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v1

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog;->access$4300(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    goto :goto_0

    .line 955
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$H;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->updateDialogBottomMarginH()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$5400(Lcom/android/systemui/volume/VolumeDialog;)V

    goto :goto_0

    .line 947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

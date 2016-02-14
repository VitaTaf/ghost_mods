.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;
.super Landroid/os/Handler;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotorolaWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_0

    const-string v0, "MotoNetwCtrlr.MotoWifiHndlr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: Entered msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v0, :cond_1

    const-string v0, "MotoNetwCtrlr.MotoWifiHndlr"

    const-string v1, "handleMessage: Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    const-string v0, "MotoNetwCtrlr.MotoWifiHndlr"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;->setActivity(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method

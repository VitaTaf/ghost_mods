.class Lcom/android/nfc/handover/HandoverService$MessageHandler;
.super Landroid/os/Handler;
.source "HandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverService;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 147
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v3, v0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    .line 149
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 150
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_1

    :goto_2
    iput-boolean v1, v0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_0

    :cond_0
    move v0, v2

    .line 149
    goto :goto_1

    :cond_1
    move v1, v2

    .line 150
    goto :goto_2

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doIncomingTransfer(Landroid/os/Message;)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doOutgoingTransfer(Landroid/os/Message;)V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doPeripheralHandover(Landroid/os/Message;)V

    goto :goto_0

    .line 165
    :pswitch_5
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const v1, 0x88b8

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->pausePolling(I)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

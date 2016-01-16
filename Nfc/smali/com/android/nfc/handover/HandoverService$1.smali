.class Lcom/android/nfc/handover/HandoverService$1;
.super Landroid/content/BroadcastReceiver;
.source "HandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverService;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.nfc.handover.intent.extra.HANDOVER_DEVICE_TYPE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 179
    .local v1, "deviceType":I
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    # invokes: Lcom/android/nfc/handover/HandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/nfc/handover/HandoverService;->access$000(Lcom/android/nfc/handover/HandoverService;Landroid/content/Intent;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    # invokes: Lcom/android/nfc/handover/HandoverService;->handleCancelTransfer(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v1}, Lcom/android/nfc/handover/HandoverService;->access$100(Lcom/android/nfc/handover/HandoverService;Landroid/content/Intent;I)V

    goto :goto_0

    .line 183
    :cond_2
    const-string v2, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    # invokes: Lcom/android/nfc/handover/HandoverService;->handleTransferEvent(Landroid/content/Intent;I)V
    invoke-static {v2, p2, v1}, Lcom/android/nfc/handover/HandoverService;->access$200(Lcom/android/nfc/handover/HandoverService;Landroid/content/Intent;I)V

    goto :goto_0
.end method

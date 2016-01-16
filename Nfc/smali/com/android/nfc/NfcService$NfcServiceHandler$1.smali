.class Lcom/android/nfc/NfcService$NfcServiceHandler$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V
    .locals 0

    .prologue
    .line 2888
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDisconnected(J)V
    .locals 4
    .param p1, "handle"    # J

    .prologue
    .line 2891
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v1, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v3, v3, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2892
    return-void
.end method

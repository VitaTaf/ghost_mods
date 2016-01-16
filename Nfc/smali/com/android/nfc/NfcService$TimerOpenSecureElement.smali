.class final Lcom/android/nfc/NfcService$TimerOpenSecureElement;
.super Ljava/util/TimerTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TimerOpenSecureElement"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/android/nfc/NfcService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/nfc/NfcService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElementHandle:I
    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2188
    const-string v0, "NfcService"

    const-string v1, "Open SMX timer expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSecureElementService:Lcom/android/nfc/NfcService$NfcSecureElementService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$TimerOpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSecureElementHandle:I
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcSecureElementService;->closeSecureElementConnection(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

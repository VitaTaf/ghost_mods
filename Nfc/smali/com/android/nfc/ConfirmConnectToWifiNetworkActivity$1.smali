.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z
    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$000(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    # invokes: Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V
    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->access$100(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 72
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-virtual {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 74
    :cond_0
    return-void
.end method

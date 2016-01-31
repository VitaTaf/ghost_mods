.class Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pCreateGroupDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    const-string v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1, v0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$002(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    :cond_0
    return-void
.end method

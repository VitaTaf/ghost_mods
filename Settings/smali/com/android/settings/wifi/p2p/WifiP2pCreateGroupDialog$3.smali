.class Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;
.super Ljava/lang/Object;
.source "WifiP2pCreateGroupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v1, ""

    .local v1, "ssid":Ljava/lang/String;
    const-string v2, ""

    .local v2, "tmp_ssid":Ljava/lang/String;
    const/4 v0, -0x2

    .local v0, "netId":I
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .end local v0    # "netId":I
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "tmp_ssid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "netId":I
    .restart local v1    # "ssid":Ljava/lang/String;
    .restart local v2    # "tmp_ssid":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mGroupListSize:I
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)I

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mEditSsid:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v3, "(DIRECT-[0-9a-zA-Z]{2}-([\\\\]x[0-9a-fA-F]{2}){2,})"

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;)V

    invoke-virtual {v3, v4, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mSavedGroupList:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->getNetworkId(Ljava/lang/String;)I
    invoke-static {v3, v1}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;Ljava/lang/String;)I

    move-result v0

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->P2P_SSID_PREFIX_SIZE:I
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$700()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

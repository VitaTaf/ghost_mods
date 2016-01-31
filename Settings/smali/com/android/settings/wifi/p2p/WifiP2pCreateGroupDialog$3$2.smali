.class Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$2;
.super Ljava/lang/Object;
.source "WifiP2pCreateGroupDialog.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const-string v0, "WifiP2pGroupCreateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " create group fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3$2;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog$3;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pCreateGroupDialog;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    const-string v0, "WifiP2pGroupCreateDialog"

    const-string v1, " create group success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

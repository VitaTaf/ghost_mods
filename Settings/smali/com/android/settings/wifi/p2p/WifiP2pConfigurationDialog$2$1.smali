.class Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2$1;
.super Ljava/lang/Object;
.source "WifiP2pConfigurationDialog.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2$1;->this$1:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 159
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$300()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09035b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

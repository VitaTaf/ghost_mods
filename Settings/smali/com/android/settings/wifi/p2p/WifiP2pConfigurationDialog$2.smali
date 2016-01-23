.class Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;
.super Ljava/lang/Object;
.source "WifiP2pConfigurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 139
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mAutoConnect:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput v1, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->p2pAutoConnect:I

    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v1

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$300()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceBand:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->p2pAutoConnect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "deviceConfig":Ljava/lang/String;
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$300()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_p2p_configuration"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mDeviceConfig:Landroid/net/wifi/p2p/WifiP2pDeviceConfig;
    invoke-static {v3}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pDeviceConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDeviceConfig;->deviceName:Ljava/lang/String;

    new-instance v4, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v1}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog$2;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v2}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setP2pConfigureDevice(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 169
    .end local v0    # "deviceConfig":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 166
    :cond_2
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pConfigurationDialog;->access$300()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09035b

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

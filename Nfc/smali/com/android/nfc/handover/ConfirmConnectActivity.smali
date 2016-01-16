.class public Lcom/android/nfc/handover/ConfirmConnectActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectActivity.java"


# instance fields
.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x5

    invoke-direct {v1, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 36
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 37
    .local v4, "launchIntent":Landroid/content/Intent;
    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    iput-object v6, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 38
    iget-object v6, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 40
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "deviceName":Ljava/lang/String;
    :goto_0
    const v6, 0x7f070019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "confirmString":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f07001a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/nfc/handover/ConfirmConnectActivity$2;

    invoke-direct {v8, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f07001b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/nfc/handover/ConfirmConnectActivity$1;

    invoke-direct {v8, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 63
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 64
    return-void

    .line 40
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "confirmString":Ljava/lang/String;
    .end local v3    # "deviceName":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.class public Lcom/android/systemui/qs/ConfirmationStubActivity;
.super Landroid/app/Activity;
.source "ConfirmationStubActivity.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mRequestCode:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mRequestCode:I

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 51
    if-ne p2, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/ConfirmationStubActivity;->finish()V

    .line 59
    return-void

    .line 53
    :cond_1
    if-ne p2, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .line 55
    :cond_2
    if-ne p2, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/qs/ConfirmationStubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 29
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "request_connection_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const-string v3, "request_connection_type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mRequestCode:I

    .line 31
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mRequestCode:I

    if-ne v3, v4, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/qs/ConfirmationStubActivity;->finish()V

    .line 35
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "it":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/ConfirmationStubActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 39
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/ConfirmationStubActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.motorola.intent.action.CONFIRM_USER_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "confirmIntent":Landroid/content/Intent;
    const-string v3, "request_code"

    iget v4, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mRequestCode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget v3, p0, Lcom/android/systemui/qs/ConfirmationStubActivity;->mRequestCode:I

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/ConfirmationStubActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    return-void
.end method

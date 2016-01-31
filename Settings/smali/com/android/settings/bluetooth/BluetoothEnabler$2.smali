.class Lcom/android/settings/bluetooth/BluetoothEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateChangedAction:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateChangedAction:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDState:Ljava/lang/String;

    sget v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWPState:I

    goto :goto_0
.end method

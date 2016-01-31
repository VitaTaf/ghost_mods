.class Lcom/android/settings/bluetooth/BluetoothEnabler$5;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;->showBTTurnOffDialog()V
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
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$5;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$5;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mDlgBtnClicked:Z
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$100(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$5;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$5;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

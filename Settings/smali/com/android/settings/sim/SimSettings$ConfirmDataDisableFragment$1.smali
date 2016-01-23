.class Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 832
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/SimSettings;

    .line 833
    .local v1, "target":Lcom/android/settings/sim/SimSettings;
    if-eqz v1, :cond_0

    .line 834
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 836
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->disableDataConnectivity()Z

    move-result v0

    .line 837
    .local v0, "status":Z
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    iget-object v3, v3, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->this$0:Lcom/android/settings/sim/SimSettings;

    # invokes: Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V
    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$900(Lcom/android/settings/sim/SimSettings;)V

    .line 839
    .end local v0    # "status":Z
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

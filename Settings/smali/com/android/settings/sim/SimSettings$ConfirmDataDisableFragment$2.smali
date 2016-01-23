.class Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$2;
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
    .line 841
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$2;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 844
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$2;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/SimSettings;

    .line 845
    .local v0, "target":Lcom/android/settings/sim/SimSettings;
    if-eqz v0, :cond_0

    .line 846
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$2;->this$1:Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 848
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    # getter for: Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$1000()Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setChecked(Z)V

    .line 850
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

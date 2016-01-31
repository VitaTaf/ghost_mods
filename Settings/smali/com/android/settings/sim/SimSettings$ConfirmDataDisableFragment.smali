.class public Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;
.super Landroid/app/DialogFragment;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmDataDisableFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .local v0, "tm":Landroid/telephony/TelephonyManager;
    # getter for: Lcom/android/settings/sim/SimSettings;->mDataPreference:Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$1000()Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/addon/ClickableSwitchWidgetPreference;->setChecked(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090878

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$1;-><init>(Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment$2;-><init>(Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public show(Lcom/android/settings/sim/SimSettings;)V
    .locals 3
    .param p1, "parent"    # Lcom/android/settings/sim/SimSettings;

    .prologue
    invoke-virtual {p1}, Lcom/android/settings/sim/SimSettings;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {v0, v1}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;-><init>(Lcom/android/settings/sim/SimSettings;)V

    .local v0, "dialog":Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p1}, Lcom/android/settings/sim/SimSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmDataDisable"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/sim/SimSettings$ConfirmDataDisableFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScaryWarningDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ManagedServiceSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 108
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "l"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "label":Ljava/lang/String;
    const-string v5, "c"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 113
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # getter for: Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;
    invoke-static {v6}, Lcom/android/settings/notification/ManagedServiceSettings;->access$100(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/notification/ManagedServiceSettings$Config;->warningDialogTitle:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # getter for: Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;
    invoke-static {v6}, Lcom/android/settings/notification/ManagedServiceSettings;->access$100(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v6

    iget v6, v6, Lcom/android/settings/notification/ManagedServiceSettings$Config;->warningDialogSummary:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "summary":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setRetainInstance(Z)V

    .line 116
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 142
    return-void
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object p0
.end method

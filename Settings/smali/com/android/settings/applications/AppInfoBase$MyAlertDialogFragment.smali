.class public Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AppInfoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppInfoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAlertDialogFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppInfoBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/AppInfoBase;II)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "errorCode"    # I

    .prologue
    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->this$0:Lcom/android/settings/applications/AppInfoBase;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "moveError"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .local v2, "id":I
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "moveError"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "errorCode":I
    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->this$0:Lcom/android/settings/applications/AppInfoBase;

    invoke-virtual {v3, v2, v1}, Lcom/android/settings/applications/AppInfoBase;->createDialog(II)Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, "dialog":Landroid/app/Dialog;
    if-nez v0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-object v0
.end method

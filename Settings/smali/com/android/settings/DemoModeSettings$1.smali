.class final Lcom/android/settings/DemoModeSettings$1;
.super Ljava/lang/Object;
.source "DemoModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DemoModeSettings;->showMasterClearPasswordDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$passwordEditor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/DemoModeSettings$1;->val$passwordEditor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DemoModeSettings$1;->val$passwordEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/DemoModeSettings;->isDemoPasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings/DemoModeSettings;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DemoModeSettings$1;->val$passwordEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/DemoModeSettings;->isVzwDemoPasswordCorrect(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings/DemoModeSettings;->access$100(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/DemoModeSettings;->launchMasterClear(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/DemoModeSettings$1;->val$context:Landroid/content/Context;

    const v1, 0x7f090046

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

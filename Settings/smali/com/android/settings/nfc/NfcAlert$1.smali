.class Lcom/android/settings/nfc/NfcAlert$1;
.super Landroid/text/style/ClickableSpan;
.source "NfcAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAlert;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAlert;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAlert;Landroid/content/Intent;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAlert$1;->this$0:Lcom/android/settings/nfc/NfcAlert;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcAlert$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAlert$1;->this$0:Lcom/android/settings/nfc/NfcAlert;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAlert$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/NfcAlert;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

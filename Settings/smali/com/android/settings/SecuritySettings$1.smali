.class Lcom/android/settings/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->askForReboot(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$1;->this$0:Lcom/android/settings/SecuritySettings;

    # getter for: Lcom/android/settings/SecuritySettings;->mCryptoMode:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-static {}, Lcom/motorola/crypto/CryptographicModesHelper;->getSelectedCryptographicMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.class Lcom/android/settings/SecuritySettings$2;
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

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Ljava/lang/Object;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    iput-object p2, p0, Lcom/android/settings/SecuritySettings$2;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->val$value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/crypto/CryptographicModesHelper;->setUserMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$2;->this$0:Lcom/android/settings/SecuritySettings;

    # invokes: Lcom/android/settings/SecuritySettings;->reboot()V
    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)V

    return-void
.end method

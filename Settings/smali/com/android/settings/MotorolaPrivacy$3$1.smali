.class Lcom/android/settings/MotorolaPrivacy$3$1;
.super Ljava/lang/Object;
.source "MotorolaPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotorolaPrivacy$3;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MotorolaPrivacy$3;


# direct methods
.method constructor <init>(Lcom/android/settings/MotorolaPrivacy$3;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/MotorolaPrivacy$3$1;->this$1:Lcom/android/settings/MotorolaPrivacy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$3$1;->this$1:Lcom/android/settings/MotorolaPrivacy$3;

    iget-object v0, v0, Lcom/android/settings/MotorolaPrivacy$3;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 137
    return-void
.end method

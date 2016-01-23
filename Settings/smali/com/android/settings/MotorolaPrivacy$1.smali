.class Lcom/android/settings/MotorolaPrivacy$1;
.super Ljava/lang/Object;
.source "MotorolaPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotorolaPrivacy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MotorolaPrivacy;


# direct methods
.method constructor <init>(Lcom/android/settings/MotorolaPrivacy;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/MotorolaPrivacy$1;->this$0:Lcom/android/settings/MotorolaPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$1;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # getter for: Lcom/android/settings/MotorolaPrivacy;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$000(Lcom/android/settings/MotorolaPrivacy;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 56
    return-void
.end method

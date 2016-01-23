.class Lcom/android/settings/MotorolaPrivacy$2;
.super Ljava/lang/Object;
.source "MotorolaPrivacy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 60
    iput-object p1, p0, Lcom/android/settings/MotorolaPrivacy$2;->this$0:Lcom/android/settings/MotorolaPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/MotorolaPrivacy$2;->this$0:Lcom/android/settings/MotorolaPrivacy;

    # invokes: Lcom/android/settings/MotorolaPrivacy;->finishActivitiyWithoutAnimation()V
    invoke-static {v0}, Lcom/android/settings/MotorolaPrivacy;->access$100(Lcom/android/settings/MotorolaPrivacy;)V

    .line 64
    return-void
.end method

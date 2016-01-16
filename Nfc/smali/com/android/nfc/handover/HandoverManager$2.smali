.class Lcom/android/nfc/handover/HandoverManager$2;
.super Landroid/content/BroadcastReceiver;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverManager;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$2;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverManager;->unbindServiceIfNeededLocked(Z)V

    .line 213
    :cond_0
    return-void
.end method

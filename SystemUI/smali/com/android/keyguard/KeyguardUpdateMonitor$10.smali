.class Lcom/android/keyguard/KeyguardUpdateMonitor$10;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1820
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1821
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.motorola.android.intent.action.remotelock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1823
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$10;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # invokes: Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRemoteLockUpdate(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1824
    :catch_0
    move-exception v1

    goto :goto_0
.end method

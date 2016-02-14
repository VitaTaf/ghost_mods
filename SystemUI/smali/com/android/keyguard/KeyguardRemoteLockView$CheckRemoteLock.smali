.class abstract Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;
.super Ljava/lang/Thread;
.source "KeyguardRemoteLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardRemoteLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckRemoteLock"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardRemoteLockView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardRemoteLockView;Ljava/lang/String;)V
    .locals 0
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->mPin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract onRemoteCheckResponse(Z)V
.end method

.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->mPin:Ljava/lang/String;

    # invokes: Lcom/android/keyguard/KeyguardRemoteLockView;->checkRemoteCode(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$000(Lcom/android/keyguard/KeyguardRemoteLockView;Ljava/lang/String;)Z

    move-result v1

    .local v1, "result":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    const/4 v3, 0x0

    # invokes: Lcom/android/keyguard/KeyguardRemoteLockView;->setRemoteLockEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$100(Lcom/android/keyguard/KeyguardRemoteLockView;Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    # getter for: Lcom/android/keyguard/KeyguardRemoteLockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$200(Lcom/android/keyguard/KeyguardRemoteLockView;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/keyguard/KeyguardRemoteLockView;->startUnblockService(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$300(Landroid/content/Context;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    new-instance v3, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$1;-><init>(Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;Z)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardRemoteLockView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Z
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    new-instance v3, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock$2;-><init>(Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardRemoteLockView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

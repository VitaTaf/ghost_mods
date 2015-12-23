.class Lcom/android/keyguard/KeyguardRemoteLockView$1$1;
.super Ljava/lang/Object;
.source "KeyguardRemoteLockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRemoteLockView$1;->onRemoteCheckResponse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRemoteLockView$1;Z)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    # getter for: Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$400(Lcom/android/keyguard/KeyguardRemoteLockView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    # getter for: Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$400(Lcom/android/keyguard/KeyguardRemoteLockView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 183
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->val$success:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRemoteLockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportRemoteLockStateChanged(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardRemoteLockView;->mCheckRemoteLockThread:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardRemoteLockView;->access$502(Lcom/android/keyguard/KeyguardRemoteLockView;Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;)Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    .line 198
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_password_wrong_remote_lock_code:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView$1$1;->this$1:Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRemoteLockView$1;->this$0:Lcom/android/keyguard/KeyguardRemoteLockView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardRemoteLockView;->resetPasswordText(Z)V

    goto :goto_0
.end method

.class public Lcom/android/keyguard/KeyguardRemoteLockView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardRemoteLockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;
    }
.end annotation


# instance fields
.field private mCheckRemoteLockThread:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

.field private mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRemoteLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardRemoteLockView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardRemoteLockView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRemoteLockView;->checkRemoteCode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardRemoteLockView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardRemoteLockView;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardRemoteLockView;->setRemoteLockEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardRemoteLockView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardRemoteLockView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/keyguard/KeyguardRemoteLockView;->startUnblockService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardRemoteLockView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardRemoteLockView;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/KeyguardRemoteLockView;Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;)Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardRemoteLockView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    .prologue
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCheckRemoteLockThread:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    return-object p1
.end method

.method private checkRemoteCode(Ljava/lang/String;)Z
    .locals 9
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .local v0, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    const/4 v2, 0x0

    .local v2, "ret":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "RemoteLockScreen"

    const-string v4, "checkRemoteCode"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/motorola/android/internal/util/CBSLoader;->getTargetContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRemoteLockView;->isSystemReady()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2

    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getRemoteUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_remote_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private isSystemReady()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .local v1, "isSystemReady":Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v1

    :cond_0
    return v1
.end method

.method private setRemoteLockEnabled(Z)V
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    iget-object v3, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/android/internal/util/CBSLoader;->getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;

    move-result-object v0

    .local v0, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    const/4 v2, 0x0

    .local v2, "ret":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .local v1, "result":Ljava/lang/Object;
    :try_start_0
    const-string v3, "RemoteLockScreen"

    const-string v4, "setRemoteLockEnabled"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/motorola/android/internal/util/CBSLoader;->getTargetContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRemoteLockView;->isSystemReady()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/motorola/android/internal/util/CBSLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static startUnblockService(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.motorola.android.sprintomadm.UNBLOCK_DATA"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "implicitIntent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v3, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .local v6, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    sget v0, Lcom/android/keyguard/R$id;->simPinEntry:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mRemoteUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_remote_lock_instructions:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_remote_lock_instructions:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRemoteLockView;->resetPasswordText(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRemoteLockView;->getRemoteUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCheckRemoteLockThread:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/keyguard/KeyguardRemoteLockView$1;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardRemoteLockView$1;-><init>(Lcom/android/keyguard/KeyguardRemoteLockView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCheckRemoteLockThread:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRemoteLockView;->mCheckRemoteLockThread:Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardRemoteLockView$CheckRemoteLock;->start()V

    goto :goto_0
.end method

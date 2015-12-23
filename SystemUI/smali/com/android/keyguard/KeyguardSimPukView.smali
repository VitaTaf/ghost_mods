.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# instance fields
.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mDSSkipButton:Landroid/widget/ImageButton;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 57
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 64
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSimPukView;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSimPukView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 394
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 396
    const/4 v1, 0x1

    .line 398
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 386
    const/4 v0, 0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPukPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 202
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_puk_code:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 368
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 369
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 371
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 372
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 374
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 379
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private updateSim()V
    .locals 4

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 445
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->start()V

    .line 447
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 227
    sget v0, Lcom/android/keyguard/R$id;->pukEntry:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 287
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 293
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 234
    sget v0, Lcom/android/keyguard/R$id;->key_ds_skip:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 280
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    .line 281
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 306
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 217
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 452
    return-void
.end method

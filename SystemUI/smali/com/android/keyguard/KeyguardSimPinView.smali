.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mDSSkipButton:Landroid/widget/ImageButton;

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 61
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPinView;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method private getPinPasswordErrorMessage(I)Ljava/lang/String;
    .locals 6
    .param p1, "attemptsRemaining"    # I

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v1, "KeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v0

    .line 165
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$plurals;->kg_password_wrong_pin_code:I

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

    .line 170
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 324
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 327
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 328
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 335
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 311
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/android/keyguard/R$id;->simPinEntry:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 245
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 251
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 192
    sget v0, Lcom/android/keyguard/R$id;->key_ds_skip:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 235
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 238
    :cond_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    .line 239
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 264
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 97
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 98
    const-string v9, "KeyguardSimPinView"

    const-string v10, "Resetting state"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 102
    .local v4, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFirstUnSkippedLockedSIMState(Z)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v9, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 107
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 109
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 111
    .local v7, "rez":Landroid/content/res/Resources;
    const/4 v0, -0x1

    .line 112
    .local v0, "color":I
    if-ge v1, v12, :cond_3

    .line 113
    sget v9, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 116
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_2

    .line 117
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 155
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v9, v5, v11}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 156
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 121
    .end local v5    # "msg":Ljava/lang/String;
    :cond_3
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 122
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 123
    .local v2, "displayName":Ljava/lang/CharSequence;
    :goto_2
    sget v9, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions_multi:I

    new-array v10, v11, [Ljava/lang/Object;

    aput-object v2, v10, v13

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .restart local v5    # "msg":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 125
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 128
    :cond_4
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getValidSimCount()I

    move-result v9

    if-lt v9, v12, :cond_8

    .line 129
    sget v6, Lcom/android/keyguard/R$drawable;->zz_moto_ic_sim_skip:I

    .line 130
    .local v6, "resId":I
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockedSimCount()I

    move-result v9

    if-lt v9, v12, :cond_5

    .line 131
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSkippedSubId()I

    move-result v8

    .line 132
    .local v8, "subId":I
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 133
    iget v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v4, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubIdSkipped(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 136
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 143
    .end local v8    # "subId":I
    :cond_5
    :goto_3
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_2

    .line 144
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 122
    .end local v2    # "displayName":Ljava/lang/CharSequence;
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "resId":I
    :cond_6
    const-string v2, ""

    goto :goto_2

    .line 139
    .restart local v2    # "displayName":Ljava/lang/CharSequence;
    .restart local v5    # "msg":Ljava/lang/String;
    .restart local v6    # "resId":I
    .restart local v8    # "subId":I
    :cond_7
    sget v6, Lcom/android/keyguard/R$drawable;->zz_moto_ic_sim_prev:I

    goto :goto_3

    .line 148
    .end local v6    # "resId":I
    .end local v8    # "subId":I
    :cond_8
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSkippedSubId()V

    .line 149
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    if-eqz v9, :cond_2

    .line 150
    iget-object v9, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDSSkipButton:Landroid/widget/ImageButton;

    invoke-virtual {v9, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 340
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 345
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    .line 346
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 393
    :cond_1
    :goto_0
    return-void

    .line 350
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 352
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v1, :cond_1

    .line 353
    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 391
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    goto :goto_0
.end method

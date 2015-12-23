.class public Lcom/android/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# instance fields
.field private emergencySMSState:I

.field private emergencySmsEnabled:I

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/keyguard/EmergencyButton$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$1;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 57
    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->emergencySmsEnabled:I

    iput v1, p0, Lcom/android/keyguard/EmergencyButton;->emergencySMSState:I

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/EmergencyButton;->emergencySmsEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/EmergencyButton;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    return-void
.end method

.method private updateEmergencyCallButton()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "enabled":Z
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    const/4 v0, 0x1

    .line 158
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 159
    .local v1, "iconVisible":Z
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v2

    .line 160
    .local v2, "phoneState":I
    iget v6, p0, Lcom/android/keyguard/EmergencyButton;->emergencySmsEnabled:I

    if-eqz v6, :cond_1

    if-eq v2, v7, :cond_1

    if-eq v2, v5, :cond_1

    .line 163
    const/4 v1, 0x1

    .line 165
    :cond_1
    iget v6, p0, Lcom/android/keyguard/EmergencyButton;->emergencySmsEnabled:I

    if-ne v6, v5, :cond_2

    .line 166
    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {p0, v7, v5}, Lcom/android/keyguard/EmergencyButton;->setTextSize(IF)V

    .line 168
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;ZZ)V

    .line 170
    return-void

    .line 142
    .end local v1    # "iconVisible":Z
    .end local v2    # "phoneState":I
    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinVoiceSecure()Z

    move-result v4

    .line 144
    .local v4, "simLocked":Z
    if-eqz v4, :cond_5

    .line 146
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v0

    .line 153
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLocked()Z

    move-result v3

    .line 154
    .local v3, "remoteLocked":Z
    if-nez v0, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    move v0, v5

    :goto_2
    goto :goto_0

    .line 150
    .end local v3    # "remoteLocked":Z
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    goto :goto_1

    .line 154
    .restart local v3    # "remoteLocked":Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 78
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 89
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 91
    new-instance v0, Lcom/android/keyguard/EmergencyButton$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButton$2;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V

    .line 97
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 105
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 106
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()V

    .line 136
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "emergency_sms_active"

    invoke-static {v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/EmergencyButton;->emergencySMSState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->emergencySmsEnabled:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/keyguard/EmergencyButton;->emergencySMSState:I

    if-ne v2, v6, :cond_1

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "emergency_sms_mode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const v2, 0x10808000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 126
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x1

    .line 127
    .local v0, "bypassHandler":Z
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction(Z)V

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 114
    .end local v0    # "bypassHandler":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

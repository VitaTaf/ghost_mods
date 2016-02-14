.class public Lcom/android/keyguard/DividerView;
.super Landroid/view/View;
.source "DividerView.java"


# instance fields
.field private emergencySmsEnabled:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/DividerView;->emergencySmsEnabled:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/DividerView;->emergencySmsEnabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateDividerView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "enabled":Z
    iget-object v4, p0, Lcom/android/keyguard/DividerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    .local v1, "simLocked":Z
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/DividerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/DividerView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLocked()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/4 v0, 0x1

    .end local v1    # "simLocked":Z
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .local v2, "vissible":Z
    iget v4, p0, Lcom/android/keyguard/DividerView;->emergencySmsEnabled:I

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/keyguard/DividerView;->setVisibility(I)V

    :goto_2
    return-void

    .end local v2    # "vissible":Z
    .restart local v1    # "simLocked":Z
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/DividerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1

    .end local v1    # "simLocked":Z
    .restart local v2    # "vissible":Z
    :cond_5
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/keyguard/DividerView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/DividerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/DividerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/keyguard/DividerView;->updateDividerView()V

    return-void
.end method

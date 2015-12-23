.class public abstract Lcom/android/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# instance fields
.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 445
    new-instance v0, Lcom/android/keyguard/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewBase$1;-><init>(Lcom/android/keyguard/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewBase;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewBase;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 397
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 399
    return-void

    .line 397
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 420
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/android/keyguard/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 421
    .local v0, "configDisabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 422
    .local v2, "isTestHarness":Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 423
    .local v1, "fileOverride":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dismiss()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    return v0
.end method

.method public dismiss(Z)Z
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(Z)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 91
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 158
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 406
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "deferKeyguardDone":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_1

    .line 192
    if-eqz v0, :cond_2

    .line 193
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending()V

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0
.end method

.method protected getActivityLauncher()Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewBase;->shouldEnableMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss()Z

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 309
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 310
    sparse-switch v0, :sswitch_data_0

    .line 388
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 316
    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 322
    goto :goto_0

    .line 333
    :cond_2
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v1, v2

    .line 334
    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 370
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 383
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v1, v2

    .line 384
    goto :goto_0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
    .end sparse-switch

    .line 370
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
        0xde -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    sget v0, Lcom/android/keyguard/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 106
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    .line 109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 111
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 230
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->clearFocus()V

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->requestFocus()Z

    .line 240
    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 1
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "needsInput"    # Z

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method protected onUserActivityTimeoutChanged()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    .line 217
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 488
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 100
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 439
    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 119
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    .line 247
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 253
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 211
    :cond_0
    return-void
.end method

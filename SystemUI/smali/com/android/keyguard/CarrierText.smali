.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$CarrierTextForSim;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .local v1, "spnValid":Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .end local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    return-object p0

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0    # "plmnValid":Z
    :cond_2
    move v1, v3

    goto :goto_1

    .restart local v1    # "spnValid":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    move-object p0, p1

    goto :goto_2

    :cond_5
    const-string p0, ""

    goto :goto_2
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    move-object v0, p2

    goto :goto_0

    :pswitch_1
    const-string v0, ""

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->keyguard_network_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_sim_error_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    if-nez p1, :cond_0

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .local v0, "missingAndNotProvisioned":Z
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .end local v0    # "missingAndNotProvisioned":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "missingAndNotProvisioned":Z
    :cond_3
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimUnknown:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "simMessage":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040607

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    .local v0, "screenOn":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    return-void
.end method

.method protected updateCarrierText()V
    .locals 25

    .prologue
    const/4 v5, 0x1

    .local v5, "allSimsMissing":Z
    const/4 v9, 0x0

    .local v9, "displayText":Ljava/lang/CharSequence;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "slotTextList":Ljava/util/List;, "Ljava/util/List<Lcom/android/keyguard/CarrierText$CarrierTextForSim;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v19

    .local v19, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v21

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v15

    .local v15, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "carrierName":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "carrierTextForSimState":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    const/4 v5, 0x0

    new-instance v22, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v23

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v21

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/keyguard/CarrierText$CarrierTextForSim;-><init>(Lcom/android/keyguard/CarrierText;IILjava/lang/CharSequence;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v6    # "carrierName":Ljava/lang/CharSequence;
    .end local v7    # "carrierTextForSimState":Ljava/lang/CharSequence;
    .end local v15    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInvalidCards()Ljava/util/HashMap;

    move-result-object v13

    .local v13, "invalidCards":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;>;"
    invoke-virtual {v13}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_5

    const/4 v5, 0x0

    const-string v20, ""

    .local v20, "text":Ljava/lang/CharSequence;
    if-nez v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x104039c

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    :cond_2
    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .local v8, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .local v18, "subId":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;

    .local v12, "invalidCardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    iget-object v0, v12, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    iget-object v0, v12, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->plmn:Ljava/lang/String;

    move-object/from16 v20, v0

    :cond_3
    sget-object v21, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .restart local v7    # "carrierTextForSimState":Ljava/lang/CharSequence;
    new-instance v21, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    iget v0, v12, Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;->slotId:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/android/keyguard/CarrierText$CarrierTextForSim;-><init>(Lcom/android/keyguard/CarrierText;IILjava/lang/CharSequence;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v20, ""

    goto :goto_1

    .end local v7    # "carrierTextForSimState":Ljava/lang/CharSequence;
    .end local v8    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;>;"
    .end local v12    # "invalidCardData":Lcom/android/keyguard/KeyguardUpdateMonitor$InvalidCardData;
    .end local v18    # "subId":I
    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v20    # "text":Ljava/lang/CharSequence;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/keyguard/CarrierText$CarrierTextForSim;

    .local v20, "text":Lcom/android/keyguard/CarrierText$CarrierTextForSim;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/keyguard/CarrierText$CarrierTextForSim;->carrierTextForSimState:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_2

    .end local v20    # "text":Lcom/android/keyguard/CarrierText$CarrierTextForSim;
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v10    # "i":I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .restart local v10    # "i":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x104039c

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .local v20, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    new-instance v23, Landroid/content/IntentFilter;

    const-string v24, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v10

    .local v10, "i":Landroid/content/Intent;
    if-eqz v10, :cond_b

    const-string v17, ""

    .local v17, "spn":Ljava/lang/String;
    const-string v14, ""

    .local v14, "plmn":Ljava/lang/String;
    const-string v21, "showSpn"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string v21, "spn"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :cond_9
    const-string v21, "showPlmn"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string v21, "plmn"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_a
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    .end local v14    # "plmn":Ljava/lang/String;
    .end local v17    # "spn":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_3
.end method

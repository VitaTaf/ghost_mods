.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
.super Ljava/lang/Object;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaConfig"
.end annotation


# instance fields
.field alwaysShowCdmaRssi:Z

.field hspaDataDistinguishable:Z

.field private mConfigAllowDifferentiatedInetCondition:Z

.field mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

.field private mConfigDifferingIconForSimError:Z

.field private mConfigDifferingIconForSimLockStates:Z

.field mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

.field private mConfigEnableActivityOnWideStatusbarIcons:Z

.field private mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

.field private mConfigEnableEriSounds:Z

.field private mConfigEnableFemtocellIndicator:Z

.field mConfigEnableGOverrideDuringGsmVoiceCall:Z

.field mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

.field mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

.field private mConfigEnableMotorolaCustomizations:Z

.field private mConfigEnableWideIcons:Z

.field private mConfigForceFullyOnWideStatusBarIcons:Z

.field private mConfigGprsAttachIconDisplayable:Z

.field private mConfigHspapDataDistinguishable:Z

.field mConfigIsCellBroadcastSupported:Z

.field mConfigMccMncBothOverride:[Ljava/lang/String;

.field mConfigMccMncHomeOverride:[Ljava/lang/String;

.field mConfigMccMncRoamOverride:[Ljava/lang/String;

.field mConfigNetworkNameDefault:Ljava/lang/String;

.field mConfigNetworkNameSeparator:Ljava/lang/String;

.field mConfigNetworkNameShortFormSupported:Z

.field mConfigNetworkNameShortFormTable:[Ljava/lang/String;

.field mConfigNetworkNameSpnHasPriority:Z

.field private mConfigOperatorName_string:Ljava/lang/String;

.field mConfigShow4GLTEforLTE:Z

.field mConfigShowBothWifiAndMobileNetwork:Z

.field private mConfigShowDataDisabledIcon:Z

.field mConfigShowEmergencyCallsOnlyIcon:Z

.field private mConfigShowIconForSimLockStates:Z

.field mConfigShowNetworkSuspendedIndicator:Z

.field mConfigShowNetworkTypeWhenVoiceOnlyService:Z

.field mConfigShowNoIconDuringCdmaVoiceCall:Z

.field mConfigShowNoIconDuringGsmVoiceCall:Z

.field mConfigShowNoIconDuringVoIPVoiceCall:Z

.field mConfigShowNoIconDuringVoLTEVoiceCall:Z

.field private mConfigShowNoServiceText:Z

.field mConfigShowPhoneRSSIForData:Z

.field mConfigShowSeparatedSignalBars:Z

.field mConfigShowSignalBarsWhenDataOnlyService:Z

.field private mConfigSignalSmoothingDecreaseInterval:I

.field private mConfigSignalSmoothingDelayFirstDecrease:I

.field private mConfigSignalSmoothingDelayFirstIncrease:I

.field private mConfigSignalSmoothingEnabledCDMA:Z

.field private mConfigSignalSmoothingEnabledGSM:Z

.field private mConfigSignalSmoothingEnabledLTE:Z

.field private mConfigSignalSmoothingIncreaseInterval:I

.field private mSystemPropertyRoamingIndicationDisabled:Z

.field private mSystemPropertyRoamingNoDataIndicationDisabled:Z

.field show4gForLte:Z

.field showAtLeast3G:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowPhoneRSSIForData:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    return v0
.end method

.method static readConfig(Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .locals 11
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "currentContext"    # Landroid/content/Context;

    .prologue
    const v10, 0x10e00e5

    const v9, 0x10e00e4

    const/16 v8, 0x2c

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;-><init>()V

    .local v0, "config":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f090007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    const v5, 0x1120059

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    const v5, 0x7f09000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    const v5, 0x7f090004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    const v5, 0x7f09001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    if-eqz v5, :cond_3

    const v5, 0x7f09001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    const v5, 0x7f09001f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    const v5, 0x7f090020

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    const v5, 0x7f090021

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    const v5, 0x7f090022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    :goto_1
    const v5, 0x7f0c0022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    const v5, 0x1040384

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    if-nez v5, :cond_4

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    const-string v5, "@0"

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    const v5, 0x11200c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    const v5, 0x11200c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    const v5, 0x11200c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    const v5, 0x10e00e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    const v5, 0x10e00e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    const v5, 0x11200c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    const v5, 0x7f070003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    if-nez v5, :cond_0

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    :cond_0
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: Type and Activity group options:\n  mConfigOperatorName_string=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move v5, v7

    goto/16 :goto_0

    :cond_3
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    goto/16 :goto_1

    :cond_4
    const v5, 0x7f09002c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    const v5, 0x7f09002d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    const v5, 0x11200c3

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const v5, 0x10406f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    const v5, 0x7f09002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    const v5, 0x7f090030

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    const v5, 0x7f090031

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    const v5, 0x7f090032

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    const v5, 0x7f090033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    const v5, 0x7f090034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    const v5, 0x7f090035

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    const v5, 0x7f090036

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    const v5, 0x7f090037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    const v5, 0x7f070004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    if-nez v5, :cond_5

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    :cond_5
    const v5, 0x7f070005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    if-nez v5, :cond_6

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    :cond_6
    const v5, 0x7f070006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    if-nez v5, :cond_7

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    :cond_7
    const v5, 0x7f090028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    const v5, 0x11200cb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    const v5, 0x7f090024

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    const v5, 0x7f090025

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    const v5, 0x7f090026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    const v5, 0x7f090027

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    const v5, 0x11200c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    const v5, 0x11200c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    const v5, 0x11200c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    const v5, 0x10e00e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    const v5, 0x10e00e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    const-string v5, "ro.mot.noroamingicon"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_9

    move v5, v7

    :goto_5
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    const-string v5, "ro.mot.roamingiconnodata"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_a

    move v5, v7

    :goto_6
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    const v5, 0x11200c9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    const v5, 0x11200ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    const v5, 0x11200c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    const v5, 0x7f070003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    if-nez v5, :cond_8

    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    :cond_8
    const v5, 0x11200c4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    const v5, 0x7f090038

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    const v5, 0x7f090039

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    goto/16 :goto_2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    goto/16 :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    move v5, v6

    goto :goto_5

    :cond_a
    move v5, v6

    goto :goto_6

    :cond_b
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_c

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_1

    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: Underlying StatusBar/QuickSettings Configuration:\n  mConfigEnableMotorolaCustomizations="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigEnableWideIcons="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigForceFullyOnWideStatusBarIcons="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigEnableActivityOnWideStatusbarIcons="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigEnableCustomActivityOnWideQuickSettingsIcons="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigAllowDifferentiatedInetCondition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: Signal group options:\n  mConfigShowEmergencyCallsOnlyIcon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigDifferingIconForSimError="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowIconForSimLockStates="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigDifferingIconForSimLockStates="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigShowSignalBarsWhenDataOnlyService="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowNetworkTypeWhenVoiceOnlyService="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigShowPhoneRSSIForData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowPhoneRSSIForData:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " alwaysShowCdmaRssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigEnable1xOverrideDuringCdmaVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowNoIconDuringCdmaVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigEnableGOverrideDuringGsmVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowNoIconDuringGsmVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigEnableLteOverrideDuringVoLTEVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowNoIconDuringVoLTEVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigEnableIpOverrideDuringVoIPVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowNoIconDuringVoIPVoiceCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigSignalSmoothingEnabledCDMA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigSignalSmoothingEnabledLTE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigSignalSmoothingEnabledGSM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigSignalSmoothingDelayFirstDecrease="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigSignalSmoothingDecreaseInterval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigSignalSmoothingDelayFirstIncrease="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigSignalSmoothingIncreaseInterval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mSystemPropertyRoamingIndicationDisabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSystemPropertyRoamingNoDataIndicationDisabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigShowSeparatedSignalBars="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigEnableEriSounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigEnableFemtocellIndicator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: Wifi group options:\n  mConfigShowBothWifiAndMobileNetwork="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: Type and Activity group options:\n  mConfigOperatorName_string=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigGprsAttachIconDisplayable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigShowNetworkSuspendedIndicator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  showAtLeast3G="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  hspaDataDistinguishable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigHspapDataDistinguishable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  show4gForLte="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigShow4GLTEforLTE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: CarrierLabel group options:\n  mConfigNetworkNameSeparator=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigNetworkNameDefault=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigNetworkNameSpnHasPriority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConfigShowNoServiceText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  mConfigIsCellBroadcastSupported="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    if-nez v5, :cond_e

    const-string v5, "readConfig: mConfigNetworkNameShortFormTable FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    if-nez v5, :cond_10

    const-string v5, "readConfig: mConfigMccMncBothOverride FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    if-nez v5, :cond_14

    const-string v5, "readConfig: mConfigMccMncHomeOverride FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    if-nez v5, :cond_18

    const-string v5, "readConfig: mConfigMccMncRoamOverride FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_f

    const-string v5, "readConfig: mConfigNetworkNameShortFormTable=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: mConfigNetworkNameShortFormTable=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" -> ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .end local v2    # "i":I
    :cond_10
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_11

    const-string v5, "readConfig: mConfigMccMncBothOverride=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "tmpLog":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_13

    if-eqz v2, :cond_12

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: mConfigMccMncBothOverride={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .end local v2    # "i":I
    .end local v4    # "tmpLog":Ljava/lang/StringBuilder;
    :cond_14
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_15

    const-string v5, "readConfig: mConfigMccMncHomeOverride=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v4    # "tmpLog":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_17

    if-eqz v2, :cond_16

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: mConfigMccMncHomeOverride={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v2    # "i":I
    .end local v4    # "tmpLog":Ljava/lang/StringBuilder;
    :cond_18
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_19

    const-string v5, "readConfig: mConfigMccMncRoamOverride=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v4    # "tmpLog":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1b

    if-eqz v2, :cond_1a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readConfig: mConfigMccMncRoamOverride={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

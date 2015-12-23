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

    .line 11779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11634
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    .line 11635
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    .line 11636
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    .line 11637
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    .line 11658
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    .line 11671
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    .line 11681
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    .line 11691
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    .line 11701
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    .line 11713
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    .line 11716
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    .line 11717
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    .line 11718
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    .line 11719
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    .line 11720
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    .line 11721
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    .line 11722
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z

    .line 11723
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    .line 11724
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    .line 11725
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    .line 11726
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    .line 11732
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    .line 11734
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    .line 11735
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 11736
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    .line 11737
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    .line 11738
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    .line 11739
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    .line 11740
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    .line 11741
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    .line 11742
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    .line 11743
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    .line 11744
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    .line 11745
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    .line 11746
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    .line 11747
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    .line 11749
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    .line 11752
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    .line 11753
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    .line 11754
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    .line 11755
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    .line 11756
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    .line 11757
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    .line 11758
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    .line 11761
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    .line 11762
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    .line 11763
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    .line 11765
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowPhoneRSSIForData:Z

    .line 11770
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    .line 11771
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    .line 11772
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    .line 11773
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    .line 11774
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    .line 11775
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    .line 11776
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    .line 11780
    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 11632
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowDataDisabledIcon:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    .prologue
    .line 11632
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

    .line 11787
    new-instance v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;-><init>()V

    .line 11789
    .local v0, "config":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 11792
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f090007

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->showAtLeast3G:Z

    .line 11796
    const v5, 0x1120059

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->alwaysShowCdmaRssi:Z

    .line 11800
    const v5, 0x7f09000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->show4gForLte:Z

    .line 11804
    const v5, 0x7f090004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->hspaDataDistinguishable:Z

    .line 11810
    const v5, 0x7f09001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    .line 11812
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    if-eqz v5, :cond_3

    .line 11813
    const v5, 0x7f09001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    .line 11815
    const v5, 0x7f09001f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    .line 11819
    const v5, 0x7f090020

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    .line 11821
    const v5, 0x7f090021

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    .line 11823
    const v5, 0x7f090022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    .line 11848
    :goto_1
    const v5, 0x7f0c0022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSeparator:Ljava/lang/String;

    .line 11850
    const v5, 0x1040384

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameDefault:Ljava/lang/String;

    .line 11853
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableMotorolaCustomizations:Z

    if-nez v5, :cond_4

    .line 11854
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    .line 11855
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    .line 11856
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    .line 11857
    const-string v5, "@0"

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    .line 11858
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    .line 11859
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    .line 11860
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    .line 11861
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    .line 11862
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    .line 11863
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    .line 11864
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    .line 11865
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    .line 11866
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    .line 11867
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    .line 11868
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    .line 11869
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    .line 11870
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    .line 11871
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 11872
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    .line 11873
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    .line 11874
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    .line 11875
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    .line 11877
    const v5, 0x11200c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    .line 11879
    const v5, 0x11200c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    .line 11881
    const v5, 0x11200c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    .line 11883
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    .line 11885
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    .line 11887
    const v5, 0x10e00e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    .line 11889
    const v5, 0x10e00e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    .line 11891
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    .line 11892
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    .line 11893
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    .line 11894
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    .line 11895
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    .line 11896
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    .line 11898
    const v5, 0x11200c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    .line 11900
    const v5, 0x7f070003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    .line 11902
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 11903
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    .line 11905
    :cond_0
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    .line 11906
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    .line 11907
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    .line 11908
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    .line 12035
    :goto_2
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->INFO:Z

    if-eqz v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_b

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-nez v5, :cond_b

    .line 12036
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

    .line 12292
    :cond_1
    :goto_3
    return-object v0

    :cond_2
    move v5, v7

    .line 11815
    goto/16 :goto_0

    .line 11826
    :cond_3
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableWideIcons:Z

    .line 11827
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigForceFullyOnWideStatusBarIcons:Z

    .line 11828
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableActivityOnWideStatusbarIcons:Z

    .line 11829
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableCustomActivityOnWideQuickSettingsIcons:Z

    .line 11830
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigAllowDifferentiatedInetCondition:Z

    goto/16 :goto_1

    .line 11913
    :cond_4
    const v5, 0x7f09002c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigHspapDataDistinguishable:Z

    .line 11915
    const v5, 0x7f09002d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShow4GLTEforLTE:Z

    .line 11918
    const v5, 0x11200c3

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11923
    :goto_4
    const v5, 0x10406f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigOperatorName_string:Ljava/lang/String;

    .line 11925
    const v5, 0x7f09002f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkSuspendedIndicator:Z

    .line 11927
    const v5, 0x7f090030

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnable1xOverrideDuringCdmaVoiceCall:Z

    .line 11929
    const v5, 0x7f090031

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringCdmaVoiceCall:Z

    .line 11931
    const v5, 0x7f090032

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableGOverrideDuringGsmVoiceCall:Z

    .line 11933
    const v5, 0x7f090033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringGsmVoiceCall:Z

    .line 11935
    const v5, 0x7f090034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableLteOverrideDuringVoLTEVoiceCall:Z

    .line 11937
    const v5, 0x7f090035

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoLTEVoiceCall:Z

    .line 11939
    const v5, 0x7f090036

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableIpOverrideDuringVoIPVoiceCall:Z

    .line 11941
    const v5, 0x7f090037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoIconDuringVoIPVoiceCall:Z

    .line 11943
    const v5, 0x7f070004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    .line 11945
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    if-nez v5, :cond_5

    .line 11946
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    .line 11948
    :cond_5
    const v5, 0x7f070005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    .line 11950
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    if-nez v5, :cond_6

    .line 11951
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    .line 11953
    :cond_6
    const v5, 0x7f070006

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    .line 11955
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    if-nez v5, :cond_7

    .line 11956
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    .line 11958
    :cond_7
    const v5, 0x7f090028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSeparatedSignalBars:Z

    .line 11960
    const v5, 0x11200cb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowBothWifiAndMobileNetwork:Z

    .line 11962
    const v5, 0x7f090024

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowSignalBarsWhenDataOnlyService:Z

    .line 11964
    const v5, 0x7f090025

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNetworkTypeWhenVoiceOnlyService:Z

    .line 11966
    const v5, 0x7f090026

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowEmergencyCallsOnlyIcon:Z

    .line 11968
    const v5, 0x7f090027

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigCompletelyDisableEmergencyCallsOnlyIcon:Z

    .line 11970
    const v5, 0x11200c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledCDMA:Z

    .line 11972
    const v5, 0x11200c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledLTE:Z

    .line 11974
    const v5, 0x11200c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingEnabledGSM:Z

    .line 11976
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstDecrease:I

    .line 11978
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDecreaseInterval:I

    .line 11980
    const v5, 0x10e00e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingDelayFirstIncrease:I

    .line 11982
    const v5, 0x10e00e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigSignalSmoothingIncreaseInterval:I

    .line 11984
    const-string v5, "ro.mot.noroamingicon"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_9

    move v5, v7

    :goto_5
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingIndicationDisabled:Z

    .line 11986
    const-string v5, "ro.mot.roamingiconnodata"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_a

    move v5, v7

    :goto_6
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mSystemPropertyRoamingNoDataIndicationDisabled:Z

    .line 11989
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableEriSounds:Z

    .line 11990
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigEnableFemtocellIndicator:Z

    .line 11997
    const v5, 0x11200c9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameSpnHasPriority:Z

    .line 11999
    const v5, 0x11200ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowNoServiceText:Z

    .line 12001
    const v5, 0x11200c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormSupported:Z

    .line 12003
    const v5, 0x7f070003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    .line 12005
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    if-nez v5, :cond_8

    .line 12006
    new-array v5, v6, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    .line 12008
    :cond_8
    const v5, 0x11200c4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimError:Z

    .line 12010
    const v5, 0x7f090038

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigShowIconForSimLockStates:Z

    .line 12012
    const v5, 0x7f090039

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigDifferingIconForSimLockStates:Z

    .line 12017
    iput-boolean v7, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigIsCellBroadcastSupported:Z

    goto/16 :goto_2

    .line 11920
    :catch_0
    move-exception v1

    .line 11921
    .local v1, "e":Ljava/lang/Exception;
    iput-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigGprsAttachIconDisplayable:Z

    goto/16 :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    move v5, v6

    .line 11984
    goto :goto_5

    :cond_a
    move v5, v6

    .line 11986
    goto :goto_6

    .line 12042
    :cond_b
    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->DEBUG:Z

    if-nez v5, :cond_c

    sget-boolean v5, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->CHATTY:Z

    if-eqz v5, :cond_1

    .line 12043
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

    .line 12061
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

    .line 12135
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

    .line 12141
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

    .line 12164
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

    .line 12181
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    if-nez v5, :cond_e

    .line 12182
    const-string v5, "readConfig: mConfigNetworkNameShortFormTable FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12209
    :cond_d
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    if-nez v5, :cond_10

    .line 12210
    const-string v5, "readConfig: mConfigMccMncBothOverride FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12236
    :goto_8
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    if-nez v5, :cond_14

    .line 12237
    const-string v5, "readConfig: mConfigMccMncHomeOverride FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12263
    :goto_9
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    if-nez v5, :cond_18

    .line 12264
    const-string v5, "readConfig: mConfigMccMncRoamOverride FAILED TO INITIALIZE"

    invoke-static {p0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 12185
    :cond_e
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_f

    .line 12186
    const-string v5, "readConfig: mConfigNetworkNameShortFormTable=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 12191
    :cond_f
    const/4 v2, 0x0

    .line 12192
    .local v2, "i":I
    :goto_a
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigNetworkNameShortFormTable:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_d

    .line 12195
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

    .line 12193
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 12213
    .end local v2    # "i":I
    :cond_10
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_11

    .line 12214
    const-string v5, "readConfig: mConfigMccMncBothOverride=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 12218
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12220
    .local v4, "tmpLog":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 12221
    .restart local v2    # "i":I
    :goto_b
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_13

    .line 12224
    if-eqz v2, :cond_12

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12225
    :cond_12
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncBothOverride:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12222
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 12228
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

    .line 12240
    .end local v2    # "i":I
    .end local v4    # "tmpLog":Ljava/lang/StringBuilder;
    :cond_14
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_15

    .line 12241
    const-string v5, "readConfig: mConfigMccMncHomeOverride=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 12245
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12247
    .restart local v4    # "tmpLog":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 12248
    .restart local v2    # "i":I
    :goto_c
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_17

    .line 12251
    if-eqz v2, :cond_16

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12252
    :cond_16
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncHomeOverride:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12249
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 12255
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

    .line 12267
    .end local v2    # "i":I
    .end local v4    # "tmpLog":Ljava/lang/StringBuilder;
    :cond_18
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_19

    .line 12268
    const-string v5, "readConfig: mConfigMccMncRoamOverride=(empty)"

    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 12272
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12274
    .restart local v4    # "tmpLog":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 12275
    .restart local v2    # "i":I
    :goto_d
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1b

    .line 12278
    if-eqz v2, :cond_1a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12279
    :cond_1a
    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaConfig;->mConfigMccMncRoamOverride:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12276
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 12282
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

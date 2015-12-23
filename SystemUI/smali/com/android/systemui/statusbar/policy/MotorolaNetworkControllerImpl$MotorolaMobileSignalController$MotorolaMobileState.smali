.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;
.super Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaMobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field dataConnected:Z

.field dataSim:Z

.field inetForNetwork:I

.field isEmergency:Z

.field mCellBroadcastMessage:Ljava/lang/String;

.field mCurrentContext:Landroid/content/Context;

.field mDataActivityState:I

.field mDataConnectionState:I

.field mDataNetType:I

.field mDataServiceState:I

.field mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

.field mIsCellBroadcastEnabled:Z

.field mIsRoamingState:Z

.field mLastSignalLevel:I

.field mMaxSignalLevel:I

.field mMobileContentDescriptionDataActivity:Ljava/lang/String;

.field mMobileContentDescriptionDataSignal:Ljava/lang/String;

.field mMobileContentDescriptionDataType:Ljava/lang/String;

.field mMobileContentDescriptionRoaming:Ljava/lang/String;

.field mMobileContentDescriptionSignal:Ljava/lang/String;

.field mMobileContentDescriptionSim:Ljava/lang/String;

.field mMobileDataEnabled:Z

.field mMobileDataEnabledInitialized:Z

.field mMobileDataEnabledSettingUpdate:Z

.field mMobileDataIsConnected:Z

.field mMobileSlotIndex:I

.field mMobileUIModeDataType:I

.field mMobileUIModeDataTypeAndActivity:I

.field mMobileUIModeRoaming:I

.field mMobileUIModeSignal:I

.field mMobileUIModeSim:I

.field mNetworkNameShortForm:Ljava/lang/String;

.field mPhoneCallState:I

.field mQSDataSignalIconId:I

.field mQSMobileBoolDataActivityIn:Z

.field mQSMobileBoolDataActivityOut:Z

.field mQSMobileIconIdDataActivity:I

.field mQSMobileIconIdDataType:I

.field mQSMobileIconIdRoaming:I

.field mQSMobileIconIdSignal:I

.field mQSMobileIconIdSim:I

.field mQSMobileSlotIndex:I

.field mQSMobileUIModeDataType:I

.field mQSMobileUIModeDataTypeAndActivity:I

.field mQSMobileUIModeRoaming:I

.field mQSMobileUIModeSignal:I

.field mQSMobileUIModeSim:I

.field mSBDataSignalIconId:I

.field mSBMobileIconIdDataActivity:I

.field mSBMobileIconIdDataType:I

.field mSBMobileIconIdRoaming:I

.field mSBMobileIconIdSignal:I

.field mSBMobileIconIdSim:I

.field mSBMobileSlotIndex:I

.field mSBMobileUIModeDataType:I

.field mSBMobileUIModeDataTypeAndActivity:I

.field mSBMobileUIModeRoaming:I

.field mSBMobileUIModeSignal:I

.field mSBMobileUIModeSim:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSettingShortNameAllowedByUser:Z

.field mSignalSmoothingIsFirstStepInThisDirection:Z

.field mSignalSmoothingLastChangeWasDecrease:Z

.field mSignalSmoothingLastChangeWasIncrease:Z

.field mSignalSmoothingLastDecreaseChangeTime:J

.field mSignalSmoothingLastIncreaseChangeTime:J

.field mSignalSmoothingReportedIconLevel:I

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field networkName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 10352
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;-><init>()V

    .line 10367
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    .line 10368
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 10369
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    .line 10370
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    .line 10371
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    .line 10372
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 10373
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 10377
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    .line 10378
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    .line 10379
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsRoamingState:Z

    .line 10380
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    .line 10381
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 10382
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    .line 10386
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    .line 10390
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    .line 10391
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    .line 10392
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    .line 10395
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    .line 10396
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    .line 10397
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 10399
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 10400
    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 10401
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 10402
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 10403
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 10404
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 10406
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileSlotIndex:I

    .line 10408
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    .line 10409
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    .line 10410
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    .line 10411
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    .line 10412
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 10414
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileSlotIndex:I

    .line 10415
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSim:I

    .line 10416
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    .line 10417
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    .line 10418
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    .line 10419
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    .line 10421
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileSlotIndex:I

    .line 10422
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSim:I

    .line 10423
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    .line 10424
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    .line 10425
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    .line 10426
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    .line 10428
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 10429
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    .line 10431
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    .line 10432
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    .line 10433
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    .line 10434
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    .line 10435
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    .line 10437
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    .line 10438
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    .line 10439
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    .line 10440
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    .line 10441
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    .line 10443
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    .line 10444
    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    .line 10446
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    .line 10447
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    .line 10448
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    .line 10449
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    .line 10450
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    .line 10451
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    .line 10453
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 10455
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsCellBroadcastEnabled:Z

    .line 10456
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCellBroadcastMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;

    .prologue
    .line 10464
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->copyFrom(Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;)V

    move-object v0, p1

    .line 10466
    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    .line 10468
    .local v0, "state":Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    .line 10469
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    .line 10470
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    .line 10471
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    .line 10472
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    .line 10473
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    .line 10479
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    .line 10480
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 10481
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    .line 10482
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    .line 10483
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    .line 10484
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 10485
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    .line 10489
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    .line 10490
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    .line 10491
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsRoamingState:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsRoamingState:Z

    .line 10492
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    .line 10493
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    .line 10494
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    .line 10496
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    .line 10500
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    .line 10501
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    .line 10502
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    .line 10505
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    .line 10506
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    .line 10507
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    .line 10509
    iget-wide v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    .line 10510
    iget-wide v2, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    .line 10511
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    .line 10512
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    .line 10513
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    .line 10514
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    .line 10516
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileSlotIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileSlotIndex:I

    .line 10518
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    .line 10519
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    .line 10520
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    .line 10521
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    .line 10522
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    .line 10524
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileSlotIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileSlotIndex:I

    .line 10525
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSim:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSim:I

    .line 10526
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    .line 10527
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    .line 10528
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    .line 10529
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    .line 10531
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileSlotIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileSlotIndex:I

    .line 10532
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSim:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSim:I

    .line 10533
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    .line 10534
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    .line 10535
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    .line 10536
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    .line 10538
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    .line 10539
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    .line 10541
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    .line 10542
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    .line 10543
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    .line 10544
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    .line 10545
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    .line 10547
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    .line 10548
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    .line 10549
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    .line 10550
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    .line 10551
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    .line 10553
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    .line 10554
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    .line 10556
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    .line 10557
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    .line 10558
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    .line 10559
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    .line 10560
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    .line 10561
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    .line 10563
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    .line 10565
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 10683
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsRoamingState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsRoamingState:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-wide v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileSlotIndex:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileSlotIndex:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileSlotIndex:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileSlotIndex:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSim:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSim:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileSlotIndex:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileSlotIndex:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSim:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSim:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 10571
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaState;->toString(Ljava/lang/StringBuilder;)V

    .line 10573
    const-string v0, ",\n Mobile Extension:\n  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10574
    const-string v0, "Emerg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->isEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10575
    const-string v0, "Airpl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->airplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10576
    const-string v0, "inet4Net="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->inetForNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10584
    const-string v0, "netNm="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10585
    const-string v0, "ShortAllow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSettingShortNameAllowedByUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10586
    const-string v0, "ShortName=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mNetworkNameShortForm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10588
    const-string v0, "SvcSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10590
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 10591
    const-string v0, "VoiceSvcSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x1

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10596
    :goto_0
    const-string v0, "DataSvcSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataServiceState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10597
    const-string v0, "CallSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mPhoneCallState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getCallStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10602
    const-string v0, "DataEnabUpd="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledSettingUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10603
    const-string v0, "DataEnab="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10604
    const-string v0, "DataEnabInit="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataEnabledInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10606
    const-string v0, "DataConn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10608
    const-string v0, "WifiEnab="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10609
    const-string v0, "WifiConn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10610
    const-string v0, "MblConn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileDataIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10612
    const-string v0, "MaxLvl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMaxSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10613
    const-string v0, "LastLvl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mLastSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10614
    const-string v0, "LastIncrTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastIncreaseChangeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10615
    const-string v0, "LastDecrTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastDecreaseChangeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10616
    const-string v0, "LastWasIncr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasIncrease:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10617
    const-string v0, "LastWasDecr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingLastChangeWasDecrease:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10618
    const-string v0, "FirstStep="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingIsFirstStepInThisDirection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10619
    const-string v0, "SmoothLvl="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalSmoothingReportedIconLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10621
    const-string v0, "SlotIdx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10622
    const-string v0, "SBSlotIdx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10623
    const-string v0, "QSSlotIdx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10625
    const-string v0, "dSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->dataSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10626
    const-string v0, "SimSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getSimStateLogString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1200(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10627
    const-string v0, "ModeSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSim:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSimUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10628
    const-string v0, "SBModeSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSim:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSimUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10629
    const-string v0, "SBSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSim:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10630
    const-string v0, "QSModeSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSim:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSimUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10631
    const-string v0, "QSSim="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSim:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10632
    const-string v0, "MsgSim=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSim:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10634
    const-string v0, "SigStr="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10635
    const-string v0, "ModeSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeSignal:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10636
    const-string v0, "SBModeSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeSignal:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10637
    const-string v0, "SBSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10638
    const-string v0, "QSModeSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeSignal:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileSignalUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10639
    const-string v0, "QSSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdSignal:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10640
    const-string v0, "MsgSig=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionSignal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10642
    const-string v0, "SBDataSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBDataSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10643
    const-string v0, "QSDataSig="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSDataSignalIconId:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10644
    const-string v0, "MsgDataSig=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataSignal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10646
    const-string v0, "Roam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mIsRoamingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10647
    const-string v0, "ModeRoam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeRoaming:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileRoamingUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10648
    const-string v0, "SBModeRoam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeRoaming:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileRoamingUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10649
    const-string v0, "SBRoam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdRoaming:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10650
    const-string v0, "QSModeRoam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeRoaming:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileRoamingUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10651
    const-string v0, "QSRoam="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdRoaming:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10652
    const-string v0, "MsgRoam=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionRoaming:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10654
    const-string v0, "ConnSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataConnectionState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getConnectionStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2700(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10655
    const-string v0, "MblType&Act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataTypeAndActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10656
    const-string v0, "SBMblType&Act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataTypeAndActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10657
    const-string v0, "QSMblType&Act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataTypeAndActivity:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileTypeAndActivityUIMode_Name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10659
    const-string v0, "DefIcons="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10661
    const-string v0, "NetType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataNetType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getNetworkTypeLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$1400(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10662
    const-string v0, "IdxType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileUIModeDataType:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10663
    const-string v0, "SBIdxType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileUIModeDataType:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10664
    const-string v0, "SBType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10665
    const-string v0, "QSIdxType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileUIModeDataType:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getMobileNetworkTypeMappingIndexName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10666
    const-string v0, "QSType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataType:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10667
    const-string v0, "MsgType=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10669
    const-string v0, "ActSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mDataActivityState:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getDataActivityLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2800(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10670
    const-string v0, "SBAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mSBMobileIconIdDataActivity:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10671
    const-string v0, "QSAct="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mCurrentContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileIconIdDataActivity:I

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getResourceLogString(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$700(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10672
    const-string v0, "QSIn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10673
    const-string v0, "QSOut="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mQSMobileBoolDataActivityOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10674
    const-string v0, "MsgAct=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mMobileContentDescriptionDataActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10676
    return-void

    .line 10593
    :cond_0
    const-string v0, "VoiceSvcSt="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileState;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    # invokes: Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->getServiceStateLogString(I)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl;->access$2600(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

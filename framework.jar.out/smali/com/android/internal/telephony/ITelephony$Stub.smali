.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0x5

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x6

.field static final TRANSACTION_call:I = 0x2

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x65

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableDataConnectivity:I = 0x27

.field static final TRANSACTION_disableLocationUpdates:I = 0x24

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x25

.field static final TRANSACTION_doMobileDataRecovery:I = 0x79

.field static final TRANSACTION_enableDataConnectivity:I = 0x26

.field static final TRANSACTION_enableLocationUpdates:I = 0x22

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x23

.field static final TRANSACTION_enableVideoCalling:I = 0x74

.field static final TRANSACTION_endCall:I = 0x3

.field static final TRANSACTION_endCallForSubscriber:I = 0x4

.field static final TRANSACTION_getAIDByAppFamily:I = 0x52

.field static final TRANSACTION_getActiveCallType:I = 0x82

.field static final TRANSACTION_getActivePhoneType:I = 0x2f

.field static final TRANSACTION_getActivePhoneTypeForSubscriber:I = 0x30

.field static final TRANSACTION_getAllCellInfo:I = 0x45

.field static final TRANSACTION_getAtr:I = 0x6e

.field static final TRANSACTION_getAtrUsingSubId:I = 0x6f

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x5a

.field static final TRANSACTION_getCallState:I = 0x2b

.field static final TRANSACTION_getCallStateForSubscriber:I = 0x2c

.field static final TRANSACTION_getCarrierPackageNamesForIntent:I = 0x66

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x64

.field static final TRANSACTION_getCdmaEriAlertUri:I = 0x81

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x31

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x32

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x33

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x34

.field static final TRANSACTION_getCdmaEriText:I = 0x35

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x36

.field static final TRANSACTION_getCdmaMdn:I = 0x62

.field static final TRANSACTION_getCdmaMin:I = 0x63

.field static final TRANSACTION_getCellLocation:I = 0x29

.field static final TRANSACTION_getDataActivity:I = 0x2d

.field static final TRANSACTION_getDataEnabled:I = 0x5f

.field static final TRANSACTION_getDataNetworkType:I = 0x3d

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x3e

.field static final TRANSACTION_getDataState:I = 0x2e

.field static final TRANSACTION_getDefaultSim:I = 0x48

.field static final TRANSACTION_getDeviceId:I = 0x77

.field static final TRANSACTION_getDeviceIdUsingType:I = 0x46

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x69

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x68

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x43

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x44

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x6a

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2a

.field static final TRANSACTION_getNetworkType:I = 0x3b

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3c

.field static final TRANSACTION_getOperatorPreferredDataSubId:I = 0x7d

.field static final TRANSACTION_getPcscfAddress:I = 0x60

.field static final TRANSACTION_getPhoneTypeInECM:I = 0x7f

.field static final TRANSACTION_getPhoneTypeInEmergencyCall:I = 0x80

.field static final TRANSACTION_getPreferredNetworkType:I = 0x5b

.field static final TRANSACTION_getRadioAccessFamily:I = 0x73

.field static final TRANSACTION_getTetherApnRequired:I = 0x5c

.field static final TRANSACTION_getTuneAway:I = 0x7a

.field static final TRANSACTION_getUTCObject_MotoExt:I = 0x78

.field static final TRANSACTION_getVoiceMessageCount:I = 0x39

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3a

.field static final TRANSACTION_getVoiceNetworkType:I = 0x3f

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x40

.field static final TRANSACTION_handlePinMmi:I = 0x19

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1a

.field static final TRANSACTION_hasIccCard:I = 0x41

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x42

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4b

.field static final TRANSACTION_iccCloseLogicalChannelUsingSubId:I = 0x4c

.field static final TRANSACTION_iccExchangeSimIO:I = 0x51

.field static final TRANSACTION_iccExchangeSimIOData:I = 0x53

.field static final TRANSACTION_iccExchangeSimIOUsingSubId:I = 0x54

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x49

.field static final TRANSACTION_iccOpenLogicalChannelUsingSubId:I = 0x4a

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4f

.field static final TRANSACTION_iccTransmitApduBasicChannelUsingSubId:I = 0x50

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4d

.field static final TRANSACTION_iccTransmitApduLogicalChannelUsingSubId:I = 0x4e

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6d

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x28

.field static final TRANSACTION_isIdle:I = 0xc

.field static final TRANSACTION_isIdleForSubscriber:I = 0xd

.field static final TRANSACTION_isImsRegistered:I = 0x76

.field static final TRANSACTION_isNetworkDataRoaming:I = 0x7e

.field static final TRANSACTION_isOffhook:I = 0x8

.field static final TRANSACTION_isOffhookForSubscriber:I = 0x9

.field static final TRANSACTION_isRadioOn:I = 0xe

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xb

.field static final TRANSACTION_isRingingForSubscriber:I = 0xa

.field static final TRANSACTION_isSimPinEnabled:I = 0x10

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x75

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x70

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x37

.field static final TRANSACTION_nvReadItem:I = 0x56

.field static final TRANSACTION_nvResetConfig:I = 0x59

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x58

.field static final TRANSACTION_nvWriteItem:I = 0x57

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x55

.field static final TRANSACTION_setCellInfoListRate:I = 0x47

.field static final TRANSACTION_setDataEnabled:I = 0x5e

.field static final TRANSACTION_setImsRegistrationState:I = 0x61

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x67

.field static final TRANSACTION_setNetworkTypeAutoSwitch:I = 0x7c

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6b

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5d

.field static final TRANSACTION_setRadio:I = 0x1d

.field static final TRANSACTION_setRadioCapability:I = 0x72

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1e

.field static final TRANSACTION_setRadioPower:I = 0x1f

.field static final TRANSACTION_setRoamingOverride:I = 0x6c

.field static final TRANSACTION_setTuneAway:I = 0x7b

.field static final TRANSACTION_setVoiceMailNumber:I = 0x38

.field static final TRANSACTION_shutdownMobileRadios:I = 0x71

.field static final TRANSACTION_silenceRinger:I = 0x7

.field static final TRANSACTION_supplyPin:I = 0x11

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x12

.field static final TRANSACTION_supplyPinReportResult:I = 0x15

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x16

.field static final TRANSACTION_supplyPuk:I = 0x13

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x14

.field static final TRANSACTION_supplyPukReportResult:I = 0x17

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x18

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1b

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1c

.field static final TRANSACTION_updateServiceLocation:I = 0x20

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 1402
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 50
    :sswitch_0
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v3, 0x1

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v3, 0x1

    goto :goto_0

    .line 64
    .end local v4    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v3, 0x1

    goto :goto_0

    .line 75
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v19

    .line 77
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v19, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v3, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 83
    .end local v19    # "_result":Z
    :sswitch_4
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 86
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v19

    .line 87
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v19, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 93
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_5
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v3, 0x1

    goto :goto_0

    .line 100
    :sswitch_6
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 103
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 109
    .end local v4    # "_arg0":I
    :sswitch_7
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 116
    :sswitch_8
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v19

    .line 118
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v19, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 119
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 124
    .end local v19    # "_result":Z
    :sswitch_9
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(I)Z

    move-result v19

    .line 128
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v19, :cond_3

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    .line 134
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(I)Z

    move-result v19

    .line 138
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v19, :cond_4

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 139
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 144
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v19

    .line 146
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v19, :cond_5

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 147
    :cond_5
    const/4 v3, 0x0

    goto :goto_6

    .line 152
    .end local v19    # "_result":Z
    :sswitch_c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v19

    .line 154
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v19, :cond_6

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 155
    :cond_6
    const/4 v3, 0x0

    goto :goto_7

    .line 160
    .end local v19    # "_result":Z
    :sswitch_d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(I)Z

    move-result v19

    .line 164
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v19, :cond_7

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 165
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 170
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v19

    .line 172
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v19, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 173
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 178
    .end local v19    # "_result":Z
    :sswitch_f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 181
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(I)Z

    move-result v19

    .line 182
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v19, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 183
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 188
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_10
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v19

    .line 190
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    if-eqz v19, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 191
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 196
    .end local v19    # "_result":Z
    :sswitch_11
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v19

    .line 200
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v19, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 201
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 206
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_12
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 210
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 211
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v19

    .line 212
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v19, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 213
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 218
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_13
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 224
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v19, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 225
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 230
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_14
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 234
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 236
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 238
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    if-eqz v19, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 239
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 244
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_15
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v19

    .line 248
    .local v19, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 250
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 254
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":[I
    :sswitch_16
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 258
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 259
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v19

    .line 260
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 262
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 266
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":[I
    :sswitch_17
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v19

    .line 272
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 274
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 278
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":[I
    :sswitch_18
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 282
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 284
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v19

    .line 286
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 288
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 292
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":[I
    :sswitch_19
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v19

    .line 296
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v19, :cond_f

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 297
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 302
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_1a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 306
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v19

    .line 308
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v19, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 309
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 314
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_1b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 321
    :sswitch_1c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 324
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 330
    .end local v4    # "_arg0":I
    :sswitch_1d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    .line 333
    .local v4, "_arg0":Z
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v19

    .line 334
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v19, :cond_12

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 332
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 335
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_12
    const/4 v3, 0x0

    goto :goto_13

    .line 340
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_1e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 344
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v5, 0x1

    .line 345
    .local v5, "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v19

    .line 346
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    if-eqz v19, :cond_14

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 344
    .end local v5    # "_arg1":Z
    .end local v19    # "_result":Z
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .line 347
    .restart local v5    # "_arg1":Z
    .restart local v19    # "_result":Z
    :cond_14
    const/4 v3, 0x0

    goto :goto_15

    .line 352
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Z
    .end local v19    # "_result":Z
    :sswitch_1f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v4, 0x1

    .line 355
    .local v4, "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v19

    .line 356
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    if-eqz v19, :cond_16

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 354
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 357
    .restart local v4    # "_arg0":Z
    .restart local v19    # "_result":Z
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .line 362
    .end local v4    # "_arg0":Z
    .end local v19    # "_result":Z
    :sswitch_20
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 369
    :sswitch_21
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 372
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 378
    .end local v4    # "_arg0":I
    :sswitch_22
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 385
    :sswitch_23
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 388
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 394
    .end local v4    # "_arg0":I
    :sswitch_24
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 401
    :sswitch_25
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 404
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 410
    .end local v4    # "_arg0":I
    :sswitch_26
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v19

    .line 412
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v19, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 413
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 418
    .end local v19    # "_result":Z
    :sswitch_27
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v19

    .line 420
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    if-eqz v19, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 421
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 426
    .end local v19    # "_result":Z
    :sswitch_28
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v19

    .line 428
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v19, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 429
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 434
    .end local v19    # "_result":Z
    :sswitch_29
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v19

    .line 436
    .local v19, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    if-eqz v19, :cond_1a

    .line 438
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 444
    :goto_1b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 442
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .line 448
    .end local v19    # "_result":Landroid/os/Bundle;
    :sswitch_2a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 452
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 454
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 458
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v19

    .line 460
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 466
    .end local v19    # "_result":I
    :sswitch_2c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 469
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSubscriber(I)I

    move-result v19

    .line 470
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 476
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_2d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v19

    .line 478
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 484
    .end local v19    # "_result":I
    :sswitch_2e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v19

    .line 486
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 492
    .end local v19    # "_result":I
    :sswitch_2f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v19

    .line 494
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 500
    .end local v19    # "_result":I
    :sswitch_30
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 503
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSubscriber(I)I

    move-result v19

    .line 504
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 510
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_31
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v19

    .line 512
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 518
    .end local v19    # "_result":I
    :sswitch_32
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 521
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(I)I

    move-result v19

    .line 522
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 528
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_33
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v19

    .line 530
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 536
    .end local v19    # "_result":I
    :sswitch_34
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 539
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(I)I

    move-result v19

    .line 540
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 546
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_35
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v19

    .line 548
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 554
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_36
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 557
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(I)Ljava/lang/String;

    move-result-object v19

    .line 558
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 564
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_37
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v19

    .line 566
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v19, :cond_1b

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 567
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 572
    .end local v19    # "_result":Z
    :sswitch_38
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 576
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 578
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 579
    .restart local v6    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 580
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v19, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 581
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 586
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_39
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v19

    .line 588
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 590
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 594
    .end local v19    # "_result":I
    :sswitch_3a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 597
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v19

    .line 598
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 604
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_3b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v19

    .line 606
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 612
    .end local v19    # "_result":I
    :sswitch_3c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 615
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(I)I

    move-result v19

    .line 616
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 622
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_3d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType()I

    move-result v19

    .line 624
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 630
    .end local v19    # "_result":I
    :sswitch_3e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 633
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(I)I

    move-result v19

    .line 634
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 640
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_3f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkType()I

    move-result v19

    .line 642
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 648
    .end local v19    # "_result":I
    :sswitch_40
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 651
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(I)I

    move-result v19

    .line 652
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 658
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_41
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v19

    .line 660
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v19, :cond_1d

    const/4 v3, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 661
    :cond_1d
    const/4 v3, 0x0

    goto :goto_1e

    .line 666
    .end local v19    # "_result":Z
    :sswitch_42
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 669
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v19

    .line 670
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    if-eqz v19, :cond_1e

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 671
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 676
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_43
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode()I

    move-result v19

    .line 678
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 684
    .end local v19    # "_result":I
    :sswitch_44
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 687
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(I)I

    move-result v19

    .line 688
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 694
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_45
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo()Ljava/util/List;

    move-result-object v20

    .line 696
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 698
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 702
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_46
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 705
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceIdUsingType(I)Ljava/lang/String;

    move-result-object v19

    .line 706
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 712
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_47
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 715
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 721
    .end local v4    # "_arg0":I
    :sswitch_48
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v19

    .line 723
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 729
    .end local v19    # "_result":I
    :sswitch_49
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 732
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v19

    .line 733
    .local v19, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    if-eqz v19, :cond_1f

    .line 735
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 741
    :goto_20
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 739
    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 745
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 749
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 750
    .restart local v5    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelUsingSubId(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v19

    .line 751
    .restart local v19    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v19, :cond_20

    .line 753
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 759
    :goto_21
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 757
    :cond_20
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 763
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 766
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(I)Z

    move-result v19

    .line 767
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v19, :cond_21

    const/4 v3, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 768
    :cond_21
    const/4 v3, 0x0

    goto :goto_22

    .line 773
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_4c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 777
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 778
    .local v5, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannelUsingSubId(II)Z

    move-result v19

    .line 779
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    if-eqz v19, :cond_22

    const/4 v3, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 781
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 780
    :cond_22
    const/4 v3, 0x0

    goto :goto_23

    .line 785
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v19    # "_result":Z
    :sswitch_4d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 789
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 791
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 793
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 795
    .local v7, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 797
    .local v8, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 799
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 800
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 801
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 803
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 807
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 811
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 813
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 815
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 817
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 819
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 821
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 823
    .local v10, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, "_arg7":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 824
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannelUsingSubId(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 825
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 827
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 831
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":I
    .end local v11    # "_arg7":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 835
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 837
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 839
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 841
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 843
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg5":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 844
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 845
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 847
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 851
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_50
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 855
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 857
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 859
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 861
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 863
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 865
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 866
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannelUsingSubId(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 867
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 869
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 873
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 877
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 879
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 881
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 883
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 885
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, "_arg5":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 886
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIILjava/lang/String;)[B

    move-result-object v19

    .line 887
    .local v19, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 889
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 893
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Ljava/lang/String;
    .end local v19    # "_result":[B
    :sswitch_52
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 897
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 898
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getAIDByAppFamily(II)Ljava/lang/String;

    move-result-object v19

    .line 899
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 901
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 905
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_53
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 909
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 911
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 913
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 915
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 917
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 919
    .local v9, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 921
    .restart local v10    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 923
    .restart local v11    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 925
    .local v12, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg9":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 926
    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOData(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v19

    .line 927
    .local v19, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 929
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 933
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v11    # "_arg7":Ljava/lang/String;
    .end local v12    # "_arg8":Ljava/lang/String;
    .end local v13    # "_arg9":Ljava/lang/String;
    .end local v19    # "_result":[B
    :sswitch_54
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 937
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 939
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 941
    .restart local v6    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 943
    .restart local v7    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 945
    .restart local v8    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 947
    .restart local v9    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg6":Ljava/lang/String;
    move-object/from16 v3, p0

    .line 948
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIOUsingSubId(IIIIIILjava/lang/String;)[B

    move-result-object v19

    .line 949
    .restart local v19    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 951
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 955
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":I
    .end local v10    # "_arg6":Ljava/lang/String;
    .end local v19    # "_result":[B
    :sswitch_55
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 957
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 959
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 961
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 965
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_56
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 968
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v19

    .line 969
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 971
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 975
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_57
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 979
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 980
    .local v5, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v19

    .line 981
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    if-eqz v19, :cond_23

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 982
    :cond_23
    const/4 v3, 0x0

    goto :goto_24

    .line 987
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_58
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 990
    .local v4, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v19

    .line 991
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    if-eqz v19, :cond_24

    const/4 v3, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 992
    :cond_24
    const/4 v3, 0x0

    goto :goto_25

    .line 997
    .end local v4    # "_arg0":[B
    .end local v19    # "_result":Z
    :sswitch_59
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1000
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v19

    .line 1001
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    if-eqz v19, :cond_25

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1003
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1002
    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    .line 1007
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_5a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType()I

    move-result v19

    .line 1009
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v19    # "_result":I
    :sswitch_5b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType()I

    move-result v19

    .line 1017
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1023
    .end local v19    # "_result":I
    :sswitch_5c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v19

    .line 1025
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v19    # "_result":I
    :sswitch_5d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1034
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(I)Z

    move-result v19

    .line 1035
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    if-eqz v19, :cond_26

    const/4 v3, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1036
    :cond_26
    const/4 v3, 0x0

    goto :goto_27

    .line 1041
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_5e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1045
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    const/4 v5, 0x1

    .line 1046
    .local v5, "_arg1":Z
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v5    # "_arg1":Z
    :cond_27
    const/4 v5, 0x0

    goto :goto_28

    .line 1052
    .end local v4    # "_arg0":I
    :sswitch_5f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1055
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v19

    .line 1056
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1057
    if-eqz v19, :cond_28

    const/4 v3, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1058
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1057
    :cond_28
    const/4 v3, 0x0

    goto :goto_29

    .line 1062
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_60
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1065
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1066
    .local v19, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1068
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1072
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":[Ljava/lang/String;
    :sswitch_61
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    const/4 v4, 0x1

    .line 1075
    .local v4, "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1076
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1077
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v4    # "_arg0":Z
    :cond_29
    const/4 v4, 0x0

    goto :goto_2a

    .line 1081
    :sswitch_62
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1084
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v19

    .line 1085
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1087
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1091
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_63
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1094
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v19

    .line 1095
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1096
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1097
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1101
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_64
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus()I

    move-result v19

    .line 1103
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1105
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1109
    .end local v19    # "_result":I
    :sswitch_65
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1112
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v19

    .line 1113
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1115
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1119
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":I
    :sswitch_66
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2a

    .line 1122
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1127
    .local v4, "_arg0":Landroid/content/Intent;
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v22

    .line 1128
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1130
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1125
    .end local v4    # "_arg0":Landroid/content/Intent;
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2a
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Landroid/content/Intent;
    goto :goto_2b

    .line 1134
    .end local v4    # "_arg0":Landroid/content/Intent;
    :sswitch_67
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1138
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1140
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1141
    .local v6, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 1142
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    if-eqz v19, :cond_2b

    const/4 v3, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1143
    :cond_2b
    const/4 v3, 0x0

    goto :goto_2c

    .line 1148
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_68
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1151
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(I)Ljava/lang/String;

    move-result-object v19

    .line 1152
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1153
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1154
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1158
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1161
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(I)Ljava/lang/String;

    move-result-object v19

    .line 1162
    .restart local v19    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1163
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1164
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1168
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_6a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v19

    .line 1170
    .local v19, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1172
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1176
    .end local v19    # "_result":[Ljava/lang/String;
    :sswitch_6b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1179
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v19

    .line 1180
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    if-eqz v19, :cond_2c

    const/4 v3, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1182
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1181
    :cond_2c
    const/4 v3, 0x0

    goto :goto_2d

    .line 1186
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v19    # "_result":Z
    :sswitch_6c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 1190
    .local v14, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 1192
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1194
    .local v17, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 1195
    .local v18, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v19

    .line 1196
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1197
    if-eqz v19, :cond_2d

    const/4 v3, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1197
    :cond_2d
    const/4 v3, 0x0

    goto :goto_2e

    .line 1202
    .end local v14    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "_result":Z
    :sswitch_6d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1206
    .local v4, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1207
    .local v16, "_arg1_length":I
    if-gez v16, :cond_2e

    .line 1208
    const/4 v5, 0x0

    .line 1213
    .local v5, "_arg1":[B
    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v19

    .line 1214
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1217
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1211
    .end local v5    # "_arg1":[B
    .end local v19    # "_result":I
    :cond_2e
    move/from16 v0, v16

    new-array v5, v0, [B

    .restart local v5    # "_arg1":[B
    goto :goto_2f

    .line 1221
    .end local v4    # "_arg0":[B
    .end local v5    # "_arg1":[B
    .end local v16    # "_arg1_length":I
    :sswitch_6e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1222
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr()[B

    move-result-object v19

    .line 1223
    .local v19, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1225
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1229
    .end local v19    # "_result":[B
    :sswitch_6f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1232
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtrUsingSubId(I)[B

    move-result-object v19

    .line 1233
    .restart local v19    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1234
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1235
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1239
    .end local v4    # "_arg0":I
    .end local v19    # "_result":[B
    :sswitch_70
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v19

    .line 1241
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    if-eqz v19, :cond_2f

    const/4 v3, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1242
    :cond_2f
    const/4 v3, 0x0

    goto :goto_30

    .line 1247
    .end local v19    # "_result":Z
    :sswitch_71
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1254
    :sswitch_72
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1256
    sget-object v3, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/RadioAccessFamily;

    .line 1257
    .local v4, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1258
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1263
    .end local v4    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_73
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1266
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(I)I

    move-result v19

    .line 1267
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1273
    .end local v4    # "_arg0":I
    .end local v19    # "_result":I
    :sswitch_74
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_30

    const/4 v4, 0x1

    .line 1276
    .local v4, "_arg0":Z
    :goto_31
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1275
    .end local v4    # "_arg0":Z
    :cond_30
    const/4 v4, 0x0

    goto :goto_31

    .line 1282
    :sswitch_75
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled()Z

    move-result v19

    .line 1284
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1285
    if-eqz v19, :cond_31

    const/4 v3, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1285
    :cond_31
    const/4 v3, 0x0

    goto :goto_32

    .line 1290
    .end local v19    # "_result":Z
    :sswitch_76
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v19

    .line 1292
    .restart local v19    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1293
    if-eqz v19, :cond_32

    const/4 v3, 0x1

    :goto_33
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1294
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1293
    :cond_32
    const/4 v3, 0x0

    goto :goto_33

    .line 1298
    .end local v19    # "_result":Z
    :sswitch_77
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v19

    .line 1300
    .local v19, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1302
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1306
    .end local v19    # "_result":Ljava/lang/String;
    :sswitch_78
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getUTCObject_MotoExt()Ljava/util/List;

    move-result-object v22

    .line 1308
    .restart local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1310
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1314
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_79
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1317
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->doMobileDataRecovery(I)V

    .line 1318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1319
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1323
    .end local v4    # "_arg0":I
    :sswitch_7a
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTuneAway()V

    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1330
    :sswitch_7b
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    const/4 v4, 0x1

    .line 1333
    .local v4, "_arg0":Z
    :goto_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setTuneAway(Z)V

    .line 1334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1335
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1332
    .end local v4    # "_arg0":Z
    :cond_33
    const/4 v4, 0x0

    goto :goto_34

    .line 1339
    :sswitch_7c
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1342
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkTypeAutoSwitch(I)Z

    move-result v19

    .line 1343
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    if-eqz v19, :cond_34

    const/4 v3, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1344
    :cond_34
    const/4 v3, 0x0

    goto :goto_35

    .line 1349
    .end local v4    # "_arg0":I
    .end local v19    # "_result":Z
    :sswitch_7d
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getOperatorPreferredDataSubId()I

    move-result v19

    .line 1351
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1353
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1357
    .end local v19    # "_result":I
    :sswitch_7e
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isNetworkDataRoaming()Z

    move-result v19

    .line 1359
    .local v19, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    if-eqz v19, :cond_35

    const/4 v3, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1360
    :cond_35
    const/4 v3, 0x0

    goto :goto_36

    .line 1365
    .end local v19    # "_result":Z
    :sswitch_7f
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneTypeInECM()I

    move-result v19

    .line 1367
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1369
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1373
    .end local v19    # "_result":I
    :sswitch_80
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneTypeInEmergencyCall()I

    move-result v19

    .line 1375
    .restart local v19    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v19    # "_result":I
    :sswitch_81
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriAlertUri()Landroid/net/Uri;

    move-result-object v19

    .line 1383
    .local v19, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    if-eqz v19, :cond_36

    .line 1385
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1391
    :goto_37
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1389
    :cond_36
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    .line 1395
    .end local v19    # "_result":Landroid/net/Uri;
    :sswitch_82
    const-string v3, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveCallType()I

    move-result v19

    .line 1397
    .local v19, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1398
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1399
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 46
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

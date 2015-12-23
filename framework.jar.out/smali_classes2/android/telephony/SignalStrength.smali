.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field private static final DEFAULT_MAX_LEVEL:I = 0x4

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final MOTO_NUM_SIGNAL_STRENGTH_BINS:I = 0x7

.field public static final MOTO_SIGNAL_STRENGTH_GREATER:I = 0x5

.field public static final MOTO_SIGNAL_STRENGTH_GREATEST:I = 0x6

.field public static final MOTO_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static multiSimConfig:Ljava/lang/String;


# instance fields
.field private isGsm:Z

.field private mCdmaAsuLevel:I

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mCdmaLevel:I

.field private mEvdoAsuLevel:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoLevel:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmLevel:I

.field private mGsmOemBitErrorRate:I

.field private mGsmOemSignalStrength:I

.field private mGsmSignalStrength:I

.field private mLteAsuLevel:I

.field private mLteCqi:I

.field private mLteLevel:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mMaxLevel:I

.field private mOemRatType:I

.field private mSlotId:I

.field private mTdScdmaRscp:I

.field private mUmtsLevel:I

.field private mUseOem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 36
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v4

    const-string v1, "poor"

    aput-object v1, v0, v5

    const-string v1, "moderate"

    aput-object v1, v0, v6

    const-string v1, "good"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v4

    const-string v1, "poor"

    aput-object v1, v0, v5

    const-string v1, "moderate"

    aput-object v1, v0, v6

    const-string v1, "good"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "greater"

    aput-object v2, v0, v1

    const-string v1, "greatest"

    aput-object v1, v0, v3

    sput-object v0, Landroid/telephony/SignalStrength;->MOTO_SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 81
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 82
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 125
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->multiSimConfig:Ljava/lang/String;

    .line 521
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 81
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 82
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const v0, 0x7fffffff

    const/16 v3, 0x63

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 153
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 154
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 155
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 156
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 157
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 158
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 159
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 160
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 161
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 162
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 163
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 164
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 165
    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 170
    iput v2, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 171
    const/16 v0, -0x6c

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 172
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 174
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 175
    iput v2, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 176
    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 177
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 178
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 179
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 180
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 181
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 183
    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    .line 186
    iput v1, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 187
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 241
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 244
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 245
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 226
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 229
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 256
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 401
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of signalstrength parcel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 404
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 405
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 406
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 407
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 408
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 409
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 410
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 411
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 412
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 413
    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 414
    :cond_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 415
    :cond_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 416
    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 420
    :cond_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 421
    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 422
    :cond_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 423
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    :goto_1
    iput-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 425
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 426
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 427
    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 428
    :cond_15
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 429
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_17

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 430
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 431
    :cond_18
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 432
    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 433
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    .line 436
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 437
    :cond_1c
    return-void

    :cond_1d
    move v0, v2

    .line 416
    goto/16 :goto_0

    :cond_1e
    move v1, v2

    .line 423
    goto :goto_1
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 269
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 198
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 199
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 200
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 201
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 202
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 203
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 204
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 205
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 206
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 207
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 208
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 209
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 210
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 211
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 213
    iput v1, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 214
    return-void
.end method

.method private getDataNetworType(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 822
    const/4 v1, 0x0

    .line 823
    .local v1, "propVal":Ljava/lang/String;
    const-string v3, "gsm.network.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 825
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 827
    aget-object v1, v2, p1

    .line 830
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method private isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 814
    sget-object v0, Landroid/telephony/SignalStrength;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/SignalStrength;->multiSimConfig:Ljava/lang/String;

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/SignalStrength;->multiSimConfig:Ljava/lang/String;

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1437
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;I)Landroid/telephony/SignalStrength;
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "slotId"    # I

    .prologue
    .line 447
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size of signalstrength parcel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 449
    :cond_0
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 450
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 451
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 452
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 453
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 454
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 455
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 456
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 457
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 458
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 459
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 460
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 461
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 462
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 464
    iput p1, v0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId received from ril is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/telephony/SignalStrength;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 466
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 142
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 143
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 144
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1354
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1355
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1356
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1357
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1358
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1359
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1360
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1361
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1362
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1363
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1364
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1365
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1366
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1367
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1371
    const-string v0, "OemRatType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 1372
    const-string v0, "GsmOemSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1373
    const-string v0, "GsmOemBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 1374
    const-string v0, "UseOem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 1376
    const-string v0, "GsmLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 1377
    const-string v0, "UmtsLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 1378
    const-string v0, "CdmaLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 1379
    const-string v0, "EvdoLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 1380
    const-string v0, "LteLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 1381
    const-string v0, "CdmaAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 1382
    const-string v0, "EvdoAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 1383
    const-string v0, "LteAsuLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 1384
    const-string v0, "MaxLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    .line 1387
    const-string v0, "SlotID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 1388
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 359
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 360
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 361
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 362
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 363
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 364
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 365
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 366
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 367
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 368
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 369
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 370
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 371
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 372
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 376
    iget v0, p1, Landroid/telephony/SignalStrength;->mOemRatType:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 377
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 378
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 379
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOem:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 381
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 382
    iget v0, p1, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 383
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 384
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 385
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 386
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 387
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 388
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 389
    iget v0, p1, Landroid/telephony/SignalStrength;->mMaxLevel:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    .line 392
    iget v0, p1, Landroid/telephony/SignalStrength;->mSlotId:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 393
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1258
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1267
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1259
    :catch_0
    move-exception v1

    .line 1260
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1267
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mOemRatType:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mMaxLevel:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mSlotId:I

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1397
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1398
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1399
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1400
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1401
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1402
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1403
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1404
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1405
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1407
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1408
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1409
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1410
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1414
    const-string v0, "OemRatType"

    iget v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1415
    const-string v0, "GsmOemSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1416
    const-string v0, "GsmOemBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1417
    const-string v0, "UseOem"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1419
    const-string v0, "GsmLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    const-string v0, "UmtsLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    const-string v0, "CdmaLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1422
    const-string v0, "EvdoLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1423
    const-string v0, "LteLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1424
    const-string v0, "CdmaAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1425
    const-string v0, "EvdoAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1426
    const-string v0, "LteAsuLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    const-string v0, "MaxLevel"

    iget v1, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1430
    const-string v0, "SlotID"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1431
    return-void
.end method

.method public getAsuLevel()I
    .locals 3

    .prologue
    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, "asuLevel":I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_3

    .line 967
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_2

    .line 968
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v1

    if-nez v1, :cond_1

    .line 969
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 987
    :goto_0
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 988
    :cond_0
    return v0

    .line 971
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 974
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 977
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_5

    .line 978
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 979
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v0

    goto :goto_0

    .line 981
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 984
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    return v0
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    return v0
.end method

.method public getDbm()I
    .locals 3

    .prologue
    .line 997
    const v0, 0x7fffffff

    .line 999
    .local v0, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1000
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1001
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v1

    if-nez v1, :cond_1

    .line 1002
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 1020
    :goto_0
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDbm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1021
    :cond_0
    return v0

    .line 1004
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    goto :goto_0

    .line 1007
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    goto :goto_0

    .line 1010
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1011
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1012
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    goto :goto_0

    .line 1014
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    goto :goto_0

    .line 1017
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 3

    .prologue
    .line 1077
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1079
    .local v0, "level":I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v1, :cond_1

    .line 1080
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "getGsmAsuLevel use oem"

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1081
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmOemSignalStrength()I

    move-result v1

    add-int/lit8 v1, v1, 0x71

    div-int/lit8 v0, v1, 0x2

    .line 1083
    :cond_1
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGsmAsuLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1084
    :cond_2
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 1032
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 1033
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_3

    move v0, v3

    .line 1034
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_4

    .line 1035
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 1040
    .local v1, "dBm":I
    :goto_1
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v3, :cond_1

    .line 1041
    sget-boolean v3, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "getGsmDbm use oem"

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1042
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1045
    :cond_1
    sget-boolean v3, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1046
    :cond_2
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_3
    move v0, v2

    .line 1033
    goto :goto_0

    .line 1037
    .restart local v0    # "asu":I
    :cond_4
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 1

    .prologue
    .line 1055
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    return v0
.end method

.method public getGsmOemBitErrorRate()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    return v0
.end method

.method public getGsmOemSignalStrength()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 3

    .prologue
    .line 920
    const/4 v0, 0x0

    .line 922
    .local v0, "level":I
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_4

    .line 923
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_3

    .line 924
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isUmts()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getUmtsLevel()I

    move-result v0

    .line 946
    :cond_0
    :goto_0
    sget-boolean v1, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 947
    :cond_1
    return v0

    .line 927
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    .line 928
    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    goto :goto_0

    .line 933
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    goto :goto_0

    .line 936
    :cond_4
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isLte()Z

    move-result v1

    if-nez v1, :cond_6

    .line 937
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isEvdo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 938
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    goto :goto_0

    .line 940
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    goto :goto_0

    .line 943
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    goto :goto_0
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 1149
    const/16 v0, 0x63

    .line 1150
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1164
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const/16 v0, 0xff

    .line 1166
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1167
    :cond_0
    return v0

    .line 1165
    :cond_1
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 1

    .prologue
    .line 1138
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    return v0
.end method

.method public getLteRsrp()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 648
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    goto :goto_0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getMaxLevel()I
    .locals 1

    .prologue
    .line 956
    iget v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    return v0
.end method

.method public getOemRatType()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 4

    .prologue
    .line 1216
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1219
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    const/16 v0, 0xff

    .line 1221
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD-SCDMA Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1222
    :cond_0
    return v0

    .line 1220
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_1
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 4

    .prologue
    .line 1195
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1198
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 1199
    :cond_0
    const/4 v0, 0x0

    .line 1206
    .local v0, "level":I
    :goto_0
    sget-boolean v2, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTdScdmaLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1207
    :cond_1
    return v0

    .line 1200
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x31

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1201
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x49

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1202
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x61

    if-lt v1, v2, :cond_5

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1203
    .end local v0    # "level":I
    :cond_5
    const/16 v2, -0x78

    if-lt v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1204
    .end local v0    # "level":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public getUmtsLevel()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1230
    const/16 v0, 0x1f

    .line 1231
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v4, v0

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    add-int/2addr v1, v4

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    add-int/2addr v1, v4

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    add-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 2
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 319
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 320
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 321
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 322
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 323
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 324
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 325
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 326
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 327
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 328
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 329
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 330
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 331
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 332
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 333
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 337
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 338
    const/16 v0, -0x6c

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 339
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 346
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 347
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 348
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 349
    const/4 v0, 0x4

    iput v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    .line 353
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 290
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 293
    return-void
.end method

.method public isEvdo()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "radioString":Ljava/lang/String;
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 758
    iget v1, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    const-string v2, "unknown"

    invoke-direct {p0, v1, v2}, Landroid/telephony/SignalStrength;->getDataNetworType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    :goto_0
    const-string v1, "EvDo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "eHRPD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 767
    :cond_0
    const/4 v1, 0x1

    .line 769
    :goto_1
    return v1

    .line 760
    :cond_1
    const-string v1, "gsm.network.type"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public isLte()Z
    .locals 3

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 734
    .local v0, "radioString":Ljava/lang/String;
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget v1, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    const-string v2, "unknown"

    invoke-direct {p0, v1, v2}, Landroid/telephony/SignalStrength;->getDataNetworType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_0
    const-string v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 743
    const/4 v1, 0x1

    .line 745
    :goto_1
    return v1

    .line 737
    :cond_0
    const-string v1, "gsm.network.type"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isUmts()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "radioString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 782
    .local v2, "voiceNetworkType":I
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 783
    iget v4, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 784
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 785
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 787
    :cond_0
    iget v4, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    const-string v5, "unknown"

    invoke-direct {p0, v4, v5}, Landroid/telephony/SignalStrength;->getDataNetworType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .end local v1    # "subId":[I
    :goto_0
    const/16 v4, 0x11

    if-ne v2, v4, :cond_3

    .line 794
    const-string v4, "voiceNetworkType is NETWORK_TYPE_TD_SCDMA!"

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 805
    :cond_1
    :goto_1
    return v3

    .line 789
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    .line 790
    const-string v4, "gsm.network.type"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_3
    const-string v4, "UMTS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    const-string v4, "HSDPA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    const-string v4, "HSUPA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    const-string v4, "HSPA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_4

    const-string v4, "HSPAP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 803
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setCdmaAsuLevel(I)V
    .locals 0
    .param p1, "cdmaAsuLevel"    # I

    .prologue
    .line 884
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    .line 885
    return-void
.end method

.method public setCdmaLevel(I)V
    .locals 0
    .param p1, "cdmaLevel"    # I

    .prologue
    .line 857
    iput p1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    .line 858
    return-void
.end method

.method public setEvdoAsuLevel(I)V
    .locals 0
    .param p1, "evdoAsuLevel"    # I

    .prologue
    .line 893
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    .line 894
    return-void
.end method

.method public setEvdoLevel(I)V
    .locals 0
    .param p1, "evdoLevel"    # I

    .prologue
    .line 866
    iput p1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    .line 867
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 580
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 581
    return-void
.end method

.method public setGsmLevel(I)V
    .locals 0
    .param p1, "gsmLevel"    # I

    .prologue
    .line 839
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    .line 840
    return-void
.end method

.method public setLteAsuLevel(I)V
    .locals 0
    .param p1, "lteAsuLevel"    # I

    .prologue
    .line 902
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    .line 903
    return-void
.end method

.method public setLteLevel(I)V
    .locals 0
    .param p1, "lteLevel"    # I

    .prologue
    .line 875
    iput p1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    .line 876
    return-void
.end method

.method public setMaxLevel(I)V
    .locals 0
    .param p1, "maxLevel"    # I

    .prologue
    .line 911
    iput p1, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    .line 912
    return-void
.end method

.method public setOemSignalStrength(III)V
    .locals 1
    .param p1, "ratType"    # I
    .param p2, "GsmOemSignalStrength"    # I
    .param p3, "GsmOemBitErrorRate"    # I

    .prologue
    .line 1446
    iput p1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    .line 1447
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    .line 1448
    iput p3, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    .line 1450
    return-void
.end method

.method public setUmtsLevel(I)V
    .locals 0
    .param p1, "umtsLevel"    # I

    .prologue
    .line 848
    iput p1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    .line 849
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto/16 :goto_0
.end method

.method public useOem()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    return v0
.end method

.method public validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 543
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signal before validate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 545
    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 548
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 549
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 551
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 552
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 555
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_2
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 558
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_3
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 559
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 560
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 561
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 564
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_4
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 568
    sget-boolean v0, Landroid/telephony/SignalStrength;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 569
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 545
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 548
    goto/16 :goto_1

    .line 549
    :cond_8
    const/16 v0, -0xa0

    goto/16 :goto_2

    :cond_9
    move v0, v3

    .line 552
    goto :goto_3

    :cond_a
    move v0, v4

    .line 559
    goto :goto_4

    :cond_b
    move v0, v4

    .line 560
    goto :goto_5

    :cond_c
    move v0, v4

    .line 561
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget v0, p0, Landroid/telephony/SignalStrength;->mOemRatType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmOemBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOem:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget v0, p0, Landroid/telephony/SignalStrength;->mUmtsLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteAsuLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget v0, p0, Landroid/telephony/SignalStrength;->mMaxLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Landroid/telephony/SignalStrength;->mSlotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    return-void

    :cond_0
    move v0, v2

    .line 486
    goto :goto_0

    :cond_1
    move v1, v2

    .line 493
    goto :goto_1
.end method

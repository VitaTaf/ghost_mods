.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;
.super Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaMobileIconGroup"
.end annotation


# instance fields
.field final mDataContentDescription:I

.field final mDataType:I

.field mIsMotoTwoCell:Z

.field mIsMotoUI:Z

.field final mIsWide:Z

.field final mMotoActivityDescriptionLookup:[I

.field final mMotoDataTypeDescription:I

.field final mMotoQSActivityAOSPLookup:[[I

.field final mMotoQSActivityLookup:[I

.field final mMotoQSDataTypeLookup:[I

.field final mMotoQSRoamingLookup:[I

.field final mMotoQSSignalLookup:[I

.field final mMotoQSSimLookup:[I

.field final mMotoRoamingDescriptionLookup:[I

.field final mMotoSBActivityAOSPLookup:[[I

.field final mMotoSBActivityLookup:[I

.field final mMotoSBDataTypeLookup:[I

.field final mMotoSBRoamingLookup:[I

.field final mMotoSBSignalLookup:[I

.field final mMotoSBSimLookup:[I

.field final mMotoSignalDescriptionLookup:[I

.field final mMotoSimDescriptionLookup:[I

.field final mQsDataTypeLookup:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I[[I[[IZZ[I[I[I[I[I[I[I[I[II[I[I[I[I[I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIconsLookup"    # [[I
    .param p3, "qsIconsLookup"    # [[I
    .param p4, "contentDescLookup"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "dataContentDesc"    # I
    .param p11, "dataType"    # I
    .param p12, "isWide"    # Z
    .param p13, "qsDataTypeLookup"    # [I
    .param p14, "motoSBActivityAOSPLookup"    # [[I
    .param p15, "motoQSActivityAOSPLookup"    # [[I
    .param p16, "isMotoUI"    # Z
    .param p17, "isMotoTwoCell"    # Z
    .param p18, "motoSimDescriptionLookup"    # [I
    .param p19, "motoSBSimLookup"    # [I
    .param p20, "motoQSSimLookup"    # [I
    .param p21, "motoSignalDescriptionLookup"    # [I
    .param p22, "motoSBSignalLookup"    # [I
    .param p23, "motoQSSignalLookup"    # [I
    .param p24, "motoRoamingDescriptionLookup"    # [I
    .param p25, "motoSBRoamingLookup"    # [I
    .param p26, "motoQSRoamingLookup"    # [I
    .param p27, "motoDataTypeDescription"    # I
    .param p28, "motoSBDataTypeLookup"    # [I
    .param p29, "motoQSDataTypeLookup"    # [I
    .param p30, "motoActivityDescriptionLookup"    # [I
    .param p31, "motoSBActivityLookup"    # [I
    .param p32, "motoQSActivityLookup"    # [I

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput p10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mDataContentDescription:I

    iput p11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mDataType:I

    iput-boolean p12, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsWide:Z

    iput-object p13, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mQsDataTypeLookup:[I

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsMotoUI:Z

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mIsMotoTwoCell:Z

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSimDescriptionLookup:[I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBSimLookup:[I

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSSimLookup:[I

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSignalDescriptionLookup:[I

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBSignalLookup:[I

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSSignalLookup:[I

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoRoamingDescriptionLookup:[I

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBRoamingLookup:[I

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSRoamingLookup:[I

    move/from16 v0, p27

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoDataTypeDescription:I

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBDataTypeLookup:[I

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSDataTypeLookup:[I

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoActivityDescriptionLookup:[I

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBActivityLookup:[I

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSActivityLookup:[I

    iput-object p14, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoSBActivityAOSPLookup:[[I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaMobileSignalController$MotorolaMobileIconGroup;->mMotoQSActivityAOSPLookup:[[I

    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;
.super Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;
.source "MotorolaNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotorolaWifiIconGroup"
.end annotation


# instance fields
.field final mActivityDescriptionLookup:[I

.field mIsMotoUI:Z

.field final mQSActivityLookup:[I

.field final mQSSignalLookup:[I

.field final mSBActivityLookup:[I

.field final mSBSignalLookup:[I

.field final mSignalDescriptionLookup:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIZ[I[I[I[I[I[I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sbIconsLookup"    # [[I
    .param p3, "qsIconsLookup"    # [[I
    .param p4, "contentDesc"    # [I
    .param p5, "sbNullState"    # I
    .param p6, "qsNullState"    # I
    .param p7, "sbDiscState"    # I
    .param p8, "qsDiscState"    # I
    .param p9, "discContentDesc"    # I
    .param p10, "isMotoUI"    # Z
    .param p11, "motoSBSignalLookup"    # [I
    .param p12, "motoQSSignalLookup"    # [I
    .param p13, "motoSignalDescriptionLookup"    # [I
    .param p14, "motoSBActivityLookup"    # [I
    .param p15, "motoQSActivityLookup"    # [I
    .param p16, "motoActivityDescriptionLookup"    # [I

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaSignalController$MotorolaIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-boolean p10, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mIsMotoUI:Z

    iput-object p12, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mQSSignalLookup:[I

    iput-object p11, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mSBSignalLookup:[I

    iput-object p13, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mSignalDescriptionLookup:[I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mQSActivityLookup:[I

    iput-object p14, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mSBActivityLookup:[I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MotorolaNetworkControllerImpl$MotorolaWifiSignalController$MotorolaWifiIconGroup;->mActivityDescriptionLookup:[I

    return-void
.end method

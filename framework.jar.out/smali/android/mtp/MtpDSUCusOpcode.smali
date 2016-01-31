.class public final enum Landroid/mtp/MtpDSUCusOpcode;
.super Ljava/lang/Enum;
.source "MtpDSUCusOpcode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/mtp/MtpDSUCusOpcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/mtp/MtpDSUCusOpcode;

.field public static final enum APPLY_UPLOAD:Landroid/mtp/MtpDSUCusOpcode;

.field public static final enum CHECK_STATUS:Landroid/mtp/MtpDSUCusOpcode;

.field public static final enum COPYPACKAGE_FAIL:Landroid/mtp/MtpDSUCusOpcode;

.field public static final enum GET_RESULT:Landroid/mtp/MtpDSUCusOpcode;

.field public static final enum IN_CALL_CANCEL:Landroid/mtp/MtpDSUCusOpcode;

.field public static final enum TRIGGER_UPGRADE:Landroid/mtp/MtpDSUCusOpcode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/mtp/MtpDSUCusOpcode;

    const-string v1, "CHECK_STATUS"

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpDSUCusOpcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->CHECK_STATUS:Landroid/mtp/MtpDSUCusOpcode;

    new-instance v0, Landroid/mtp/MtpDSUCusOpcode;

    const-string v1, "APPLY_UPLOAD"

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpDSUCusOpcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->APPLY_UPLOAD:Landroid/mtp/MtpDSUCusOpcode;

    new-instance v0, Landroid/mtp/MtpDSUCusOpcode;

    const-string v1, "COPYPACKAGE_FAIL"

    invoke-direct {v0, v1, v5}, Landroid/mtp/MtpDSUCusOpcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->COPYPACKAGE_FAIL:Landroid/mtp/MtpDSUCusOpcode;

    new-instance v0, Landroid/mtp/MtpDSUCusOpcode;

    const-string v1, "TRIGGER_UPGRADE"

    invoke-direct {v0, v1, v6}, Landroid/mtp/MtpDSUCusOpcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->TRIGGER_UPGRADE:Landroid/mtp/MtpDSUCusOpcode;

    new-instance v0, Landroid/mtp/MtpDSUCusOpcode;

    const-string v1, "IN_CALL_CANCEL"

    invoke-direct {v0, v1, v7}, Landroid/mtp/MtpDSUCusOpcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->IN_CALL_CANCEL:Landroid/mtp/MtpDSUCusOpcode;

    new-instance v0, Landroid/mtp/MtpDSUCusOpcode;

    const-string v1, "GET_RESULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpDSUCusOpcode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->GET_RESULT:Landroid/mtp/MtpDSUCusOpcode;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/mtp/MtpDSUCusOpcode;

    sget-object v1, Landroid/mtp/MtpDSUCusOpcode;->CHECK_STATUS:Landroid/mtp/MtpDSUCusOpcode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/mtp/MtpDSUCusOpcode;->APPLY_UPLOAD:Landroid/mtp/MtpDSUCusOpcode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/mtp/MtpDSUCusOpcode;->COPYPACKAGE_FAIL:Landroid/mtp/MtpDSUCusOpcode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/mtp/MtpDSUCusOpcode;->TRIGGER_UPGRADE:Landroid/mtp/MtpDSUCusOpcode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/mtp/MtpDSUCusOpcode;->IN_CALL_CANCEL:Landroid/mtp/MtpDSUCusOpcode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/mtp/MtpDSUCusOpcode;->GET_RESULT:Landroid/mtp/MtpDSUCusOpcode;

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDSUCusOpcode;->$VALUES:[Landroid/mtp/MtpDSUCusOpcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/mtp/MtpDSUCusOpcode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Landroid/mtp/MtpDSUCusOpcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpDSUCusOpcode;

    return-object v0
.end method

.method public static values()[Landroid/mtp/MtpDSUCusOpcode;
    .locals 1

    .prologue
    sget-object v0, Landroid/mtp/MtpDSUCusOpcode;->$VALUES:[Landroid/mtp/MtpDSUCusOpcode;

    invoke-virtual {v0}, [Landroid/mtp/MtpDSUCusOpcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpDSUCusOpcode;

    return-object v0
.end method

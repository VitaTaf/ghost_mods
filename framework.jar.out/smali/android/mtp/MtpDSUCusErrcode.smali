.class public final Landroid/mtp/MtpDSUCusErrcode;
.super Ljava/lang/Object;
.source "MtpDSUCusErrcode.java"


# static fields
.field public static final ERR_ALREADY:I = 0x1

.field public static final ERR_APPLYFAIL:I = 0x2

.field public static final ERR_BADPARAM:I = 0x3

.field public static final ERR_CANCEL:I = 0xe

.field public static final ERR_COPYFAIL:I = 0x4

.field public static final ERR_DB:I = 0x10

.field public static final ERR_ECB:I = 0x5

.field public static final ERR_FAIL:I = 0x6

.field public static final ERR_INCALL:I = 0x7

.field public static final ERR_INVALID:I = 0xf

.field public static final ERR_LOWBATT:I = 0x8

.field public static final ERR_LOWSPACE:I = 0x9

.field public static final ERR_NONE:I = 0x64

.field public static final ERR_NOTFOUND:I = 0xa

.field public static final ERR_OK:I = 0x0

.field public static final ERR_RETRY:I = 0xd

.field public static final ERR_UNKNOWN:I = 0xb

.field public static final ERR_VERIFYFAIL:I = 0xc

.field public static checkForCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroid/mtp/MtpDSUCusErrcode;->checkForCall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

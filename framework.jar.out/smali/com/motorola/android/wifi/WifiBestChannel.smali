.class public Lcom/motorola/android/wifi/WifiBestChannel;
.super Ljava/lang/Object;
.source "WifiBestChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/wifi/WifiBestChannel$1;,
        Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiBestChannel"

.field private static final channelInterferneceLevelONE:I = 0x1

.field private static final channelInterferneceLevelTHREE:I = 0x3

.field private static final channelInterferneceLevelTWO:I = 0x2

.field private static final channelInterferneceLevelZERO:I = 0x0

.field private static final channelsFrequency:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static fiveBestChannel:I = 0x0

.field public static fiveBestLowerChannel:I = 0x0

.field public static fiveBestUpperChannel:I = 0x0

.field private static fiveGhzBandOverAllBestChannel:I = 0x0

.field private static fiveGhzLevelLowerBand:I = 0x0

.field private static fiveGhzLevelLowerBandBestChannel:I = 0x0

.field private static fiveGhzLevelUpperBand:I = 0x0

.field private static fiveGhzLevelUpperBandBestChannel:I = 0x0

.field public static levelOFPriorityChecked:I = 0x0

.field private static final noAccessPointPresent:I = 0x0

.field private static numOfAPonChannel:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static overallBestTwoFourChannel:I = 0x0

.field private static final rssiBaseLineFactor:I = 0x64

.field private static rssiLoadOfAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static supportedWiFiBand:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->supportedWiFiBand:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x96c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x971

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x976

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x97b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0x980

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x985

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x98a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x98f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x994

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x999

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x99e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x9a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x9a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x9b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x143c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x1450

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x1464

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x1478

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x1671

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x1685

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x1699

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x16ad

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x16c1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->channelsFrequency:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    iput-object p1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    sput-object p0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    return p0
.end method

.method static synthetic access$500(Lcom/motorola/android/wifi/WifiBestChannel;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiBestChannel;

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    invoke-static {p0}, Lcom/motorola/android/wifi/WifiBestChannel;->getChannelFromFrequency(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/wifi/WifiBestChannel;->fillNumberOfApOnSpecificChannel(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static computeBestChannelFor24Band()I
    .locals 40

    .prologue
    const/4 v10, 0x0

    .local v10, "freeBestZeroSpacingChannel":I
    const/4 v7, 0x0

    .local v7, "freeBestOneSpacingChannel":I
    const/4 v9, 0x0

    .local v9, "freeBestTwoSpacingChannel":I
    const/4 v8, 0x0

    .local v8, "freeBestThreeSpacingChannel":I
    const/4 v6, 0x0

    .local v6, "freeBestFourSpacingChannel":I
    const/4 v15, -0x1

    .local v15, "priorityLevelOneSpacing":I
    const/16 v17, -0x1

    .local v17, "priorityLevelTwoSpacing":I
    const/16 v16, -0x1

    .local v16, "priorityLevelThreeSpacing":I
    const/4 v14, -0x1

    .local v14, "priorityLevelFourSpacing":I
    const/16 v18, -0x1

    .local v18, "priorityLevelZeroSpacing":I
    const/16 v23, 0x0

    .local v23, "tempOneSpaceArrayIndex":I
    const/16 v28, 0x0

    .local v28, "tempTwoSpaceArrayIndex":I
    const/16 v26, 0x0

    .local v26, "tempThreeSpaceArrayIndex":I
    const/16 v20, 0x0

    .local v20, "tempFourSpaceArrayIndex":I
    const/16 v32, 0x0

    .local v32, "tempZeroSpaceArrayIndex":I
    const/16 v21, 0x0

    .local v21, "tempLeastLoadAPdetails":I
    const/4 v11, 0x0

    .local v11, "indexLeastLoadApChannel":I
    new-instance v33, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v33, "tempZeroSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v31, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v31, "tempZeroSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v24, "tempOneSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v22, "tempOneSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v27, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v27, "tempTwoSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v25, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v25, "tempThreeSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v19, Ljava/util/ArrayList;

    const/16 v36, 0xc

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v19, "tempFourSpaceArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v34, Ljava/util/ArrayList;

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xd

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v34, "twoFourChannelLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v35, Ljava/util/ArrayList;

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xd

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v35, "twoFourFreeChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .local v4, "counter":I
    :goto_0
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_2

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v36, 0x2

    move/from16 v0, v36

    if-lt v4, v0, :cond_1

    const/16 v36, 0xa

    move/from16 v0, v36

    if-gt v4, v0, :cond_1

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_1

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v37, v4, -0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_1

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v37, v4, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_1

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v23, v23, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/4 v4, 0x1

    :goto_1
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_5

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_5

    add-int/lit8 v32, v32, 0x1

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v37, v4, -0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v38, v4, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-gt v0, v1, :cond_4

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move v10, v4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move v10, v4

    goto :goto_2

    :cond_5
    const/16 v36, 0xb

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    const/16 v18, 0x1

    const/4 v4, 0x1

    :goto_3
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_7

    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ne v0, v1, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/16 v36, 0x5

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    :cond_8
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v14, v0, :cond_19

    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    const/16 v36, 0x4

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    const/16 v36, 0x1

    move/from16 v0, v20

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    const/4 v4, 0x0

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_f

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_9

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_9
    :goto_4
    sput v6, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    :goto_5
    const/16 v36, 0x0

    return v36

    :cond_a
    const/4 v4, 0x2

    :goto_6
    const/16 v36, 0xa

    move/from16 v0, v36

    if-gt v4, v0, :cond_8

    add-int/lit8 v36, v4, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    add-int/lit8 v36, v4, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v37, v36, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    add-int/lit8 v36, v4, 0x2

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v37, v36, -0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    move v6, v4

    const/4 v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v20, v20, 0x1

    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v36, v4, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    add-int/lit8 v36, v4, 0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v37, v36, -0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    move v8, v4

    const/16 v16, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v36, v4, -0x1

    invoke-virtual/range {v35 .. v36}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    move v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x1

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    .local v5, "found":I
    const/4 v4, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v4, v0, :cond_12

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    const/16 v37, 0xb

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    const/16 v6, 0xb

    add-int/lit8 v5, v5, 0x1

    :cond_11
    :goto_9
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v5, v0, :cond_16

    :cond_12
    const/16 v36, 0x6

    move/from16 v0, v20

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    if-nez v5, :cond_13

    const/4 v5, 0x1

    const/4 v6, 0x6

    :cond_13
    if-nez v5, :cond_14

    const/4 v4, 0x0

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_18

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_14

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_14
    :goto_a
    sput v6, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_11

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_17
    const/16 v36, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_a

    :cond_18
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto :goto_a

    .end local v5    # "found":I
    :cond_19
    const/16 v36, 0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    const/16 v36, 0x3

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    const/16 v36, 0x1

    move/from16 v0, v26

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    :cond_1a
    const/4 v4, 0x0

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_1d

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_1b

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v37, v37, v36

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v38

    sget-object v39, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v38

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_1c

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_1b
    :goto_b
    sput v8, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    :cond_1c
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_b

    :cond_1d
    const/16 v36, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_b

    :cond_1e
    const/16 v36, 0x1

    move/from16 v0, v17

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    const/16 v36, 0x2

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    new-instance v29, Ljava/util/ArrayList;

    const/16 v36, 0xe

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x1

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x2

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x3

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x4

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x5

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x6

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x7

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x8

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0x9

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xa

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xb

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xc

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    const/16 v37, 0xd

    const/16 v38, 0x0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v29, "tempTwoSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v36, 0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_21

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1f

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_20

    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    :cond_1f
    :goto_c
    sput v9, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    :cond_20
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_c

    :cond_21
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_c

    :cond_22
    const/16 v36, 0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-le v0, v1, :cond_1f

    const/4 v12, 0x0

    .local v12, "leastValueSearch":I
    const/4 v13, 0x0

    .local v13, "leastValueSearchIndex":I
    const/4 v4, 0x0

    :goto_d
    add-int/lit8 v36, v28, -0x1

    move/from16 v0, v36

    if-gt v4, v0, :cond_23

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_23
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v4, 0x0

    :goto_e
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_24

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_26

    :cond_24
    const/4 v4, 0x0

    :goto_f
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_25

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_29

    :cond_25
    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_2c

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_1f

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    goto/16 :goto_c

    :cond_26
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-gt v12, v0, :cond_28

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v12, v0, :cond_27

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_27
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_28
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_10

    :cond_29
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v12, v0, :cond_2a

    move v13, v4

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :cond_2b
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_c

    :cond_2c
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_c

    .end local v12    # "leastValueSearch":I
    .end local v13    # "leastValueSearchIndex":I
    .end local v29    # "tempTwoSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v15, v0, :cond_35

    const/16 v36, 0x1

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    const/16 v36, 0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    add-int/lit8 v36, v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_2e
    :goto_11
    sput v7, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    :cond_2f
    const/4 v4, 0x0

    :goto_12
    add-int/lit8 v36, v23, -0x1

    move/from16 v0, v36

    if-gt v4, v0, :cond_30

    sget-object v37, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v37

    sget-object v38, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int v36, v36, v37

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_30
    const/16 v30, 0x0

    .local v30, "tempValue":I
    const/16 v36, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v30

    const/4 v4, 0x0

    :goto_13
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_31

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_32

    :cond_31
    const/4 v4, 0x0

    :goto_14
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_2e

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_34

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_11

    :cond_32
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v30

    move/from16 v1, v36

    if-gt v0, v1, :cond_33

    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_33
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto :goto_15

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .end local v30    # "tempValue":I
    :cond_35
    const/16 v36, 0x1

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_3a

    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    if-nez v11, :cond_37

    const-string v36, "WifiBestChannel"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "freeBestZeroSpacingChannel : "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    :cond_37
    const/16 v36, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .local v3, "checkLeast":I
    const/4 v4, 0x0

    :goto_16
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_36

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_36

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-gt v3, v0, :cond_39

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v3, v0, :cond_38

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_38
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_39
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_17

    .end local v3    # "checkLeast":I
    :cond_3a
    const/16 v36, 0xc8

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5
.end method

.method private static computeChannelforFiveGhzLowerband()I
    .locals 11

    .prologue
    const/16 v10, 0x28

    const/16 v9, 0x11

    const/16 v8, 0xf

    const/16 v7, 0x12

    const/16 v6, 0x10

    const/4 v0, 0x0

    .local v0, "bestChannelInThisband":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    const/16 v0, 0x30

    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v0, 0x30

    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x28

    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "totalNumApHigher5Ghz":I
    const/4 v2, 0x0

    .local v2, "totalNumApLower5Ghz":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v1, v4, v3

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v2, v4, v3

    if-ge v1, v2, :cond_4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_3

    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x30

    :goto_1
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x2c

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x2c

    goto :goto_1

    :cond_4
    if-ge v2, v1, :cond_6

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_5

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x28

    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x24

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_b

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_8

    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x30

    :goto_3
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    const/16 v0, 0x30

    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    :cond_8
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x28

    goto :goto_3

    :cond_9
    const/16 v0, 0x28

    goto :goto_4

    :cond_a
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_d

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x28

    :goto_5
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_f

    :cond_c
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    const/16 v0, 0x28

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    :goto_6
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    const/16 v0, 0x24

    goto :goto_5

    :cond_e
    const/16 v0, 0x24

    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_6

    :cond_f
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0
.end method

.method public static computeChannelforFiveGhzUpperband()I
    .locals 11

    .prologue
    const/16 v10, 0xa1

    const/16 v9, 0x15

    const/16 v8, 0x13

    const/16 v7, 0x16

    const/16 v6, 0x14

    const/4 v0, 0x0

    .local v0, "bestChannelInThisband":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v0, 0xa1

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/4 v3, 0x0

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v0, 0xa1

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v0, 0x99

    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "totalNumApHigher5Ghz":I
    const/4 v2, 0x0

    .local v2, "totalNumApLower5Ghz":I
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v1, v4, v3

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v2, v4, v3

    if-ge v1, v2, :cond_4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_3

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0xa1

    :goto_1
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0x9d

    goto :goto_1

    :cond_4
    if-ge v2, v1, :cond_6

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v4, v3, :cond_5

    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0x99

    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0x95

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_b

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_8

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0xa1

    :goto_3
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    :cond_7
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    const/16 v0, 0xa1

    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0x9d

    goto :goto_3

    :cond_9
    const/16 v0, 0x9d

    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    goto :goto_4

    :cond_a
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v4, v3, :cond_d

    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0x99

    :goto_5
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_f

    :cond_c
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    const/16 v0, 0x99

    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    :goto_6
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    const/16 v0, 0x95

    goto :goto_5

    :cond_e
    const/16 v0, 0x95

    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    goto :goto_6

    :cond_f
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0
.end method

.method private static fillNumberOfApOnSpecificChannel(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "channel"    # I
    .param p3, "rssi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p0, "arrayListnumOfAPonChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p1, "arrayListRssiLoadOfAP":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, p3, 0x64

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getBestChannelofFiveGhz()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeChannelforFiveGhzUpperband()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeChannelforFiveGhzLowerband()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    const/4 v0, 0x0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-nez v0, :cond_0

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-nez v0, :cond_0

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    :goto_0
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    return v0

    :cond_0
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-nez v0, :cond_1

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-nez v0, :cond_2

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v1, :cond_4

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v1, :cond_5

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_5
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v2, :cond_6

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v2, :cond_6

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_6
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v2, :cond_7

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_7
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v2, :cond_8

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_8
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_9
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v3, :cond_a

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_a
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v3, :cond_b

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    :cond_b
    const/16 v0, 0xc8

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0
.end method

.method private static getChannelFromFrequency(I)I
    .locals 2
    .param p0, "frequency"    # I

    .prologue
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->channelsFrequency:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const-string v0, "WifiBestChannel"

    const-string/jumbo v1, "onDestroy caleld "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v1, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;-><init>(Lcom/motorola/android/wifi/WifiBestChannel;Lcom/motorola/android/wifi/WifiBestChannel$1;)V

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v1

    sput v1, Lcom/motorola/android/wifi/WifiBestChannel;->supportedWiFiBand:I

    return-void
.end method

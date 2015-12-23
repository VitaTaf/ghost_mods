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

    .line 53
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestChannel:I

    .line 54
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    .line 55
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    .line 58
    sput v4, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->supportedWiFiBand:I

    .line 65
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

    .line 69
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

    .line 72
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
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    .line 80
    iput-object p1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    sput-object p0, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 30
    sput-object p0, Lcom/motorola/android/wifi/WifiBestChannel;->rssiLoadOfAP:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 30
    sput p0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    return p0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 30
    sput p0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    return p0
.end method

.method static synthetic access$500(Lcom/motorola/android/wifi/WifiBestChannel;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/wifi/WifiBestChannel;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 30
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
    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/wifi/WifiBestChannel;->fillNumberOfApOnSpecificChannel(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static computeBestChannelFor24Band()I
    .locals 40

    .prologue
    .line 434
    const/4 v10, 0x0

    .line 435
    .local v10, "freeBestZeroSpacingChannel":I
    const/4 v7, 0x0

    .line 436
    .local v7, "freeBestOneSpacingChannel":I
    const/4 v9, 0x0

    .line 437
    .local v9, "freeBestTwoSpacingChannel":I
    const/4 v8, 0x0

    .line 438
    .local v8, "freeBestThreeSpacingChannel":I
    const/4 v6, 0x0

    .line 441
    .local v6, "freeBestFourSpacingChannel":I
    const/4 v15, -0x1

    .line 442
    .local v15, "priorityLevelOneSpacing":I
    const/16 v17, -0x1

    .line 443
    .local v17, "priorityLevelTwoSpacing":I
    const/16 v16, -0x1

    .line 444
    .local v16, "priorityLevelThreeSpacing":I
    const/4 v14, -0x1

    .line 445
    .local v14, "priorityLevelFourSpacing":I
    const/16 v18, -0x1

    .line 448
    .local v18, "priorityLevelZeroSpacing":I
    const/16 v23, 0x0

    .line 449
    .local v23, "tempOneSpaceArrayIndex":I
    const/16 v28, 0x0

    .line 450
    .local v28, "tempTwoSpaceArrayIndex":I
    const/16 v26, 0x0

    .line 451
    .local v26, "tempThreeSpaceArrayIndex":I
    const/16 v20, 0x0

    .line 452
    .local v20, "tempFourSpaceArrayIndex":I
    const/16 v32, 0x0

    .line 455
    .local v32, "tempZeroSpaceArrayIndex":I
    const/16 v21, 0x0

    .line 456
    .local v21, "tempLeastLoadAPdetails":I
    const/4 v11, 0x0

    .line 459
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

    .line 462
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

    .line 465
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

    .line 468
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

    .line 471
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

    .line 474
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

    .line 477
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

    .line 480
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

    .line 483
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

    .line 487
    .local v35, "twoFourFreeChannel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .local v4, "counter":I
    :goto_0
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_2

    .line 488
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_0

    .line 490
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_0
    const/16 v36, 0x2

    move/from16 v0, v36

    if-lt v4, v0, :cond_1

    const/16 v36, 0xa

    move/from16 v0, v36

    if-gt v4, v0, :cond_1

    .line 495
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_1

    .line 496
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

    .line 497
    const/4 v15, 0x1

    .line 498
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 499
    add-int/lit8 v23, v23, 0x1

    .line 487
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 514
    :cond_2
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 515
    const/4 v4, 0x1

    :goto_1
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_5

    .line 516
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_5

    .line 517
    add-int/lit8 v32, v32, 0x1

    .line 518
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

    .line 520
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

    .line 521
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

    .line 522
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 523
    move v10, v4

    .line 515
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 526
    :cond_4
    sget-object v36, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 527
    move v10, v4

    goto :goto_2

    .line 535
    :cond_5
    const/16 v36, 0xb

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 537
    const/16 v18, 0x1

    .line 538
    const/4 v4, 0x1

    :goto_3
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_7

    .line 539
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

    .line 540
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v11, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 541
    add-int/lit8 v11, v11, 0x1

    .line 538
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 544
    :cond_7
    const/16 v36, 0x5

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 574
    :cond_8
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v14, v0, :cond_19

    .line 575
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 576
    const/16 v36, 0x4

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 577
    const/16 v36, 0x1

    move/from16 v0, v20

    move/from16 v1, v36

    if-ne v0, v1, :cond_10

    .line 579
    const/4 v4, 0x0

    .line 580
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

    .line 582
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 583
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

    .line 586
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

    .line 588
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 596
    :cond_9
    :goto_4
    sput v6, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 850
    :goto_5
    const/16 v36, 0x0

    return v36

    .line 547
    :cond_a
    const/4 v4, 0x2

    :goto_6
    const/16 v36, 0xa

    move/from16 v0, v36

    if-gt v4, v0, :cond_8

    .line 548
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

    .line 552
    move v6, v4

    .line 553
    const/4 v14, 0x1

    .line 554
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 555
    add-int/lit8 v20, v20, 0x1

    .line 547
    :cond_b
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 557
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

    .line 559
    move v8, v4

    .line 560
    const/16 v16, 0x1

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 562
    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    .line 564
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

    .line 565
    move v9, v4

    .line 566
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/16 v17, 0x1

    .line 568
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_7

    .line 590
    :cond_e
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto/16 :goto_4

    .line 594
    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto/16 :goto_4

    .line 598
    :cond_10
    const/4 v5, 0x0

    .line 600
    .local v5, "found":I
    const/4 v4, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v4, v0, :cond_12

    .line 601
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

    .line 602
    const/16 v6, 0xb

    .line 603
    add-int/lit8 v5, v5, 0x1

    .line 608
    :cond_11
    :goto_9
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v5, v0, :cond_16

    .line 611
    :cond_12
    const/16 v36, 0x6

    move/from16 v0, v20

    move/from16 v1, v36

    if-ne v0, v1, :cond_13

    if-nez v5, :cond_13

    .line 613
    const/4 v5, 0x1

    .line 614
    const/4 v6, 0x6

    .line 616
    :cond_13
    if-nez v5, :cond_14

    .line 617
    const/4 v4, 0x0

    .line 619
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

    .line 624
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 625
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

    .line 630
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

    .line 634
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 643
    :cond_14
    :goto_a
    sput v6, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 604
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

    .line 605
    const/4 v6, 0x1

    .line 606
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 600
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 636
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

    .line 640
    :cond_18
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v6, v36, 0x1

    goto :goto_a

    .line 647
    .end local v5    # "found":I
    :cond_19
    const/16 v36, 0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    .line 653
    const/16 v36, 0x3

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 654
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 655
    const/16 v36, 0x1

    move/from16 v0, v26

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 656
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 657
    sput v8, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 659
    :cond_1a
    const/4 v4, 0x0

    .line 661
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

    .line 666
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 667
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

    .line 673
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

    .line 678
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 686
    :cond_1b
    :goto_b
    sput v8, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 680
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

    .line 684
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

    .line 690
    :cond_1e
    const/16 v36, 0x1

    move/from16 v0, v17

    move/from16 v1, v36

    if-ne v0, v1, :cond_2d

    .line 695
    const/16 v36, 0x2

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 696
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 699
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

    .line 703
    .local v29, "tempTwoSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v36, 0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-ne v0, v1, :cond_22

    .line 704
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

    .line 706
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    .line 708
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

    .line 712
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

    .line 714
    add-int/lit8 v36, v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    .line 774
    :cond_1f
    :goto_c
    sput v9, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 716
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

    .line 720
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

    .line 722
    :cond_22
    const/16 v36, 0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-le v0, v1, :cond_1f

    .line 723
    const/4 v12, 0x0

    .line 724
    .local v12, "leastValueSearch":I
    const/4 v13, 0x0

    .line 726
    .local v13, "leastValueSearchIndex":I
    const/4 v4, 0x0

    :goto_d
    add-int/lit8 v36, v28, -0x1

    move/from16 v0, v36

    if-gt v4, v0, :cond_23

    .line 727
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

    .line 726
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 732
    :cond_23
    const/16 v36, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 733
    const/4 v4, 0x0

    :goto_e
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_24

    .line 734
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_26

    .line 745
    :cond_24
    const/4 v4, 0x0

    :goto_f
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_25

    .line 746
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_29

    .line 753
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

    .line 755
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    .line 757
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

    .line 761
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

    .line 763
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    add-int/lit8 v9, v36, -0x1

    goto/16 :goto_c

    .line 735
    :cond_26
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-gt v12, v0, :cond_28

    .line 736
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v12, v0, :cond_27

    .line 737
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 733
    :cond_27
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 740
    :cond_28
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_10

    .line 747
    :cond_29
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v36

    if-ne v12, v0, :cond_2a

    .line 748
    move v13, v4

    .line 745
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 765
    :cond_2b
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_c

    .line 770
    :cond_2c
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_c

    .line 777
    .end local v12    # "leastValueSearch":I
    .end local v13    # "leastValueSearchIndex":I
    .end local v29    # "tempTwoSpaceArrayLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2d
    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v15, v0, :cond_35

    .line 778
    const/16 v36, 0x1

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 779
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 780
    const/16 v36, 0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_2f

    .line 781
    add-int/lit8 v36, v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 811
    :cond_2e
    :goto_11
    sput v7, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 784
    :cond_2f
    const/4 v4, 0x0

    :goto_12
    add-int/lit8 v36, v23, -0x1

    move/from16 v0, v36

    if-gt v4, v0, :cond_30

    .line 785
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

    .line 784
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 789
    :cond_30
    const/16 v30, 0x0

    .line 790
    .local v30, "tempValue":I
    const/16 v36, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 792
    const/4 v4, 0x0

    :goto_13
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_31

    .line 793
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-nez v36, :cond_32

    .line 804
    :cond_31
    const/4 v4, 0x0

    :goto_14
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_2e

    .line 805
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move/from16 v0, v30

    move/from16 v1, v36

    if-ne v0, v1, :cond_34

    .line 806
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 807
    goto/16 :goto_11

    .line 796
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

    .line 792
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 799
    :cond_33
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto :goto_15

    .line 804
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 813
    .end local v30    # "tempValue":I
    :cond_35
    const/16 v36, 0x1

    move/from16 v0, v18

    move/from16 v1, v36

    if-ne v0, v1, :cond_3a

    .line 814
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->levelOFPriorityChecked:I

    .line 815
    const/16 v36, 0x0

    sput v36, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    .line 821
    if-nez v11, :cond_37

    .line 824
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

    .line 845
    :cond_36
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->overallBestTwoFourChannel:I

    goto/16 :goto_5

    .line 827
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

    .line 829
    .local v3, "checkLeast":I
    const/4 v4, 0x0

    :goto_16
    const/16 v36, 0xb

    move/from16 v0, v36

    if-gt v4, v0, :cond_36

    .line 830
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_36

    .line 831
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

    .line 832
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

    .line 833
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 834
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

    .line 829
    :cond_38
    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 837
    :cond_39
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Integer;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 838
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

    .line 848
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

    .line 341
    const/4 v0, 0x0

    .line 342
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

    .line 344
    const/4 v3, 0x0

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    .line 345
    const/16 v0, 0x30

    .line 346
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 424
    :goto_0
    return v0

    .line 347
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

    .line 348
    const/16 v0, 0x30

    .line 349
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    .line 350
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_0

    .line 351
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

    .line 352
    const/16 v0, 0x28

    .line 353
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    .line 354
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_0

    .line 356
    :cond_2
    const/4 v1, 0x0

    .line 357
    .local v1, "totalNumApHigher5Ghz":I
    const/4 v2, 0x0

    .line 358
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

    .line 359
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

    .line 361
    if-ge v1, v2, :cond_4

    .line 362
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

    .line 363
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 364
    const/16 v0, 0x30

    .line 369
    :goto_1
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 366
    :cond_3
    const/16 v3, 0x2c

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 367
    const/16 v0, 0x2c

    goto :goto_1

    .line 370
    :cond_4
    if-ge v2, v1, :cond_6

    .line 371
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

    .line 372
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 373
    const/16 v0, 0x28

    .line 378
    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 375
    :cond_5
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 376
    const/16 v0, 0x24

    goto :goto_2

    .line 380
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

    .line 382
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

    .line 383
    const/16 v3, 0x30

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 384
    const/16 v0, 0x30

    .line 390
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

    .line 391
    :cond_7
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    .line 392
    const/16 v0, 0x30

    .line 396
    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 386
    :cond_8
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 387
    const/16 v0, 0x28

    goto :goto_3

    .line 394
    :cond_9
    const/16 v0, 0x28

    goto :goto_4

    .line 398
    :cond_a
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 401
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

    .line 402
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 403
    const/16 v0, 0x28

    .line 409
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

    .line 410
    :cond_c
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    .line 411
    const/16 v0, 0x28

    .line 412
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 417
    :goto_6
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    goto/16 :goto_0

    .line 405
    :cond_d
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    .line 406
    const/16 v0, 0x24

    goto :goto_5

    .line 414
    :cond_e
    const/16 v0, 0x24

    .line 415
    const/16 v3, 0x24

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    goto :goto_6

    .line 419
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

    .line 250
    const/4 v0, 0x0

    .line 251
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

    .line 253
    const/16 v0, 0xa1

    .line 254
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 255
    const/4 v3, 0x0

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    .line 337
    :goto_0
    return v0

    .line 256
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

    .line 257
    const/16 v0, 0xa1

    .line 258
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 259
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto :goto_0

    .line 260
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

    .line 261
    const/16 v0, 0x99

    .line 262
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 263
    const/4 v3, 0x1

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto :goto_0

    .line 265
    :cond_2
    const/4 v1, 0x0

    .line 266
    .local v1, "totalNumApHigher5Ghz":I
    const/4 v2, 0x0

    .line 268
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

    .line 269
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

    .line 271
    if-ge v1, v2, :cond_4

    .line 272
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

    .line 273
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 274
    const/16 v0, 0xa1

    .line 279
    :goto_1
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 276
    :cond_3
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 277
    const/16 v0, 0x9d

    goto :goto_1

    .line 280
    :cond_4
    if-ge v2, v1, :cond_6

    .line 281
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

    .line 282
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 283
    const/16 v0, 0x99

    .line 288
    :goto_2
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 285
    :cond_5
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 286
    const/16 v0, 0x95

    goto :goto_2

    .line 290
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

    .line 292
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

    .line 293
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 294
    const/16 v0, 0xa1

    .line 300
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

    .line 301
    :cond_7
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_9

    .line 302
    const/16 v0, 0xa1

    .line 303
    sput v10, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 308
    :goto_4
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 296
    :cond_8
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 297
    const/16 v0, 0x9d

    goto :goto_3

    .line 305
    :cond_9
    const/16 v0, 0x9d

    .line 306
    const/16 v3, 0x9d

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    goto :goto_4

    .line 310
    :cond_a
    const/4 v3, 0x3

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 313
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

    .line 314
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 315
    const/16 v0, 0x99

    .line 321
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

    .line 322
    :cond_c
    sget-object v3, Lcom/motorola/android/wifi/WifiBestChannel;->numOfAPonChannel:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_e

    .line 323
    const/16 v0, 0x99

    .line 324
    const/16 v3, 0x99

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 329
    :goto_6
    const/4 v3, 0x2

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    goto/16 :goto_0

    .line 317
    :cond_d
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    .line 318
    const/16 v0, 0x95

    goto :goto_5

    .line 326
    :cond_e
    const/16 v0, 0x95

    .line 327
    const/16 v3, 0x95

    sput v3, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    goto :goto_6

    .line 331
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
    .line 116
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

    .line 117
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

    .line 119
    return-void
.end method

.method public static getBestChannelofFiveGhz()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 207
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeChannelforFiveGhzUpperband()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestUpperChannel:I

    .line 208
    invoke-static {}, Lcom/motorola/android/wifi/WifiBestChannel;->computeChannelforFiveGhzLowerband()I

    move-result v0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveBestLowerChannel:I

    .line 210
    const/4 v0, 0x0

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    .line 211
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-nez v0, :cond_0

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-nez v0, :cond_0

    .line 213
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    .line 243
    :goto_0
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    return v0

    .line 214
    :cond_0
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-nez v0, :cond_1

    .line 215
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 216
    :cond_1
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-nez v0, :cond_2

    .line 217
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 218
    :cond_2
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v1, :cond_3

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v1, :cond_3

    .line 219
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 221
    :cond_3
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v1, :cond_4

    .line 222
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 223
    :cond_4
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v1, :cond_5

    .line 224
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 225
    :cond_5
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v2, :cond_6

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v2, :cond_6

    .line 226
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 228
    :cond_6
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v2, :cond_7

    .line 229
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 230
    :cond_7
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v2, :cond_8

    .line 231
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 232
    :cond_8
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v3, :cond_9

    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v3, :cond_9

    .line 233
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 235
    :cond_9
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBand:I

    if-ne v0, v3, :cond_a

    .line 236
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelUpperBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 237
    :cond_a
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBand:I

    if-ne v0, v3, :cond_b

    .line 238
    sget v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzLevelLowerBandBestChannel:I

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0

    .line 240
    :cond_b
    const/16 v0, 0xc8

    sput v0, Lcom/motorola/android/wifi/WifiBestChannel;->fiveGhzBandOverAllBestChannel:I

    goto :goto_0
.end method

.method private static getChannelFromFrequency(I)I
    .locals 2
    .param p0, "frequency"    # I

    .prologue
    .line 105
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
    .line 859
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 862
    :cond_0
    const-string v0, "WifiBestChannel"

    const-string/jumbo v1, "onDestroy caleld "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
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
    .line 91
    new-instance v1, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;-><init>(Lcom/motorola/android/wifi/WifiBestChannel;Lcom/motorola/android/wifi/WifiBestChannel$1;)V

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiReceiver:Lcom/motorola/android/wifi/WifiBestChannel$WifiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    iget-object v1, p0, Lcom/motorola/android/wifi/WifiBestChannel;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v1

    sput v1, Lcom/motorola/android/wifi/WifiBestChannel;->supportedWiFiBand:I

    .line 99
    return-void
.end method

.class Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;
.super Ljava/lang/Object;
.source "MotorolaWifiIcons.java"


# static fields
.field static final QS_WIFI_ACTIVITY_WIDE:[I

.field static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final QS_WIFI_SIGNAL_WIDE:[I

.field static final SB_WIFI_ACTIVITY_WIDE:[I

.field static final SB_WIFI_SIGNAL_WIDE:[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->WIFI_LEVEL_COUNT:I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->SB_WIFI_SIGNAL_WIDE:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->QS_WIFI_SIGNAL_WIDE:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->SB_WIFI_ACTIVITY_WIDE:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/systemui/statusbar/policy/MotorolaWifiIcons;->QS_WIFI_ACTIVITY_WIDE:[I

    return-void

    :array_0
    .array-data 4
        0x7f020143
        0x7f020145
        0x7f020147
        0x7f020149
        0x7f02014b
    .end array-data

    :array_1
    .array-data 4
        0x7f020144
        0x7f020146
        0x7f020148
        0x7f02014a
        0x7f02014c
    .end array-data

    :array_2
    .array-data 4
        0x7f02009f
        0x7f0200a0
        0x7f0200a1
        0x7f0200a2
        0x7f0200a3
    .end array-data

    :array_3
    .array-data 4
        0x7f0200a6
        0x7f0200a7
        0x7f0200a8
        0x7f0200a9
        0x7f0200aa
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x7f020504
        0x7f0204f2
        0x7f0204f2
        0x7f0204f6
        0x7f0204f5
        0x7f0204fa
        0x7f0204f9
        0x7f0204fe
        0x7f0204fd
        0x7f020502
        0x7f020501
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x7f020310
        0x7f020328
        0x7f020306
        0x7f020306
        0x7f020308
        0x7f020314
        0x7f02030a
        0x7f020316
        0x7f02030c
        0x7f020318
        0x7f02030e
        0x7f02031a
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x0
        0x7f0204e2
        0x7f0204e1
        0x7f0204e6
        0x7f0204e5
        0x7f0204ee
        0x7f0204ed
        0x7f0204ea
        0x7f0204e9
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x7f02031e
        0x7f02031d
        0x7f020322
        0x7f020321
        0x7f02032c
        0x7f02032b
        0x7f020326
        0x7f020325
    .end array-data
.end method

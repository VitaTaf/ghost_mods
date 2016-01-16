.class public final Lcom/android/nfc/NfcMetrics;
.super Ljava/lang/Object;
.source "NfcMetrics.java"


# static fields
.field private static final DBG:Z

.field private static final ID_NFC_EVENT:Ljava/lang/String; = "NfcEvent"

.field private static final PARAM_NFC_BEAM_OFF:Ljava/lang/String; = "nfc_beam_off"

.field private static final PARAM_NFC_BEAM_ON:Ljava/lang/String; = "nfc_beam_on"

.field private static final PARAM_NFC_CE_OFFHOST:Ljava/lang/String; = "nfc_ce_offhost"

.field private static final PARAM_NFC_ERR_AIDNOTFOUND:Ljava/lang/String; = "nfc_err_aidnotfound"

.field private static final PARAM_NFC_ERR_AIDOFFHOST:Ljava/lang/String; = "nfc_err_aidoffhost"

.field private static final PARAM_NFC_HCE_OTHER:Ljava/lang/String; = "nfc_hce_other"

.field private static final PARAM_NFC_HCE_PAYMENT:Ljava/lang/String; = "nfc_hce_pay"

.field private static final PARAM_NFC_OFF:Ljava/lang/String; = "nfc_off"

.field private static final PARAM_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PARAM_NFC_P2P:Ljava/lang/String; = "nfc_p2p"

.field private static final PARAM_NFC_P2P_HO_BT:Ljava/lang/String; = "nfc_p2p_bt"

.field private static final PARAM_NFC_P2P_HO_WFD:Ljava/lang/String; = "nfc_p2p_wfd"

.field private static final PARAM_NFC_P2P_TAPNGO:Ljava/lang/String; = "nfc_p2p_tapngo"

.field private static final PARAM_NFC_TAG_READ:Ljava/lang/String; = "nfc_tag_read"

.field private static final PARAM_NFC_TAG_WRITE:Ljava/lang/String; = "nfc_tag_write"

.field private static final TAG:Ljava/lang/String; = "NfcMetrics"

.field private static final TAG_NFC:Ljava/lang/String; = "MOT_NFC_L1"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static final VERSION_1_0:Ljava/lang/String; = "1.0"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/nfc/NfcMetrics;->DBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/android/nfc/NfcMetrics;->DBG:Z

    return v0
.end method

.method private static buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v1, Lcom/android/nfc/NfcMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/nfc/NfcMetrics$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/nfc/NfcMetrics$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/nfc/NfcMetrics$1;->start()V

    .line 150
    return-void
.end method

.method public static logBeamState(Z)V
    .locals 3
    .param p0, "beamOn"    # Z

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 81
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_beam_on"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_beam_off"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static logCeHostOther()V
    .locals 3

    .prologue
    .line 111
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_hce_other"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static logCeHostPayment()V
    .locals 3

    .prologue
    .line 115
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_hce_pay"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static logCeOffHost()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_ce_offhost"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static logErrAidNotFound()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_err_aidnotfound"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static logErrAidOffHost()V
    .locals 3

    .prologue
    .line 127
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_err_aidoffhost"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static logNfcState(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 69
    packed-switch p0, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_off"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_2
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_on"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static logP2p()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_p2p"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static logP2pHoBt()V
    .locals 3

    .prologue
    .line 99
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_p2p_bt"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static logP2pHoWfd()V
    .locals 3

    .prologue
    .line 103
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_p2p_wfd"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static logP2pTapnGo()V
    .locals 3

    .prologue
    .line 107
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_p2p_tapngo"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static logTagRead()V
    .locals 3

    .prologue
    .line 87
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_tag_read"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static logTagWrite()V
    .locals 3

    .prologue
    .line 91
    const-string v0, "MOT_NFC_L1"

    const-string v1, "NfcEvent"

    const-string v2, "nfc_tag_write"

    invoke-static {v0, v1, v2}, Lcom/android/nfc/NfcMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sput-object p0, Lcom/android/nfc/NfcMetrics;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

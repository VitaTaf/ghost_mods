.class public final Lcom/android/server/display/WirelessDisplayMetrics;
.super Ljava/lang/Object;
.source "WirelessDisplayMetrics.java"


# static fields
.field private static final DBG:Z = false

.field private static final ID_WIPL_EVENT:Ljava/lang/String; = "WIPL_EVENT"

.field private static final PARAMETER_WIPL_CON_FAIL:Ljava/lang/String; = "wipl_con_fail"

.field private static final PARAMETER_WIPL_CON_SUCC:Ljava/lang/String; = "wipl_con_succ"

.field private static final PARAMETER_WIPL_HDCP_FAIL:Ljava/lang/String; = "wipl_hdcp_fail"

.field private static final PARAMETER_WIPL_HDCP_SUCC:Ljava/lang/String; = "wipl_hdcp_succ"

.field private static final PARAMETER_WIPL_MIRROR_OFF:Ljava/lang/String; = "wipl_mirror_off"

.field private static final PARAMETER_WIPL_MIRROR_ON:Ljava/lang/String; = "wipl_mirror_on"

.field private static final PARAMETER_WIPL_MIRROR_PLAY:Ljava/lang/String; = "wipl_mirror_play"

.field private static final PARAMETER_WIPL_MIRROR_STANDBY:Ljava/lang/String; = "wipl_mirror_standby"

.field private static final PARAMETER_WIPL_MIRROR_TEARDOWN:Ljava/lang/String; = "wipl_mirror_teardown"

.field private static final PARAMETER_WIPL_OFF:Ljava/lang/String; = "wipl_off"

.field private static final PARAMETER_WIPL_ON:Ljava/lang/String; = "wipl_on"

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayMetrics"

.field private static final TAG_WIPL:Ljava/lang/String; = "MOT_WIPL"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static final VERSION_1_0:Ljava/lang/String; = "1.0"

.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method private static buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v1, Lcom/android/server/display/WirelessDisplayMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/server/display/WirelessDisplayMetrics$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/display/WirelessDisplayMetrics$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/server/display/WirelessDisplayMetrics$1;->start()V

    .line 127
    return-void
.end method

.method public static logHdcpFail()V
    .locals 3

    .prologue
    .line 92
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_hdcp_fail"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static logHdcpSuccess()V
    .locals 3

    .prologue
    .line 88
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_hdcp_succ"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static logMirrorState(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 96
    packed-switch p0, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return-void

    .line 98
    :pswitch_1
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_mirror_off"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_mirror_on"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static logP2pFail()V
    .locals 3

    .prologue
    .line 84
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_con_fail"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static logP2pSuccess()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_con_succ"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static logWiPlState(I)V
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_off"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "MOT_WIPL"

    const-string v1, "WIPL_EVENT"

    const-string v2, "wipl_on"

    invoke-static {v0, v1, v2}, Lcom/android/server/display/WirelessDisplayMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    sput-object p0, Lcom/android/server/display/WirelessDisplayMetrics;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

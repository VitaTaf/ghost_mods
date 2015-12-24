.class public final Lcom/android/server/location/LocationMetrics;
.super Ljava/lang/Object;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LocationMetrics$MySQLiteHelper;,
        Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;,
        Lcom/android/server/location/LocationMetrics$EventParam;,
        Lcom/android/server/location/LocationMetrics$LocationStats;
    }
.end annotation


# static fields
.field public static final BATTERY_SAVING:Ljava/lang/String; = "BATTERY_SAVING"

.field private static final DBG:Z

.field public static final DEFAULT_LOCATION:Ljava/lang/String; = "DEFAULT_LOCATION"

.field public static final DEVICE_ONLY:Ljava/lang/String; = "DEVICE_ONLY"

.field public static final FIVE_MINUTES:J = 0x493e0L

.field public static final HIGH_ACCURACY:Ljava/lang/String; = "HIGH_ACCURACY"

.field public static final INST_INC_VALUE:Ljava/lang/String; = "com.motorola.location.instincvalue"

.field public static final INST_INTENT:Ljava/lang/String; = "com.motorola.location.instrumentation"

.field public static final INST_INTENT_PERMISSION:Ljava/lang/String; = "com.motorola.android.permission.LOC_INST_RECEIVE"

.field public static final INST_TYPE:Ljava/lang/String; = "com.motorola.location.insttype"

.field public static final LOCATION_OFF:Ljava/lang/String; = "LOCATION_OFF"

.field public static final ONE_MINUTE:J = 0xea60L

.field private static final PARAMETER_FLP_HW_GEOFENCE_COUNT:Ljava/lang/String; = "flp_hw_geo_cnt"

.field private static final PARAMETER_GPS_FIX_COUNT:Ljava/lang/String; = "gps_fix_cnt"

.field private static final PARAMETER_GPS_STARTS_COUNT:Ljava/lang/String; = "gps_start_cnt"

.field private static final PARAMETER_GPS_UPTIME:Ljava/lang/String; = "gps_uptime"

.field private static final PARAMETER_HARDWARE_GEOFENCE_COUNT:Ljava/lang/String; = "hw_geo_cnt"

.field private static final PARAMETER_LOCATION_SETTING:Ljava/lang/String; = "setting"

.field private static final PARAMETER_NLP_FIX_COUNT:Ljava/lang/String; = "nlp_fix_cnt"

.field private static final PARAMETER_NLP_STARTS_COUNT:Ljava/lang/String; = "nlp_start_cnt"

.field private static final PARAMETER_PASSIVE_STARTS_COUNT:Ljava/lang/String; = "pass_start_cnt"

.field private static final PARAMETER_PROXIMITY_ALERT_COUNT:Ljava/lang/String; = "prox_alrt_cnt"

.field private static final PARAMETER_SMART_GPS_COUNT:Ljava/lang/String; = "smart_gps_cnt"

.field private static final PARAMETER_SMART_GPS_UPTIME:Ljava/lang/String; = "smart_gps_uptime"

.field private static final TAG:Ljava/lang/String; = "Location Metrics"

.field private static final TAG_DAILY_STATS_EVENT:Ljava/lang/String; = "LOCATION_SVC_DAILY_STATS"

.field private static final TAG_GROUP:Ljava/lang/String; = "MOT_CA_STATS_L2"

.field public static final TWENTY_FOUR_HOURS:J = 0x5265c00L

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/location/LocationMetrics;->DBG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/location/LocationMetrics;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/server/location/LocationMetrics;->DBG:Z

    return v0
.end method

.method private buildAndSendCheckinEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/location/LocationMetrics$EventParam;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/location/LocationMetrics$EventParam;>;"
    sget-object v1, Lcom/android/server/location/LocationMetrics;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/android/server/location/LocationMetrics;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 127
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v1, Lcom/android/server/location/LocationMetrics$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/location/LocationMetrics$1;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;Ljava/util/List;Landroid/content/ContentResolver;)V

    invoke-virtual {v1}, Lcom/android/server/location/LocationMetrics$1;->start()V

    .line 153
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v1, "Location Metrics"

    const-string v2, "CheckinEvent failed [mContext is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkinDailyStats(Lcom/android/server/location/LocationMetrics$LocationStats;)V
    .locals 6
    .param p1, "locationStats"    # Lcom/android/server/location/LocationMetrics$LocationStats;

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationMetrics$EventParam;>;"
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "gps_start_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsStartsCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "nlp_start_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->nlpStartsCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "pass_start_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->passiveStartsCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "gps_uptime"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsUptime:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "gps_fix_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->gpsFixCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "nlp_fix_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->nlpFixCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "prox_alrt_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->proximityAlertCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "hw_geo_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->hardwareGeofenceCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "flp_hw_geo_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->flpHwGeofenceCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "smart_gps_cnt"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsCount:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "smart_gps_uptime"

    iget-wide v4, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->smartGpsUptime:J

    long-to-int v3, v4

    int-to-long v4, v3

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lcom/android/server/location/LocationMetrics$EventParam;

    const-string v2, "setting"

    iget-object v3, p1, Lcom/android/server/location/LocationMetrics$LocationStats;->locationSetting:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/location/LocationMetrics$EventParam;-><init>(Lcom/android/server/location/LocationMetrics;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "LOCATION_SVC_DAILY_STATS"

    invoke-direct {p0, v1, v0}, Lcom/android/server/location/LocationMetrics;->buildAndSendCheckinEvent(Ljava/lang/String;Ljava/util/List;)V

    .line 122
    return-void
.end method

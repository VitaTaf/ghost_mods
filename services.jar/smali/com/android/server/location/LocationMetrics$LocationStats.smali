.class public Lcom/android/server/location/LocationMetrics$LocationStats;
.super Ljava/lang/Object;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationStats"
.end annotation


# static fields
.field public static final flpHwGeofenceCountStr:Ljava/lang/String; = "flpHwGeofenceCount"

.field public static final gpsFixCountStr:Ljava/lang/String; = "gpsFixCount"

.field public static final gpsStartsCountStr:Ljava/lang/String; = "gpsStartsCount"

.field public static final gpsUptimeStr:Ljava/lang/String; = "gpsUptime"

.field public static final hardwareGeofenceCountStr:Ljava/lang/String; = "hardwareGeofenceCount"

.field public static final lastCheckinTimeStr:Ljava/lang/String; = "lastCheckInTime"

.field public static final locationSettingStr:Ljava/lang/String; = "locationSetting"

.field public static final nlpFixCountStr:Ljava/lang/String; = "nlpFixCount"

.field public static final nlpStartsCountStr:Ljava/lang/String; = "nlpStartsCount"

.field public static final passiveStartsCountStr:Ljava/lang/String; = "passiveStartsCount"

.field public static final proximityAlertCountStr:Ljava/lang/String; = "proximityAlertCount"

.field public static final smartGpsCountStr:Ljava/lang/String; = "smartGpsCount"

.field public static final smartGpsUptimeStr:Ljava/lang/String; = "smartGpsUptime"


# instance fields
.field public flpHwGeofenceCount:J

.field public gpsFixCount:J

.field public gpsStartsCount:J

.field public gpsUptime:J

.field public hardwareGeofenceCount:J

.field public lastCheckinTime:J

.field public locationSetting:Ljava/lang/String;

.field public nlpFixCount:J

.field public nlpStartsCount:J

.field public passiveStartsCount:J

.field public proximityAlertCount:J

.field public smartGpsCount:J

.field public smartGpsUptime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

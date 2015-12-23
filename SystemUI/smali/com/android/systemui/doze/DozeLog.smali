.class public Lcom/android/systemui/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SIZE:I

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static final sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sPulsing:Z

.field private static sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "DozeLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->DEBUG:Z

    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 228
    new-instance v0, Lcom/android/systemui/doze/DozeLog$1;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeLog$1;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void

    .line 35
    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/android/systemui/doze/DozeLog;->sSince:J

    return-wide v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 167
    const-class v5, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v5

    .line 168
    :try_start_0
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v4, :cond_0

    monitor-exit v5

    .line 193
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v4, "  Doze log:"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    sget v4, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    sget v6, Lcom/android/systemui/doze/DozeLog;->sCount:I

    sub-int/2addr v4, v6

    sget v6, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    add-int/2addr v4, v6

    sget v6, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int v3, v4, v6

    .line 171
    .local v3, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/android/systemui/doze/DozeLog;->sCount:I

    if-ge v0, v4, :cond_1

    .line 172
    add-int v4, v3, v0

    sget v6, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int v1, v4, v6

    .line 173
    .local v1, "j":I
    const-string v4, "    "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    sget-object v7, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    aget-wide v8, v7, v1

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 176
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v1    # "j":I
    :cond_1
    const-string v4, "  Doze summary stats (for "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/systemui/doze/DozeLog;->sSince:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 180
    const-string v4, "):"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v6, "Pickup pulse (near vibration)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 182
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v6, "Pickup pulse (not near vibration)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 183
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v6, "Notification pulse"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 184
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v6, "Screen on (pulsing)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 185
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v6, "Screen on (not pulsing)"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 186
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const-string v6, "Emergency call"

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x4

    if-ge v0, v4, :cond_2

    .line 188
    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "reason":Ljava/lang/String;
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity near ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 190
    sget-object v4, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v0

    const/4 v6, 0x1

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity far ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 192
    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v3    # "start":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 196
    const-class v1, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v1

    .line 197
    :try_start_0
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-exit v1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 199
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    aput-object p0, v0, v2

    .line 200
    sget v0, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    rem-int/2addr v0, v2

    sput v0, Lcom/android/systemui/doze/DozeLog;->sPosition:I

    .line 201
    sget v0, Lcom/android/systemui/doze/DozeLog;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/systemui/doze/DozeLog;->sCount:I

    .line 202
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    sget-boolean v0, Lcom/android/systemui/doze/DozeLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static pulseReasonToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pulseReason"    # I

    .prologue
    .line 157
    packed-switch p0, :pswitch_data_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_0
    const-string v0, "intent"

    .line 161
    :goto_0
    return-object v0

    .line 159
    :pswitch_1
    const-string v0, "notification"

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v0, "sigmotion"

    goto :goto_0

    .line 161
    :pswitch_3
    const-string v0, "pickup"

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static traceDozing(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dozing"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x0

    .line 87
    sput-boolean v1, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 88
    const-class v2, Lcom/android/systemui/doze/DozeLog;

    monitor-enter v2

    .line 89
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 90
    sget v1, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sTimes:[J

    .line 91
    sget v1, Lcom/android/systemui/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sMessages:[Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/doze/DozeLog;->sSince:J

    .line 93
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 94
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 95
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 96
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 97
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 98
    new-instance v1, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 99
    const/4 v1, 0x4

    const/4 v3, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-class v3, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 101
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    aput-object v4, v1, v3

    .line 102
    sget-object v1, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    const/4 v3, 0x1

    new-instance v4, Lcom/android/systemui/doze/DozeLog$SummaryStats;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/doze/DozeLog$SummaryStats;-><init>(Lcom/android/systemui/doze/DozeLog$1;)V

    aput-object v4, v1, v3

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const-string v1, "init"

    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 105
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/doze/DozeLog;->sKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 107
    .end local v0    # "i":I
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dozing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static traceEmergencyCall()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "emergencyCall"

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sEmergencyCallStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 122
    return-void
.end method

.method public static traceFling(ZZZZ)V
    .locals 2
    .param p0, "expand"    # Z
    .param p1, "aboveThreshold"    # Z
    .param p2, "thresholdNeeded"    # Z
    .param p3, "screenOnFromTouch"    # Z

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " aboveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thresholdNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screenOnFromTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static traceKeyguard(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 144
    if-nez p0, :cond_0

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 147
    :cond_0
    return-void
.end method

.method public static traceKeyguardBouncerChanged(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bouncer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static traceNotificationPulse(J)V
    .locals 2
    .param p0, "instance"    # J

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationPulse instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sNotificationPulseStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 83
    return-void
.end method

.method public static tracePickupPulse(Z)V
    .locals 2
    .param p0, "withinVibrationThreshold"    # Z

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickupPulse withinVibrationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 63
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 65
    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0
.end method

.method public static traceProximityResult(ZJI)V
    .locals 3
    .param p0, "near"    # Z
    .param p1, "millis"    # J
    .param p3, "pulseReason"    # I

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proximityResult reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sProxStats:[[Lcom/android/systemui/doze/DozeLog$SummaryStats;

    aget-object v1, v0, p3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static tracePulseFinish()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 76
    const-string v0, "pulseFinish"

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static tracePulseStart(I)V
    .locals 2
    .param p0, "reason"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseStart reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static traceScreenOff(I)V
    .locals 2
    .param p0, "why"    # I

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOff why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static traceScreenOn()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOn pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 132
    sget-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeLog$SummaryStats;->append()V

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/doze/DozeLog;->sPulsing:Z

    .line 134
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/android/systemui/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/systemui/doze/DozeLog$SummaryStats;

    goto :goto_0
.end method

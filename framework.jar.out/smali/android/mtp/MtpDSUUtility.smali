.class Landroid/mtp/MtpDSUUtility;
.super Ljava/lang/Object;
.source "MtpDSUUtility.java"


# static fields
.field private static final NOT_AVAILABLE:Ljava/lang/String; = "NOT_AVAILABLE"

.field private static final PREFS_KEY_ERRLOG:Ljava/lang/String; = "MtpSWUpgradeReultLog"

.field private static final PREFS_KEY_RESULT:Ljava/lang/String; = "MtpSWUpgradeResult"

.field private static final PREFS_RESULT:Ljava/lang/String; = "MtpSWUpgradeResultPrefFile"

.field private static final TAG:Ljava/lang/String; = "MtpDSUUtility"

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/mtp/MtpDSUUtility;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/mtp/MtpDSUUtility;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public getAppsVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    const-string/jumbo v1, "ro.build.config.version.app"

    const-string v2, "NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "appsVer":Ljava/lang/String;
    return-object v0
.end method

.method public getBasebandVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "bbv":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 254
    const-string v0, "NOT_AVAILABLE"

    .line 256
    :cond_0
    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 7

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "level":I
    const/16 v2, 0x64

    .line 262
    .local v2, "scale":I
    iget-object v3, p0, Landroid/mtp/MtpDSUUtility;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 265
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 267
    :cond_0
    mul-int/lit8 v3, v1, 0x64

    div-int/2addr v3, v2

    return v3
.end method

.method public getBlurVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    const-string/jumbo v1, "ro.build.version.full"

    const-string v2, "NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "blurVer":Ljava/lang/String;
    return-object v0
.end method

.method public getBootloaderVersion()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, -0x1

    .line 172
    const/4 v4, 0x0

    .line 173
    .local v4, "fr":Ljava/io/FileReader;
    const-string v7, "NOT_AVAILABLE"

    .line 174
    .local v7, "ver":Ljava/lang/String;
    const-string v0, "MBM_VERSION :"

    .line 175
    .local v0, "BL_START":Ljava/lang/String;
    const-string v1, "BL_VERSION :"

    .line 177
    .local v1, "MBM_START":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/proc/bootinfo"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 180
    .local v6, "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 181
    const-string v8, "BL_VERSION :"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eq v8, v9, :cond_3

    .line 182
    move-object v7, v6

    .line 192
    :cond_1
    :goto_0
    if-eqz v5, :cond_5

    .line 194
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 199
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fr":Ljava/io/FileReader;
    .end local v6    # "s":Ljava/lang/String;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_1
    return-object v7

    .line 184
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v8, "MBM_VERSION :"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eq v8, v9, :cond_0

    .line 185
    move-object v7, v6

    .line 186
    goto :goto_0

    .line 195
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 196
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .line 189
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "s":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 190
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v8, "MtpDSUUtility"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getKernelVersion met exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    if-eqz v4, :cond_2

    .line 194
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 195
    :catch_2
    move-exception v8

    goto :goto_1

    .line 192
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_4

    .line 194
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 196
    :cond_4
    :goto_4
    throw v8

    .line 195
    :catch_3
    move-exception v9

    goto :goto_4

    .line 192
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 189
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_5
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method public getBuildId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    const-string/jumbo v1, "ro.build.id"

    const-string v2, "NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "bldId":Ljava/lang/String;
    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    const-string/jumbo v1, "ro.carrier"

    const-string v2, "NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "devId":Ljava/lang/String;
    iget-object v2, p0, Landroid/mtp/MtpDSUUtility;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 214
    .local v1, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_0

    .line 216
    const-string v0, "NOT_AVAILABLE"

    .line 218
    :cond_0
    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 248
    .local v0, "model":Ljava/lang/String;
    return-object v0
.end method

.method public getDeviceRootedState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    const-string/jumbo v1, "persist.qe"

    const-string/jumbo v2, "unknow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "qe":Ljava/lang/String;
    const-string/jumbo v1, "qe 0/1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "qe 0/0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    const-string/jumbo v1, "not_rooted"

    .line 208
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "rooted"

    goto :goto_0
.end method

.method public getFingerPrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 228
    .local v0, "fingerPrint":Ljava/lang/String;
    return-object v0
.end method

.method public getInformation(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 100
    .local v0, "s":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getBuildId()Ljava/lang/String;

    move-result-object v0

    .line 103
    goto :goto_0

    .line 106
    :pswitch_1
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getBootloaderVersion()Ljava/lang/String;

    move-result-object v0

    .line 107
    goto :goto_0

    .line 110
    :pswitch_2
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getFingerPrint()Ljava/lang/String;

    move-result-object v0

    .line 111
    goto :goto_0

    .line 114
    :pswitch_3
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getBlurVersion()Ljava/lang/String;

    move-result-object v0

    .line 115
    goto :goto_0

    .line 118
    :pswitch_4
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getAppsVersion()Ljava/lang/String;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 122
    :pswitch_5
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    .line 123
    goto :goto_0

    .line 126
    :pswitch_6
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 127
    goto :goto_0

    .line 130
    :pswitch_7
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getDeviceRootedState()Ljava/lang/String;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 134
    :pswitch_8
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getBasebandVersion()Ljava/lang/String;

    move-result-object v0

    .line 135
    goto :goto_0

    .line 138
    :pswitch_9
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getKernelVersion()Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 142
    :pswitch_a
    invoke-virtual {p0}, Landroid/mtp/MtpDSUUtility;->getMediaVersion()Ljava/lang/String;

    move-result-object v0

    .line 143
    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x8001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getKernelVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "fr":Ljava/io/FileReader;
    const-string v4, "NOT_AVAILABLE"

    .line 155
    .local v4, "ver":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/proc/version"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 161
    if-eqz v3, :cond_2

    .line 163
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 168
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :cond_0
    :goto_0
    return-object v4

    .line 164
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 165
    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 158
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "MtpDSUUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getKernelVersion met exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    if-eqz v2, :cond_0

    .line 163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 164
    :catch_2
    move-exception v5

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 163
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 165
    :cond_1
    :goto_3
    throw v5

    .line 164
    :catch_3
    move-exception v6

    goto :goto_3

    .line 161
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 158
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :cond_2
    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_0
.end method

.method public getMediaVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    const-string/jumbo v1, "ro.build.config.version.media"

    const-string v2, "NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "mediaVer":Ljava/lang/String;
    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    const-string/jumbo v1, "ro.product.name"

    const-string v2, "NOT_AVAILABLE"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getUpgradeLogFile()Ljava/lang/String;
    .locals 8

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "ret":Ljava/lang/String;
    sget-object v5, Landroid/mtp/MtpDSUUtility;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 81
    :try_start_0
    const-string v1, "MtpSWUpgradeReultLog"

    .line 82
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/MtpDSUUtility;->mContext:Landroid/content/Context;

    const-string v6, "MtpSWUpgradeResultPrefFile"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 85
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    :try_start_1
    const-string v4, "MtpSWUpgradeReultLog"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const-string v4, "MtpSWUpgradeReultLog"

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "MtpSWUpgradeReultLog"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 94
    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MtpDSUUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUpgradeLogFile met exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public getUpgradeResult()I
    .locals 8

    .prologue
    .line 60
    const/16 v2, 0x64

    .line 61
    .local v2, "ret":I
    sget-object v5, Landroid/mtp/MtpDSUUtility;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 62
    :try_start_0
    const-string v1, "MtpSWUpgradeResult"

    .line 63
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/MtpDSUUtility;->mContext:Landroid/content/Context;

    const-string v6, "MtpSWUpgradeResultPrefFile"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 66
    .local v3, "sp":Landroid/content/SharedPreferences;
    if-eqz v3, :cond_0

    :try_start_1
    const-string v4, "MtpSWUpgradeResult"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const-string v4, "MtpSWUpgradeResult"

    const/16 v6, 0x64

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "MtpSWUpgradeResult"

    invoke-interface {v4, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 75
    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MtpDSUUtility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUpgradeResult met exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public setUpgradeResult(ILjava/lang/String;)V
    .locals 6
    .param p1, "err"    # I
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 46
    sget-object v3, Landroid/mtp/MtpDSUUtility;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDSUUtility;->mContext:Landroid/content/Context;

    const-string v4, "MtpSWUpgradeResultPrefFile"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MtpSWUpgradeResult"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    if-eqz p2, :cond_0

    .line 52
    const-string v2, "MtpSWUpgradeReultLog"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    monitor-exit v3

    .line 56
    return-void

    .line 55
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

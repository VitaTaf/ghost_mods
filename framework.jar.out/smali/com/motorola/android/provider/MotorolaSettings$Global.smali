.class public final Lcom/motorola/android/provider/MotorolaSettings$Global;
.super Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/MotorolaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NETWORK_NAME:Ljava/lang/String; = "display_network_name"

.field public static final DOMESTIC_CALL_GUARD:Ljava/lang/String; = "domestic_call_guard"

.field public static final DOMESTIC_CALL_GUARD_FORCED:Ljava/lang/String; = "domestic_call_guard_forced"

.field public static final DOMESTIC_DATA_ROAMING:Ljava/lang/String; = "domestic_data_roaming"

.field public static final DOMESTIC_DATA_ROAMING_FORCED:Ljava/lang/String; = "domestic_data_roaming_forced"

.field public static final DOMESTIC_DATA_ROAMING_GUARD:Ljava/lang/String; = "domestic_data_roaming_guard"

.field public static final DOMESTIC_DATA_ROAMING_GUARD_FORCED:Ljava/lang/String; = "domestic_data_roaming_guard_forced"

.field public static final DOMESTIC_DATA_ROAMING_UI:Ljava/lang/String; = "domestic_data_roaming_ui"

.field public static final DOMESTIC_VOICE_ROAMING:Ljava/lang/String; = "domestic_voice_roaming"

.field public static final DOMESTIC_VOICE_ROAMING_FORCED:Ljava/lang/String; = "domestic_voice_roaming_forced"

.field public static final FTR_35605_SPRINT_ROAMING_ENABLED:Ljava/lang/String; = "ftr_35605_sprint_roaming_enabled"

.field public static final GSM_DATA_GUARD:Ljava/lang/String; = "gsm_data_guard"

.field public static final GSM_DATA_GUARD_FORCED:Ljava/lang/String; = "gsm_data_guard_forced"

.field public static final GSM_DATA_ROAMING:Ljava/lang/String; = "gsm_data_roaming"

.field public static final GSM_DATA_ROAMING_FORCED:Ljava/lang/String; = "gsm_data_roaming_forced"

.field public static final GSM_DATA_ROAMING_UI:Ljava/lang/String; = "gsm_data_roaming_ui"

.field public static final GSM_OUTGOING_SMS_GUARD:Ljava/lang/String; = "gsm_outgoing_sms_guard"

.field public static final GSM_OUTGOING_SMS_GUARD_FORCED:Ljava/lang/String; = "gsm_outgoing_sms_guard_forced"

.field public static final GSM_VOICE_ROAMING_GUARD:Ljava/lang/String; = "gsm_voice_roaming_guard"

.field public static final GSM_VOICE_ROAMING_GUARD_FORCED:Ljava/lang/String; = "gsm_voice_roaming_guard_forced"

.field public static final HFA_RUNNING:Ljava/lang/String; = "hfa_running"

.field public static final INTERNATIONAL_CALL_GUARD:Ljava/lang/String; = "international_call_guard"

.field public static final INTERNATIONAL_CALL_GUARD_FORCED:Ljava/lang/String; = "international_call_guard_forced"

.field public static final INTERNATIONAL_DATA_ROAMING:Ljava/lang/String; = "international_data_roaming"

.field public static final INTERNATIONAL_DATA_ROAMING_FORCED:Ljava/lang/String; = "international_data_roaming_forced"

.field public static final INTERNATIONAL_DATA_ROAMING_GUARD:Ljava/lang/String; = "international_data_roaming_guard"

.field public static final INTERNATIONAL_DATA_ROAMING_GUARD_FORCED:Ljava/lang/String; = "international_data_roaming_guard_forced"

.field public static final INTERNATIONAL_DATA_ROAMING_UI:Ljava/lang/String; = "international_data_roaming_ui"

.field public static final INTERNATIONAL_OUTGOINGSMS_GUARD:Ljava/lang/String; = "international_outgoingsms_guard"

.field public static final INTERNATIONAL_OUTGOINGSMS_GUARD_FORCED:Ljava/lang/String; = "international_outgoingsms_guard_forced"

.field public static final INTERNATIONAL_VOICE_ROAMING:Ljava/lang/String; = "international_voice_roaming"

.field public static final INTERNATIONAL_VOICE_ROAMING_FORCED:Ljava/lang/String; = "international_voice_roaming_forced"

.field public static final MOBILE_DATA_CONFIRMATION_CHECKED:Ljava/lang/String; = "mobile_data_confirmation_checked"

.field public static final MULTI_SIM_SIM1_COLOR:Ljava/lang/String; = "multi_sim_sim1_color"

.field public static final MULTI_SIM_SIM1_NAME:Ljava/lang/String; = "multi_sim_sim1_name"

.field public static final MULTI_SIM_SIM2_COLOR:Ljava/lang/String; = "multi_sim_sim2_color"

.field public static final MULTI_SIM_SIM2_NAME:Ljava/lang/String; = "multi_sim_sim2_name"

.field public static final MUSIC_ACTIVE_MS:Ljava/lang/String; = "music_active_ms"

.field public static final PREFERRED_MNC_MCC:Ljava/lang/String; = "preferred_mnc_mcc"

.field public static final SETTING_CFU_VIEW_SHOW:Ljava/lang/String; = "radio_info_query_cfu_view_show"

.field public static final SETTING_CHECK_CFU_POWERON:Ljava/lang/String; = "check_cfu_poweron"

.field public static final SPRINT_N11_FEATURE_ENABLE:Ljava/lang/String; = "sprint_N11_feature_enabled"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.mot_settings_global_version"

.field public static final VERIZON_CONFIG_VER:Ljava/lang/String; = "verizon_config_ver"

.field public static final WIFI_AVOID_BAD_CONNECTION_ENABLED:Ljava/lang/String; = "wifi_avoid_bad_connection_enabled"

.field public static final WIFI_BT_CONFIRMATION_CHECKED:Ljava/lang/String; = "wifi_bt_confirmation_checked"

.field private static sNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 2172
    const-string v0, "content://com.motorola.android.providers.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 2175
    new-instance v0, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    const-string/jumbo v1, "sys.mot_settings_global_version"

    sget-object v2, Lcom/motorola/android/provider/MotorolaSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "GET_global"

    const-string v4, "PUT_global"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings$Global;->sNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1847
    invoke-direct {p0}, Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2410
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2411
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2412
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2415
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 2382
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2384
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 2386
    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .line 2385
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 2386
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2273
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2276
    :catch_0
    move-exception v0

    .line 2277
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 2245
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2247
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 2249
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 2248
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 2249
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 2456
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2458
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2459
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 2461
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2467
    .end local v1    # "valArray":[Ljava/lang/String;
    :goto_0
    return v2

    .line 2462
    .restart local v1    # "valArray":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2467
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 2342
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2344
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 2345
    :catch_0
    move-exception v0

    .line 2346
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 2313
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2316
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 2320
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 2316
    goto :goto_0

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2189
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 2195
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings$Global;->sNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2227
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 2435
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 2295
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 2487
    const-string v0, ""

    .line 2488
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2489
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2491
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2492
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2496
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 2497
    const-string v2, ""

    .line 2498
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 2499
    aget-object v2, v4, v1

    .line 2501
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2504
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2507
    if-eqz v4, :cond_3

    .line 2508
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 2509
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2512
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 2364
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2207
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2217
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings$Global;->sNameValueCache:Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.class public final Lcom/motorola/android/provider/MotorolaSettings;
.super Ljava/lang/Object;
.source "MotorolaSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/MotorolaSettings$Global;,
        Lcom/motorola/android/provider/MotorolaSettings$Secure;,
        Lcom/motorola/android/provider/MotorolaSettings$System;,
        Lcom/motorola/android/provider/MotorolaSettings$NameValueCache;,
        Lcom/motorola/android/provider/MotorolaSettings$NameValueTable;,
        Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.android.providers.settings"

.field public static final AUTH_DEVICES_ENABLED:Ljava/lang/String; = "auth_devices_enabled"

.field public static final AUTH_DEVICE_LIST:Ljava/lang/String; = "auth_device_list"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field public static final CCC_DEVICE_ID:Ljava/lang/String; = "ccc.did"

.field public static final CCC_DEVICE_SECRET:Ljava/lang/String; = "ccc.dsec"

.field public static final CCC_DEVICE_SESSION_TOKEN:Ljava/lang/String; = "ccc.sst"

.field private static final DEBUG:Z = false

.field public static final DOUBLE_TAP:Ljava/lang/String; = "double_tap"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_ALLOW_ACCESS_ONLY_FOR_THIS_TRIP:Ljava/lang/String; = "flag_allow_access_only_for_this_trip"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_TALKBACK_ON:Ljava/lang/String; = "is_talkback_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_TYPE:Ljava/lang/String; = "lock_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOBILE_DATA_COVERAGE_CONDITIONER:Ljava/lang/String; = "mobile_data_coverage_conditioner"

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NFC_AUTH_ENABLED:Ljava/lang/String; = "nfc_auth_enabled"

.field public static final NFC_AUTH_FAILED_ATTEMPTS:Ljava/lang/String; = "nfc_auth_failed_attempts"

.field public static final PDP_WATCHDOG_PING_DEADLINE:Ljava/lang/String; = "pdp_watchdog_ping_deadline"

.field public static final POWER_SAVER_ENABLED:Ljava/lang/String; = "power_saver_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_ALWAYS_ON_VOICE:Ljava/lang/String; = "privacy_always_on_voice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_HELP_IMPROVE_PRODUCTS:Ljava/lang/String; = "privacy_help_improve_products"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_MOTO_MARKETING:Ljava/lang/String; = "privacy_moto_marketing"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_OTA_UPDATE:Ljava/lang/String; = "privacy_ota_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_SMART_ACTIONS:Ljava/lang/String; = "privacy_smart_actions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_SMART_NOTIFICATIONS_CHROME:Ljava/lang/String; = "privacy_smart_notifications_chrome"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIVACY_SUPPORT_DEVICE:Ljava/lang/String; = "privacy_support_device"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESTRICT_BG_DATA_ON_LOW_COVERAGE:Ljava/lang/String; = "restrict_bg_data_on_low_coverage"

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field public static final SN_AON:Ljava/lang/String; = "sn_aon"

.field public static final SN_AUTO_SELECT_INSTALLED:Ljava/lang/String; = "sn_auto_select_installed"

.field public static final SN_NIGHT_BEGIN:Ljava/lang/String; = "sn_night_begin"

.field public static final SN_NIGHT_END:Ljava/lang/String; = "sn_night_end"

.field public static final SN_NIGHT_OFF:Ljava/lang/String; = "sn_night_off"

.field public static final SN_PRIVACY:Ljava/lang/String; = "sn_privacy"

.field public static final SN_WHITE_LIST:Ljava/lang/String; = "sn_white_list"

.field private static final TAG:Ljava/lang/String; = "MotorolaSettings"

.field public static final TASK_BUTTON_PRESS_BEHAVIOR:Ljava/lang/String; = "task_button_press_behavior"

.field public static final TSB_DISABLE_FLAGS:Ljava/lang/String; = "tsb_disable_flags"

.field public static final TTS_CALLER_ID_READOUT:Ljava/lang/String; = "tts_caller_id_readout"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_OFFLOAD_FLAG:Ljava/lang/String; = "wifi_offload_flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 252
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_white_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_privacy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_night_off"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_night_begin"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_night_end"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_aon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "sn_auto_select_installed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_support_device"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_help_improve_products"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_ota_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_moto_marketing"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_smart_actions"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_smart_notifications_chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "privacy_always_on_voice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "double_tap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "is_talkback_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tts_caller_id_readout"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_offload_flag"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "power_saver_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "flag_allow_access_only_for_this_trip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "ccc.did"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "ccc.sst"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "ccc.dsec"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "auth_devices_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "auth_device_list"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "nfc_auth_failed_attempts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "nfc_auth_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "tsb_disable_flags"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "task_button_press_behavior"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "restrict_bg_data_on_low_coverage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data_coverage_conditioner"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1847
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
    .line 409
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;

    invoke-direct {v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 415
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
    .line 399
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 403
    .end local p2    # "def":F
    :cond_0
    :goto_0
    return p2

    .line 402
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 403
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
    .line 361
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 364
    :catch_0
    move-exception v0

    .line 365
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
    .line 350
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 354
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 353
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/NumberFormatException;
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
    .line 386
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
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
    .line 374
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 381
    .local v2, "value":J
    :goto_0
    return-wide v2

    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .line 377
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 311
    :cond_0
    const-string v0, "MotorolaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such table to get this name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStringArray(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-static {p0, p1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "concatValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 436
    const/4 v1, 0x0

    .line 438
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 343
    :cond_0
    const-string v0, "MotorolaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such table to get this URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 420
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 370
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 395
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    sget-object v0, Lcom/motorola/android/provider/MotorolaSettings;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {p0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 328
    :cond_0
    const-string v0, "MotorolaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no such table to put this name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 330
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putStringArray(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    const/4 v5, 0x0

    .line 467
    :goto_0
    return v5

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 457
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 459
    .local v3, "item":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 461
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    .end local v3    # "item":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method

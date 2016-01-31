.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final ACTION_CALL_DISCONNECTED:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_CALL_DISCONNECTED"

.field public static final ACTION_CAP_SENSOR_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_CAP_SENSOR_CHANGE"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.ACTION_CARRIER_SETUP"

.field public static final ACTION_COLD_SIM_DETECTED:Ljava/lang/String; = "com.motorola.intent.action.cold_sim_detected"

.field public static final ACTION_DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

.field public static final ACTION_DATA_CONNECTION_FAILED:Ljava/lang/String; = "android.intent.action.DATA_CONNECTION_FAILED"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION:Ljava/lang/String; = "android.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"

.field public static final ACTION_GET_REAL_DATA_NET_TYPE:Ljava/lang/String; = "com.motorola.android.intent.action.GET_REAL_DATA_NET_TYPE"

.field public static final ACTION_MANAGED_ROAMING_IND:Ljava/lang/String; = "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

.field public static final ACTION_NETWORK_COVERAGE_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_NETWORK_COVERAGE_CHANGE"

.field public static final ACTION_NETWORK_SET_TIME:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIME"

.field public static final ACTION_NETWORK_SET_TIMEZONE:Ljava/lang/String; = "android.intent.action.NETWORK_SET_TIMEZONE"

.field public static final ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"

.field public static final ACTION_SET_RADIO_CAPABILITY_DONE:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

.field public static final ACTION_SET_RADIO_CAPABILITY_FAILED:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final ACTION_SIGNAL_STRENGTH_CHANGED:Ljava/lang/String; = "android.intent.action.SIG_STR"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_STATE_REJECT_CODE:Ljava/lang/String; = "com.motorola.intent.action.GET_REJECT_CODE"

.field public static final ACTION_SUBINFO_CONTENT_CHANGE:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

.field public static final ACTION_SUBINFO_RECORD_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field public static final ACTION_UNSOL_OEM_HOOK_RAW:Ljava/lang/String; = "com.motorola.android.intent.action.ACTION_UNSOL_OEM_HOOK_RAW"

.field public static final EXTRA_BGDATA_RESTRICTED:Ljava/lang/String; = "bgdata_restricted"

.field public static final EXTRA_CAP_SENSOR_BINS:Ljava/lang/String; = "bins"

.field public static final EXTRA_CAP_SENSOR_GRIP:Ljava/lang/String; = "grip"

.field public static final EXTRA_CAP_SENSOR_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_COVERAGE_TAG:Ljava/lang/String; = "tag"

.field public static final EXTRA_CS_COVERAGE_BAND:Ljava/lang/String; = "band"

.field public static final EXTRA_CS_COVERAGE_CELLCOUNT:Ljava/lang/String; = "cellcount"

.field public static final EXTRA_CS_COVERAGE_CELLID:Ljava/lang/String; = "cellid"

.field public static final EXTRA_CS_COVERAGE_CHANNEL:Ljava/lang/String; = "channel"

.field public static final EXTRA_CS_COVERAGE_LOW:Ljava/lang/String; = "cs_low"

.field public static final EXTRA_CS_COVERAGE_QRADIO:Ljava/lang/String; = "qradio"

.field public static final EXTRA_CS_COVERAGE_RAT:Ljava/lang/String; = "rat"

.field public static final EXTRA_CS_COVERAGE_RATCOUNT:Ljava/lang/String; = "ratcount"

.field public static final EXTRA_CS_COVERAGE_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_GRIP_END:Ljava/lang/String; = "end"

.field public static final EXTRA_GRIP_START:Ljava/lang/String; = "start"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_PS_COVERAGE_LOW:Ljava/lang/String; = "ps_low"

.field public static final EXTRA_RADIO_ACCESS_FAMILY:Ljava/lang/String; = "rafs"

.field public static final EXTRA_REG_REJECT_CODE:Ljava/lang/String; = "rejectCode"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final EXTRA_VOICE_CALL:Ljava/lang/String; = "voicecall"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

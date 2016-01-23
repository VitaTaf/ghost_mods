.class public Lcom/android/settings/sim/addon/DDSUpdaterService;
.super Landroid/app/IntentService;
.source "DDSUpdaterService.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/sim/addon/DDSUpdaterService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/sim/addon/DDSUpdaterService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/addon/DDSUpdaterService;->handler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public static getAutoSwitchDdsTo(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-string v2, "dss_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 160
    .local v1, "ddsPref":Landroid/content/SharedPreferences;
    const-string v2, "dss_sub"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "dds":I
    return v0
.end method

.method public static isAutoSwitchStarted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v2, "dss_prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    .local v0, "ddsPref":Landroid/content/SharedPreferences;
    const-string v2, "dss_status"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    .local v1, "started":Z
    return v1
.end method

.method static sendStatus(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I
    .param p2, "subId"    # I

    .prologue
    .line 185
    sget-boolean v1, Lcom/android/settings/sim/addon/DDSUpdaterService;->DBG:Z

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStatus status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.intent.action.DDS_DATA_SWITCH_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "statusIntent":Landroid/content/Intent;
    const-string v1, "dss_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static setAutoSwitchInfo(Landroid/content/Context;IZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "status"    # Z

    .prologue
    .line 130
    sget-boolean v2, Lcom/android/settings/sim/addon/DDSUpdaterService;->DBG:Z

    if-eqz v2, :cond_0

    .line 131
    sget-object v2, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutoSwitchInfo: subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const-string v2, "dss_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    .local v0, "dssPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "dss_sub"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v2, "dss_status"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-void
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 110
    sget-boolean v1, Lcom/android/settings/sim/addon/DDSUpdaterService;->DBG:Z

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDss is called for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/settings/sim/addon/DDSUpdaterService;->setAutoSwitchInfo(Landroid/content/Context;IZ)V

    .line 115
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 116
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 118
    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Lcom/android/settings/sim/addon/DDSUpdaterService;->sendStatus(Landroid/content/Context;II)V

    .line 119
    return-void
.end method

.method private showToast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/sim/addon/DDSUpdaterService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/sim/addon/DDSUpdaterService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/sim/addon/DDSUpdaterService$1;-><init>(Lcom/android/settings/sim/addon/DDSUpdaterService;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    return-void
.end method

.method public static startDDSUpdaterService(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 198
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v3

    if-ne p1, v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v2

    .line 201
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/sim/addon/DDSUpdaterService;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intentService":Landroid/content/Intent;
    const-string v3, "com.motorola.intent.action.DDS_DATA_SWITCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v3, "subscription"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, "errorMsg":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 56
    :cond_0
    const-string v1, "Intent is NULL"

    .line 59
    :cond_1
    const-string v5, "subscription"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "subId":I
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    const-string v1, "Invalid subId"

    .line 65
    :cond_2
    if-eqz v1, :cond_3

    .line 66
    sget-object v5, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p0, v7, v6}, Lcom/android/settings/sim/addon/DDSUpdaterService;->sendStatus(Landroid/content/Context;II)V

    .line 100
    :goto_0
    return-void

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.motorola.intent.action.DDS_DATA_SWITCH"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 73
    invoke-static {p0}, Lcom/android/settings/sim/addon/DDSUpdaterService;->isAutoSwitchStarted(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    const v5, 0x7f090a65

    invoke-direct {p0, p0, v5}, Lcom/android/settings/sim/addon/DDSUpdaterService;->showToast(Landroid/content/Context;I)V

    .line 75
    invoke-static {p0, v7, v6}, Lcom/android/settings/sim/addon/DDSUpdaterService;->sendStatus(Landroid/content/Context;II)V

    goto :goto_0

    .line 79
    :cond_4
    const v5, 0x7f09097b

    invoke-direct {p0, p0, v5}, Lcom/android/settings/sim/addon/DDSUpdaterService;->showToast(Landroid/content/Context;I)V

    .line 81
    const/4 v3, 0x0

    .line 82
    .local v3, "swstarted":Z
    invoke-static {p0, v2, v8}, Lcom/android/settings/sim/addon/DDSUpdaterService;->setAutoSwitchInfo(Landroid/content/Context;IZ)V

    .line 83
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/sim/addon/DDSUpdaterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 85
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->setNetworkTypeAutoSwitch(I)Z

    move-result v3

    .line 86
    sget-boolean v5, Lcom/android/settings/sim/addon/DDSUpdaterService;->DBG:Z

    if-eqz v5, :cond_5

    .line 87
    sget-object v5, Lcom/android/settings/sim/addon/DDSUpdaterService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNetworkTypeAutoSwitch to DSS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "started: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_5
    if-eqz v3, :cond_6

    .line 90
    invoke-static {p0, v8, v2}, Lcom/android/settings/sim/addon/DDSUpdaterService;->sendStatus(Landroid/content/Context;II)V

    goto :goto_0

    .line 92
    :cond_6
    invoke-direct {p0, p0, v2}, Lcom/android/settings/sim/addon/DDSUpdaterService;->setDefaultDataSubId(Landroid/content/Context;I)V

    goto :goto_0

    .line 94
    .end local v3    # "swstarted":Z
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v5, "com.motorola.intent.action.DDS_SET_DATA_SUB"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 95
    invoke-direct {p0, p0, v2}, Lcom/android/settings/sim/addon/DDSUpdaterService;->setDefaultDataSubId(Landroid/content/Context;I)V

    goto :goto_0

    .line 97
    :cond_8
    invoke-static {p0, v7, v6}, Lcom/android/settings/sim/addon/DDSUpdaterService;->sendStatus(Landroid/content/Context;II)V

    goto :goto_0
.end method

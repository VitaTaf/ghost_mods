.class public final Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAutoswitchReceiver.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->TAG:Ljava/lang/String;

    .line 20
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    sget-boolean v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->DBG:Z

    if-eqz v7, :cond_0

    .line 28
    sget-object v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    const-string v7, "com.motorola.intent.action.SUBSCRIPTION_NETWORKTYPE_AUTOSWITCH"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 31
    invoke-static {p1}, Lcom/android/settings/sim/addon/DDSUpdaterService;->isAutoSwitchStarted(Landroid/content/Context;)Z

    move-result v4

    .line 32
    .local v4, "nwAutoSwitchStarted":Z
    invoke-static {p1}, Lcom/android/settings/sim/addon/DDSUpdaterService;->getAutoSwitchDdsTo(Landroid/content/Context;)I

    move-result v5

    .line 33
    .local v5, "setDdsToSub":I
    sget-boolean v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->DBG:Z

    if-eqz v7, :cond_1

    .line 34
    sget-object v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: : isAutoSwitchStarted = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": set DSS to = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    if-eqz v4, :cond_5

    if-eq v5, v10, :cond_5

    .line 39
    const-string v7, "status"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 42
    .local v6, "status":I
    sget-boolean v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->DBG:Z

    if-eqz v7, :cond_2

    .line 43
    sget-object v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSimTelephonyIntents.EXTRA_STATUS = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2
    sget-object v7, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->SUCCESS:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->FAIL:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->ordinal()I

    move-result v7

    if-eq v6, v7, :cond_3

    sget-object v7, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->TIMEOUT:Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;

    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/MSimTelephonyIntents$StatusType;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 49
    :cond_3
    sget-boolean v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->DBG:Z

    if-eqz v7, :cond_4

    .line 50
    sget-object v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling setDds to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, "appContext":Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/android/settings/sim/addon/DDSUpdaterService;

    invoke-direct {v3, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v3, "intentService":Landroid/content/Intent;
    const-string v7, "com.motorola.intent.action.DDS_SET_DATA_SUB"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v7, "subscription"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "appContext":Landroid/content/Context;
    .end local v3    # "intentService":Landroid/content/Intent;
    .end local v4    # "nwAutoSwitchStarted":Z
    .end local v5    # "setDdsToSub":I
    .end local v6    # "status":I
    :cond_5
    :goto_0
    return-void

    .line 58
    .restart local v1    # "appContext":Landroid/content/Context;
    .restart local v3    # "intentService":Landroid/content/Intent;
    .restart local v4    # "nwAutoSwitchStarted":Z
    .restart local v5    # "setDdsToSub":I
    .restart local v6    # "status":I
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/settings/sim/addon/NetworkAutoswitchReceiver;->TAG:Ljava/lang/String;

    const-string v8, "Failed to start DDSUpdaterService "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

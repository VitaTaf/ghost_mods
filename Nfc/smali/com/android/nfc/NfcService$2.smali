.class Lcom/android/nfc/NfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0

    .prologue
    .line 3200
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3204
    .local v0, "action":Ljava/lang/String;
    const-string v6, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3207
    new-instance v4, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v5, v8, [Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3280
    :cond_0
    :goto_0
    return-void

    .line 3208
    :cond_1
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3212
    :cond_2
    const/4 v2, 0x1

    .line 3213
    .local v2, "screenState":I
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3214
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v4, v9, :cond_3

    .line 3216
    const/4 v2, 0x1

    .line 3219
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcUnlockManager;->hasUnlockHandler()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3220
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Landroid/hardware/SensorManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDetectListener:Landroid/hardware/SensorEventListener;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Landroid/hardware/SensorEventListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNFCDetect:Landroid/hardware/Sensor;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Landroid/hardware/Sensor;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 3239
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3240
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 3242
    :cond_5
    new-instance v4, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3223
    :cond_6
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3224
    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Landroid/hardware/SensorManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mNfcDetectListener:Landroid/hardware/SensorEventListener;
    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Landroid/hardware/SensorEventListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 3225
    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_8

    move v2, v4

    .line 3227
    :goto_2
    if-ne v2, v4, :cond_7

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v5, v9, :cond_4

    .line 3228
    :cond_7
    if-ne v2, v4, :cond_4

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v5, v4, :cond_4

    goto/16 :goto_0

    :cond_8
    move v2, v5

    .line 3225
    goto :goto_2

    .line 3231
    :cond_9
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3232
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v4, v5, :cond_0

    .line 3233
    const/4 v2, 0x3

    goto :goto_1

    .line 3243
    .end local v2    # "screenState":I
    :cond_a
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3244
    const-string v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3247
    .local v1, "isAirplaneModeOn":Z
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isAirplaneModeOn()Z

    move-result v5

    if-ne v1, v5, :cond_0

    .line 3250
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v5, :cond_0

    .line 3253
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "airplane_override"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3254
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3255
    if-eqz v1, :cond_b

    .line 3256
    new-instance v5, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v5, v6}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v6, v9, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3259
    :cond_b
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "nfc_on"

    # getter for: Lcom/android/nfc/NfcService;->sNfcOnOob:Z
    invoke-static {}, Lcom/android/nfc/NfcService;->access$200()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3260
    new-instance v4, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3262
    .end local v1    # "isAirplaneModeOn":Z
    :cond_c
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3263
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3264
    .local v3, "userId":I
    monitor-enter p0

    .line 3265
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # setter for: Lcom/android/nfc/NfcService;->mUserId:I
    invoke-static {v4, v3}, Lcom/android/nfc/NfcService;->access$3302(Lcom/android/nfc/NfcService;I)I

    .line 3266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3267
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v6}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    .line 3268
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_d

    .line 3269
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v6}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 3272
    :cond_d
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v4, v5, :cond_0

    .line 3273
    const/4 v2, 0x2

    .line 3274
    .restart local v2    # "screenState":I
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_e

    .line 3275
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    # getter for: Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;
    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 3277
    :cond_e
    new-instance v4, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v5, v9, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3266
    .end local v2    # "screenState":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

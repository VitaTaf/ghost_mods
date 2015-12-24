.class Lcom/android/server/accounts/AccountManagerService$12;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->initFrpChecking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    .prologue
    .line 3590
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 3592
    const/4 v3, 0x0

    .line 3593
    .local v3, "frp":Z
    const/4 v6, 0x0

    .line 3594
    .local v6, "o":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3596
    .local v4, "m":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v7, "com.google.android.gms.auth.frp.FrpClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3597
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 3598
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService;->access$1800(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3599
    const-string v7, "isChallengeSupported"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 3600
    .local v5, "mm":Ljava/lang/reflect/Method;
    const-string v7, "isChallengeRequired"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 3601
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3602
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    .line 3619
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "mm":Ljava/lang/reflect/Method;
    .end local v6    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    monitor-enter v8

    .line 3620
    :try_start_1
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # setter for: Lcom/android/server/accounts/AccountManagerService;->mFrpClient:Ljava/lang/Object;
    invoke-static {v7, v6}, Lcom/android/server/accounts/AccountManagerService;->access$2402(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3621
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # setter for: Lcom/android/server/accounts/AccountManagerService;->mIsChallengRequiredMethod:Ljava/lang/reflect/Method;
    invoke-static {v7, v4}, Lcom/android/server/accounts/AccountManagerService;->access$2502(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 3622
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # setter for: Lcom/android/server/accounts/AccountManagerService;->mIsChallengeRequired:Z
    invoke-static {v7, v3}, Lcom/android/server/accounts/AccountManagerService;->access$2602(Lcom/android/server/accounts/AccountManagerService;Z)Z

    .line 3623
    if-nez v3, :cond_1

    .line 3624
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3633
    :goto_1
    return-void

    .line 3604
    :catch_0
    move-exception v2

    .line 3608
    .local v2, "e":Ljava/lang/Throwable;
    :goto_2
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FrpClient unavailable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    const/4 v6, 0x0

    .line 3610
    .restart local v6    # "o":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 3618
    goto :goto_0

    .line 3611
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v6    # "o":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 3616
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FrpClient exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    const/4 v3, 0x1

    goto :goto_0

    .line 3626
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3628
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v8, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mMessageHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;
    invoke-static {v10}, Lcom/android/server/accounts/AccountManagerService;->access$1900(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/accounts/AccountManagerService$SettingsObserver;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Handler;)V

    # setter for: Lcom/android/server/accounts/AccountManagerService;->mSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v7, v8}, Lcom/android/server/accounts/AccountManagerService;->access$2702(Lcom/android/server/accounts/AccountManagerService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 3630
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService;->access$1800(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "user_setup_complete"

    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService$12;->this$0:Lcom/android/server/accounts/AccountManagerService;

    # getter for: Lcom/android/server/accounts/AccountManagerService;->mSettingObserver:Landroid/database/ContentObserver;
    invoke-static {v9}, Lcom/android/server/accounts/AccountManagerService;->access$2700(Lcom/android/server/accounts/AccountManagerService;)Landroid/database/ContentObserver;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 3626
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 3611
    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_3

    .line 3604
    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2
.end method

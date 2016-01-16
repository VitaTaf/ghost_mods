.class public Lcom/android/nfc/RegisteredComponentCache;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field private static final PREF_DEFAULT_ACTIVITY:Ljava/lang/String; = "default_activity"

.field private static final TAG:Ljava/lang/String; = "RegisteredComponentCache"


# instance fields
.field final mAction:Ljava/lang/String;

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mMetaDataName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "metaDataName"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    .line 76
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    .line 80
    const-string v1, "NfcServicePrefs"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefs:Landroid/content/SharedPreferences;

    .line 81
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 86
    new-instance v2, Lcom/android/nfc/RegisteredComponentCache$1;

    invoke-direct {v2, p0}, Lcom/android/nfc/RegisteredComponentCache$1;-><init>(Lcom/android/nfc/RegisteredComponentCache;)V

    .line 92
    .local v2, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 94
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "package"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 100
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v8, "sdFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v12, "userFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v9, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private getComponentInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 287
    .local v0, "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    .end local v0    # "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDefault(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->getDefault()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v0, 0x0

    .line 301
    .local v0, "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/RegisteredComponentCache;->getComponentInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2

    .line 305
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->setDefault(Z)V

    .line 307
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-eqz v0, :cond_0

    .line 311
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v1, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_activity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 307
    .end local v1    # "cn":Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public clearDefaults(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 345
    .local v0, "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->setDefault(Z)V

    goto :goto_0

    .line 349
    .end local v0    # "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 167
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    :cond_0
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 183
    .local v0, "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    const-string v2, "RegisteredComponentCache"

    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0    # "component":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "RegisteredComponentCache"

    const-string v1, "RegisteredServicesCache finalized without being closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/RegisteredComponentCache;->close()V

    .line 178
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void
.end method

.method generateComponentsList()V
    .locals 13

    .prologue
    .line 190
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v4, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 191
    .local v4, "currentUser":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 197
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/nfc/RegisteredComponentCache;->mAction:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x80

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 200
    .local v9, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 202
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-virtual {p0, v7, v8, v3}, Lcom/android/nfc/RegisteredComponentCache;->parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 203
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v10, "RegisteredComponentCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to load component info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 193
    .end local v3    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .end local v4    # "currentUser":Landroid/os/UserHandle;
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_1
    move-exception v5

    .line 194
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "RegisteredComponentCache"

    const-string v11, "Could not create user package context"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 205
    .restart local v3    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    .restart local v4    # "currentUser":Landroid/os/UserHandle;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v5

    .line 206
    .local v5, "e":Ljava/io/IOException;
    const-string v10, "RegisteredComponentCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to load component info "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 214
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    monitor-enter p0

    .line 215
    :try_start_2
    iput-object v3, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    .line 216
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefs:Landroid/content/SharedPreferences;

    const-string v11, "default_activity"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "compStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "ci":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 223
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 224
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/nfc/RegisteredComponentCache;->getComponentInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    move-result-object v0

    .line 226
    :cond_2
    if-nez v0, :cond_3

    .line 227
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v11, "default_activity"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v10, p0, Lcom/android/nfc/RegisteredComponentCache;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 216
    .end local v0    # "ci":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v2    # "compStr":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 230
    .restart local v0    # "ci":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .restart local v1    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "compStr":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->setDefault(Z)V

    goto :goto_1
.end method

.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefault()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 321
    .local v0, "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit p0

    .line 326
    .end local v0    # "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :goto_0
    return-object v2

    .line 325
    :cond_1
    monitor-exit p0

    .line 326
    const/4 v2, 0x0

    goto :goto_0

    .line 325
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasDefaults(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 332
    .local v0, "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v2, v0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const/4 v2, 0x1

    monitor-exit p0

    .line 339
    .end local v0    # "c":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :goto_0
    return v2

    .line 338
    :cond_1
    monitor-exit p0

    .line 339
    const/4 v2, 0x0

    goto :goto_0

    .line 338
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method parseComponentInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    iget-object v6, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 240
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 242
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v6, p1, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 243
    if-nez v3, :cond_1

    .line 244
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache;->mMetaDataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :catch_0
    move-exception v7

    .line 250
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v0

    .line 247
    :cond_1
    :try_start_2
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/RegisteredComponentCache;->parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 254
    :cond_2
    return-void
.end method

.method parseTechLists(Landroid/content/res/Resources;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/pm/ResolveInfo;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p5, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v6, 0x2

    .line 259
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 260
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v6, :cond_0

    .line 261
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 268
    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "tagName":Ljava/lang/String;
    if-ne v0, v6, :cond_3

    const-string v5, "tech"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_2
    :goto_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 281
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 282
    return-void

    .line 271
    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    const-string v5, "tech-list"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 273
    .local v2, "size":I
    if-lez v2, :cond_2

    .line 274
    new-array v4, v2, [Ljava/lang/String;

    .line 275
    .local v4, "techs":[Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "techs":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 276
    .restart local v4    # "techs":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    new-instance v5, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    invoke-direct {v5, p4, v4}, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;-><init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V

    invoke-virtual {p5, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.class public final Lcom/motorola/android/provider/CheckinEvent;
.super Lcom/motorola/data/event/api/Event;
.source "CheckinEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "segmentName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "segmentName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/motorola/data/event/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    return-void
.end method

.method private getPackageVersionCode(Ljava/lang/String;)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 97
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    .line 98
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    .line 100
    .local v3, "result":I
    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v2, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    if-nez v1, :cond_0

    .line 106
    const-string v4, "Checkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_1
    return v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Checkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get package info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_1
.end method

.method private getUserId()I
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method


# virtual methods
.method public publish(Ljava/lang/Object;)V
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    instance-of v8, p1, Landroid/content/ContentResolver;

    if-nez v8, :cond_0

    .line 63
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "CheckinEvent:publish input object has to be of type ContentResolver"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    .local v1, "eventName":Ljava/lang/String;
    move-object v8, p1

    .line 69
    check-cast v8, Landroid/content/ContentResolver;

    invoke-virtual {v8}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/motorola/android/provider/CheckinEvent;->setApkName(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, v3}, Lcom/motorola/android/provider/CheckinEvent;->getPackageVersionCode(Ljava/lang/String;)I

    move-result v7

    .line 74
    .local v7, "versionCode":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/android/provider/CheckinEvent;->setApkVerCode(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/motorola/android/provider/CheckinEvent;->getUserId()I

    move-result v6

    .line 78
    .local v6, "userId":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/motorola/android/provider/CheckinEvent;->setUserid(Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "serializedEvent":Ljava/lang/String;
    const-string v8, "Checkin"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "publish the event [tag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " event name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    check-cast p1, Landroid/content/ContentResolver;

    .end local p1    # "object":Ljava/lang/Object;
    const-string v8, "eventTags"

    invoke-static {p1, v5, v1, v4, v8}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    return-void

    .line 84
    .end local v4    # "serializedEvent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 85
    .local v2, "ie":Ljava/lang/IllegalArgumentException;
    const-string v8, "Checkin"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckinEvent:publish Cannot publish event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    throw v2

    .line 87
    .end local v2    # "ie":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "Checkin"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CheckinEvent:publish Cannot publish event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    throw v0
.end method

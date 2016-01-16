.class public Lcom/android/nfc/cardemulation/PreferredServices;
.super Ljava/lang/Object;
.source "PreferredServices.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;,
        Lcom/android/nfc/cardemulation/PreferredServices$Callback;,
        Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PreferredCardEmulationServices"

.field static final paymentDefaultUri:Landroid/net/Uri;

.field static final paymentForegroundUri:Landroid/net/Uri;


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

.field mClearNextTapDefault:Z

.field final mContext:Landroid/content/Context;

.field mForegroundCurrent:Landroid/content/ComponentName;

.field mForegroundRequested:Landroid/content/ComponentName;

.field mForegroundUid:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field mNextTapDefault:Landroid/content/ComponentName;

.field mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "nfc_payment_default_component"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/PreferredServices;->paymentDefaultUri:Landroid/net/Uri;

    .line 59
    const-string v0, "nfc_payment_foreground"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/PreferredServices;->paymentForegroundUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;
    .param p3, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;-><init>(Lcom/android/nfc/cardemulation/PreferredServices;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z

    .line 95
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 97
    iput-object p3, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 98
    iput-object p4, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    .line 99
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;-><init>(Lcom/android/nfc/cardemulation/PreferredServices;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    .line 100
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/nfc/cardemulation/PreferredServices;->paymentDefaultUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/nfc/cardemulation/PreferredServices;->paymentForegroundUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 109
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/PreferredServices;->loadDefaultsFromSettings(I)V

    .line 110
    return-void
.end method


# virtual methods
.method computePreferredForegroundService()V
    .locals 4

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "preferredService":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 169
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    .line 172
    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 176
    :cond_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 177
    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    .line 178
    const/4 v0, 0x1

    .line 183
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    invoke-interface {v2, v1}, Lcom/android/nfc/cardemulation/PreferredServices$Callback;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 188
    :cond_2
    return-void

    .line 179
    :cond_3
    if-nez v1, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 180
    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    .line 181
    const/4 v0, 0x1

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 359
    const-string v0, "Preferred services (in order of importance): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    *** Current preferred foreground service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    *** Current preferred payment service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        Next tap default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        Default for foreground app (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        Default in payment settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->settingsDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        Payment settings allows override: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-boolean v1, v1, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method isForegroundAllowedLocked(Landroid/content/ComponentName;)Z
    .locals 11
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 225
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {p1, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v6

    .line 230
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v5

    .line 233
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-boolean v8, v8, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    if-nez v8, :cond_0

    .line 236
    const-string v8, "payment"

    invoke-virtual {v5, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    const-string v6, "PreferredCardEmulationServices"

    const-string v8, "User doesn\'t allow payment services to be overridden."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 238
    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v2

    .line 247
    .local v2, "otherAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 249
    .local v3, "paymentServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 250
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    .local v0, "aid":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v8, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    .line 252
    .local v4, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v8, "payment"

    iget-object v9, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    const-string v6, "PreferredCardEmulationServices"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is handled by the default payment app, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and the user has not allowed payments to be overridden."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 256
    goto/16 :goto_0
.end method

.method loadDefaultsFromSettings(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, "paymentDefaultChanged":Z
    const/4 v3, 0x0

    .line 132
    .local v3, "paymentPreferForegroundChanged":Z
    iget-object v7, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "nfc_payment_default_component"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 136
    .local v1, "newDefault":Landroid/content/ComponentName;
    :goto_0
    const/4 v4, 0x0

    .line 138
    .local v4, "preferForeground":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "nfc_payment_foreground"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    move v4, v5

    .line 142
    :goto_1
    iget-object v7, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 143
    :try_start_1
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-boolean v8, v8, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    if-eq v4, v8, :cond_5

    move v3, v5

    .line 144
    :goto_2
    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-boolean v4, v5, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    .line 146
    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v1, v5, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->settingsDefault:Landroid/content/ComponentName;

    .line 147
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 148
    const/4 v2, 0x1

    .line 149
    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v1, v5, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    .line 156
    :cond_0
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    if-eqz v2, :cond_1

    .line 159
    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    invoke-interface {v5, v1}, Lcom/android/nfc/cardemulation/PreferredServices$Callback;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 161
    :cond_1
    if-eqz v3, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 164
    :cond_2
    return-void

    .line 135
    .end local v1    # "newDefault":Landroid/content/ComponentName;
    .end local v4    # "preferForeground":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "newDefault":Landroid/content/ComponentName;
    .restart local v4    # "preferForeground":Z
    :cond_4
    move v4, v6

    .line 138
    goto :goto_1

    :cond_5
    move v3, v6

    .line 143
    goto :goto_2

    .line 150
    :cond_6
    if-nez v1, :cond_0

    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 151
    const/4 v2, 0x1

    .line 152
    iget-object v5, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v1, v5, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    goto :goto_3

    .line 156
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 140
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z

    .line 326
    monitor-exit v1

    .line 327
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    .line 344
    const/4 v0, 0x1

    .line 346
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z

    .line 348
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    if-eqz v0, :cond_2

    .line 350
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 352
    :cond_2
    return-void

    .line 348
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServicesUpdated()V
    .locals 4

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->isForegroundAllowedLocked(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string v1, "PreferredCardEmulationServices"

    const-string v3, "Removing foreground preferred service because of conflict."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    .line 212
    const/4 v0, 0x1

    .line 217
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 221
    :cond_1
    return-void

    .line 217
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUidToBackground(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisterForegroundService(I)Z

    .line 321
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->loadDefaultsFromSettings(I)V

    .line 356
    return-void
.end method

.method public registerPreferredForegroundService(Landroid/content/ComponentName;I)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "success":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->isForegroundAllowedLocked(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v1, p0, p2}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 277
    iput p2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    .line 278
    const/4 v0, 0x1

    .line 286
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 290
    :cond_0
    return v0

    .line 280
    :cond_1
    :try_start_1
    const-string v1, "PreferredCardEmulationServices"

    const-string v3, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_2
    const-string v1, "PreferredCardEmulationServices"

    const-string v3, "Requested foreground service conflicts with default payment app."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    .line 194
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 196
    const/4 v0, 0x1

    return v0

    .line 194
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method unregisterForegroundService(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "success":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    if-ne v1, p1, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 298
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    .line 299
    const/4 v0, 0x1

    .line 301
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 305
    :cond_1
    return v0

    .line 301
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisteredPreferredForegroundService(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisterForegroundService(I)Z

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 313
    :cond_0
    const-string v0, "PreferredCardEmulationServices"

    const-string v1, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    goto :goto_0
.end method

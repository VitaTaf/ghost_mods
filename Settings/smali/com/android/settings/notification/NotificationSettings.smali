.class public Lcom/android/settings/notification/NotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettings$Receiver;,
        Lcom/android/settings/notification/NotificationSettings$H;,
        Lcom/android/settings/notification/NotificationSettings$SettingsObserver;,
        Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioEffects:Landroid/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/settings/notification/NotificationSettings$H;

.field private mLockscreen:Lcom/android/settings/notification/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreference:Landroid/preference/Preference;

.field private final mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private mSecure:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 617
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$5;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/notification/NotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    .line 89
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$H;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    .line 90
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    .line 91
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/NotificationSettings$Receiver;-><init>(Lcom/android/settings/notification/NotificationSettings;Lcom/android/settings/notification/NotificationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    .line 304
    new-instance v0, Lcom/android/settings/notification/NotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettings$1;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 588
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/NotificationSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/notification/NotificationSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/NotificationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/NotificationSettings;)Lcom/android/settings/notification/NotificationSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mHandler:Lcom/android/settings/notification/NotificationSettings$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/NotificationSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/NotificationSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSettings;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 243
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 245
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 246
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 248
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 249
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 258
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "NotificationSettings"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    const v4, 0x7f0909d3

    const v3, 0x7f0909d2

    const v2, 0x7f0909d1

    .line 435
    const-string v0, "lock_screen_notifications"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    .line 436
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v0, :cond_0

    .line 437
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: lock_screen_notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 443
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/notification/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateLockscreenNotifications()V

    .line 450
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$4;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->setCallback(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 398
    const-string v0, "notification_pulse"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 399
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 400
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 407
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updatePulse()V

    .line 408
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$3;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 292
    const-string v0, "ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 293
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;

    .line 297
    :cond_0
    const-string v0, "notification_ringtone"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 298
    return-void
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 366
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 367
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 368
    const-string v0, "NotificationSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 377
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateVibrateWhenRinging()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/NotificationSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSettings$2;-><init>(Lcom/android/settings/notification/NotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 207
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 208
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 211
    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 494
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 496
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 510
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 499
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 500
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 501
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0909e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100009

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 231
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 233
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 234
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const v3, 0x104069a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/NotificationSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 239
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 470
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    if-nez v2, :cond_0

    .line 479
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 474
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 475
    .local v0, "allowPrivate":Z
    :goto_1
    if-nez v1, :cond_3

    const v2, 0x7f0909d3

    :goto_2
    iput v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    .line 478
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreen:Lcom/android/settings/notification/DropDownPreference;

    iget v3, p0, Lcom/android/settings/notification/NotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 474
    .end local v0    # "allowPrivate":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 475
    .restart local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0909d1

    goto :goto_2

    :cond_4
    const v2, 0x7f0909d2

    goto :goto_2
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 421
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 430
    :goto_0
    return-void

    .line 425
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "NotificationSettings"

    const-string v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v0    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const v0, 0x108031f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 220
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v0, 0x1080320

    goto :goto_0

    :cond_1
    const v0, 0x108031e

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 224
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/NotificationSettings;->mRingerMode:I

    .line 226
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    .line 325
    if-nez p0, :cond_1

    .line 326
    const-string v0, "NotificationSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    return-object v7

    .line 329
    :cond_1
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 330
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x10404ba

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 333
    const v0, 0x10404b8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 335
    :cond_2
    const/4 v6, 0x0

    .line 337
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 345
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 346
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 355
    :cond_4
    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 341
    :cond_5
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 355
    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 355
    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 390
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v8, 0x108031f

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    .line 119
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 120
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    .line 121
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/notification/NotificationSettings;->mSecure:Z

    .line 123
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 125
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    iput-object v9, p0, Lcom/android/settings/notification/NotificationSettings;->mVibrator:Landroid/os/Vibrator;

    .line 129
    :cond_0
    const v5, 0x7f060025

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->addPreferencesFromResource(I)V

    .line 131
    const-string v5, "sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 132
    .local v4, "sound":Landroid/preference/PreferenceCategory;
    const-string v5, "media_volume"

    const/4 v6, 0x3

    const v7, 0x1080322

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 134
    const-string v5, "alarm_volume"

    const/4 v6, 0x4

    const v7, 0x1080313

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 136
    iget-boolean v5, p0, Lcom/android/settings/notification/NotificationSettings;->mVoiceCapable:Z

    if-eqz v5, :cond_2

    .line 137
    const-string v5, "ring_volume"

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6, v8}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 140
    const-string v5, "notification_volume"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :goto_0
    const-string v5, "notification_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 152
    .local v3, "p":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v6, "audioeffects"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioEffects:Landroid/preference/Preference;

    .line 153
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioEffects:Landroid/preference/Preference;

    if-eqz v5, :cond_1

    .line 154
    const/high16 v5, 0x10000

    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 156
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v6, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioEffects:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    iput-object v9, p0, Lcom/android/settings/notification/NotificationSettings;->mAudioEffects:Landroid/preference/Preference;

    .line 162
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 163
    invoke-direct {p0, v4}, Lcom/android/settings/notification/NotificationSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 165
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 167
    .local v2, "notification":Landroid/preference/PreferenceCategory;
    invoke-direct {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 168
    invoke-direct {p0, v2}, Lcom/android/settings/notification/NotificationSettings;->initLockscreenNotifications(Landroid/preference/PreferenceCategory;)V

    .line 170
    const-string v5, "manage_notification_access"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/NotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingerMode()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.motorola.extensions.settings.DYNAMIC_SOUND_SETTINGS_PREFERENCES"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/motorola/extensions/DynamicPreferences;->addOrOverridePreferences(Landroid/preference/PreferenceScreen;Landroid/content/Intent;)V

    .line 179
    return-void

    .line 142
    .end local v0    # "i":Landroid/content/Intent;
    .end local v2    # "notification":Landroid/preference/PreferenceCategory;
    .end local v3    # "p":Landroid/content/pm/PackageManager;
    :cond_2
    const-string v5, "notification_volume"

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6, v8}, Lcom/android/settings/notification/NotificationSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 145
    const-string v5, "ring_volume"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettings;->mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationSettings$Receiver;->register(Z)V

    .line 201
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 183
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->refreshNotificationListeners()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->lookupRingtoneNames()V

    .line 186
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/NotificationSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationSettings$SettingsObserver;->register(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mReceiver:Lcom/android/settings/notification/NotificationSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationSettings$Receiver;->register(Z)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateRingOrNotificationPreference()V

    .line 189
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettings;->updateEffectsSuppressor()V

    .line 190
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 191
    .local v1, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 193
    .end local v1    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    :cond_0
    return-void
.end method

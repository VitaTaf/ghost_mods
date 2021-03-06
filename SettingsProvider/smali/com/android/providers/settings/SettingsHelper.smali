.class public Lcom/android/providers/settings/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    return-void
.end method

.method private getCanonicalRingtoneValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    .local v1, "ringtoneUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "canonicalUri":Landroid/net/Uri;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private isAlreadyConfiguredCriticalAccessibilitySetting(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    const-string v2, "accessibility_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "accessibility_script_injection"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "speak_password"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "touch_exploration_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_3
    const-string v2, "touch_exploration_granted_accessibility_services"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "enabled_accessibility_services"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method private setAutoRestore(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 159
    :try_start_0
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 161
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 192
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 194
    .local v0, "power":Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v0    # "power":Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setGpsLocation(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 169
    .local v2, "um":Landroid/os/UserManager;
    const-string v3, "no_share_location"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v0, "gps"

    .line 173
    .local v0, "GPS":Ljava/lang/String;
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gps,"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ",gps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ",gps,"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 178
    .local v1, "enabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 173
    .end local v1    # "enabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setRingtone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 117
    .local v2, "ringtoneUri":Landroid/net/Uri;
    const-string v3, "_silent"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const/4 v2, 0x0

    .line 127
    :cond_1
    const-string v3, "ringtone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 129
    .local v1, "ringtoneType":I
    :goto_1
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 120
    .end local v1    # "ringtoneType":I
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, "canonicalUri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    if-nez v2, :cond_1

    goto :goto_0

    .line 127
    .end local v0    # "canonicalUri":Landroid/net/Uri;
    :cond_3
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private setSoundEffects(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0
.end method


# virtual methods
.method applyAudioSettings()V
    .locals 2

    .prologue
    .line 259
    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->reloadAudioSettings()V

    .line 261
    return-void
.end method

.method getLocaleData()[B
    .locals 6

    .prologue
    .line 203
    iget-object v4, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 204
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 205
    .local v2, "loc":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "localeString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4
.end method

.method public onBackupValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "notification_sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    if-nez p2, :cond_4

    .line 86
    const-string v0, "ringtone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/settings/SettingsHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string p2, "_silent"

    .line 104
    .end local p2    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 93
    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 97
    :cond_3
    const-string p2, "_silent"

    goto :goto_0

    .line 100
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->getCanonicalRingtoneValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public restoreValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 62
    const-string v2, "screen_brightness"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setBrightness(I)V

    :cond_0
    :goto_0
    move v0, v1

    .line 78
    :cond_1
    :goto_1
    return v0

    .line 64
    :cond_2
    const-string v2, "sound_effects_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setSoundEffects(Z)V

    goto :goto_0

    .line 66
    :cond_4
    const-string v2, "location_providers_allowed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsHelper;->setGpsLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_5
    const-string v2, "backup_auto_restore"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_6

    move v0, v1

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsHelper;->setAutoRestore(Z)V

    goto :goto_0

    .line 71
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsHelper;->isAlreadyConfiguredCriticalAccessibilitySetting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    const-string v2, "ringtone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "notification_sound"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsHelper;->setRingtone(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method setLocaleData([BI)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 223
    iget-object v7, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 227
    .local v2, "conf":Landroid/content/res/Configuration;
    iget-boolean v7, v2, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v7, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v7, p0, Lcom/android/providers/settings/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "availableLocales":[Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v8, p2}, Ljava/lang/String;-><init>([BII)V

    const/16 v8, 0x5f

    const/16 v9, 0x2d

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "localeCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 233
    .local v5, "loc":Ljava/util/Locale;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 234
    aget-object v7, v1, v4

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 235
    invoke-static {v6}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 239
    :cond_2
    if-eqz v5, :cond_0

    .line 242
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 243
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 244
    .local v3, "config":Landroid/content/res/Configuration;
    iput-object v5, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 248
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 233
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

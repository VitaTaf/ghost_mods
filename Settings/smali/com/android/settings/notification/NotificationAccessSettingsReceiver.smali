.class public Lcom/android/settings/notification/NotificationAccessSettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAccessSettingsReceiver.java"


# static fields
.field private static INTERNAL_LISTENERS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mCR:Landroid/content/ContentResolver;

.field packageString:Ljava/lang/String;

.field serviceString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "internal_hidden_listener"

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->INTERNAL_LISTENERS:Ljava/lang/String;

    .line 24
    const-string v0, "NotificationAccessSettingsReceiver"

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private saveInternalListener(Ljava/lang/String;)V
    .locals 5
    .param p1, "listnere"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->INTERNAL_LISTENERS:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "existsListnere":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->INTERNAL_LISTENERS:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->INTERNAL_LISTENERS:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method addToSettingsSecure(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetPackageService"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    const-string v8, "enabled_notification_listeners"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "enableListners":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 47
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "enableListnersList":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v6, "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 50
    .local v5, "listItem":Ljava/lang/String;
    invoke-virtual {v6, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v5    # "listItem":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    const-string v8, "enabled_notification_listeners"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->saveInternalListener(Ljava/lang/String;)V

    .line 66
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "enableListnersList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 61
    :cond_2
    iget-object v7, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    const-string v8, "enabled_notification_listeners"

    invoke-static {v7, v8, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->saveInternalListener(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.sn.REGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->packageString:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->serviceString:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->packageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->serviceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->addToSettingsSecure(Landroid/content/Intent;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->packageString:Ljava/lang/String;

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->serviceString:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->packageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->serviceString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->removeFromSettingSecure(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeFromSettingSecure(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetPackageService"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "enableListners":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "enableListnersList":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, "sbLisners":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 77
    aget-object v4, v1, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .end local v1    # "enableListnersList":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "sbLisners":Ljava/lang/StringBuffer;
    :cond_2
    :goto_2
    return-void

    .line 89
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettingsReceiver;->mCR:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    const-string v6, ""

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

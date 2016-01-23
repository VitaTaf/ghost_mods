.class public Lcom/android/settings/sim/SimBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimBootReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 143
    new-instance v0, Lcom/android/settings/sim/SimBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimBootReceiver$1;-><init>(Lcom/android/settings/sim/SimBootReceiver;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimBootReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimBootReceiver;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/sim/SimBootReceiver;->detectChangeAndNotify()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 140
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 141
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f02007c

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f080038

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090993

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090994

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 122
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 131
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 132
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 134
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 135
    return-void
.end method

.method private detectChangeAndNotify()V
    .locals 11

    .prologue
    const/high16 v10, 0x10000000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 56
    iget-object v8, p0, Lcom/android/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 57
    .local v3, "numSlots":I
    iget-object v8, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    move v2, v6

    .line 61
    .local v2, "isInProvisioning":Z
    :goto_0
    const/4 v8, 0x2

    if-lt v3, v8, :cond_0

    if-eqz v2, :cond_2

    .line 110
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isInProvisioning":Z
    :cond_1
    move v2, v7

    .line 57
    goto :goto_0

    .line 66
    .restart local v2    # "isInProvisioning":Z
    :cond_2
    iget-object v8, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/sim/SimBootReceiver;->cancelNotification(Landroid/content/Context;)V

    .line 69
    iget-object v8, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 71
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 73
    .local v0, "dataSelected":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v5

    .line 77
    .local v5, "smsSelected":Z
    if-eqz v0, :cond_3

    if-nez v5, :cond_0

    .line 85
    :cond_3
    iget-object v8, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v6, :cond_0

    .line 90
    iget-object v8, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/settings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 92
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 94
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    sget-object v6, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v8, 0x3

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    sget-object v8, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v6, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 99
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    if-nez v0, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    sget-object v6, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v6, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    iput-object p1, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 52
    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 53
    return-void
.end method

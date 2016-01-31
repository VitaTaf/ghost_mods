.class Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;
.super Landroid/content/BroadcastReceiver;
.source "SettingsDynamicPrefProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;


# direct methods
.method private constructor <init>(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;->this$0:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;
    .param p2, "x1"    # Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;-><init>(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .local v1, "wfdStatus":Ljava/lang/String;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateChangedAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDState:Ljava/lang/String;

    sget v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayState:I

    iget-object v2, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;->this$0:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;

    # invokes: Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->updateWirelessDisplaySummary()Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->access$000(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    const-string v2, "com.motorola.settings.extensions.dynamicprefprovider"

    const-string v3, "preference"

    const-string v4, "wireless_display"

    invoke-static {v2, v3, v4}, Lcom/motorola/extensions/DynamicPreferenceDataProvider;->getPreferenceDataUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .end local v0    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringStateChangedAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringState:Ljava/lang/String;

    sget v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOff:I

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayMirroringState:I

    iget-object v2, p0, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider$WfdStatusListener;->this$0:Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;

    # invokes: Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->updateWirelessDisplaySummary()Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;->access$000(Lcom/motorola/settings/extensions/SettingsDynamicPrefProvider;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

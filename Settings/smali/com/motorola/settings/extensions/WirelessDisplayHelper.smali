.class public Lcom/motorola/settings/extensions/WirelessDisplayHelper;
.super Ljava/lang/Object;
.source "WirelessDisplayHelper.java"


# static fields
.field public static mWDMWDMirroringOff:I

.field public static mWDMWDMirroringOn:I

.field public static mWDMWDMirroringState:Ljava/lang/String;

.field public static mWDMWDMirroringStateChangedAction:Ljava/lang/String;

.field public static mWDMWDSettingsLaunch:Ljava/lang/String;

.field public static mWDMWDState:Ljava/lang/String;

.field public static mWDMWDStateChangedAction:Ljava/lang/String;

.field public static mWDMWDStateDisabled:I

.field public static mWDMWDStateEnabled:I

.field public static mWDMWDStateEnabling:I

.field public static mWPState:I

.field public static mWirelessDisplayMirroringState:I

.field public static mWirelessDisplayState:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    sput-object v4, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateChangedAction:Ljava/lang/String;

    sput-object v4, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDState:Ljava/lang/String;

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateEnabling:I

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateEnabled:I

    const/4 v3, 0x1

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWPState:I

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOff:I

    sput-object v4, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringStateChangedAction:Ljava/lang/String;

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOn:I

    sput-object v4, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDSettingsLaunch:Ljava/lang/String;

    sput-object v4, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringState:Ljava/lang/String;

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayState:I

    sput v5, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayMirroringState:I

    :try_start_0
    const-string v3, "com.motorola.wirelessdisplay.service.WirelessDisplayManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "WIRELESS_DISPLAY_STATE_DISABLED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    const-string v3, "WIRELESS_DISPLAY_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateChangedAction:Ljava/lang/String;

    const-string v3, "EXTRA_WIRELESS_DISPLAY_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDState:Ljava/lang/String;

    const-string v3, "WIRELESS_DISPLAY_STATE_ENABLING"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateEnabling:I

    const-string v3, "WIRELESS_DISPLAY_STATE_ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateEnabled:I

    sget v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWPState:I

    const-string v3, "WIRELESS_DISPLAY_MIRRORING_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOff:I

    const-string v3, "WIRELESS_DISPLAY_MIRRORING_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringStateChangedAction:Ljava/lang/String;

    const-string v3, "WIRELESS_DISPLAY_MIRRORING_ON"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOn:I

    const-string v3, "WIRELESS_DISPLAY_SETTINGS_LAUNCH"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDSettingsLaunch:Ljava/lang/String;

    const-string v3, "EXTRA_WIRELESS_DISPLAY_MIRRORING_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringState:Ljava/lang/String;

    sget v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDStateDisabled:I

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayState:I

    sget v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWDMWDMirroringOff:I

    sput v3, Lcom/motorola/settings/extensions/WirelessDisplayHelper;->mWirelessDisplayMirroringState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "WirelessDisplayHelper"

    const-string v4, "Unable to initialize class from pkg com.motorola.wirelessdisplay -WiFi display service assumed OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

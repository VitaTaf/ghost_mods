.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$MonitoringCertNotificationTask;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;,
        Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final ATTR_PERMISSION_PROVIDER:Ljava/lang/String; = "permission-provider"

.field private static final ATTR_SETUP_COMPLETE:Ljava/lang/String; = "setup-complete"

.field private static final DBG:Z = false

.field private static final DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK_TASK_COMPONENTS_XML:Ljava/lang/String; = "lock-task-component"

.field private static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final MONITORING_CERT_NOTIFICATION_ID:I = 0x10400e6

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field private static final SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECURE_SETTINGS_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field private mHasFeature:Z

.field mIWindowManager:Landroid/view/IWindowManager;

.field final mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

.field mNotificationManager:Landroid/app/NotificationManager;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    .line 171
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_usb_file_transfer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_tethering"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_factory_reset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_add_user"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_config_mobile_networks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_physical_media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_unmute_microphone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_adjust_volume"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    const-string v1, "no_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 188
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "skip_first_use_hints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "install_non_market_apps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    .line 193
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 194
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    const-string v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    .line 197
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "adb_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "auto_time_zone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "bluetooth_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "data_roaming"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "development_settings_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "mode_ringer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "network_preference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "usb_mass_storage_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "wifi_on"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    const-string v1, "wifi_sleep_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 971
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    .line 287
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    .line 289
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 291
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 972
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 973
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 974
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    .line 976
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 977
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 978
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DPM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 979
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-direct {v0, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 980
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 984
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 985
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 986
    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 991
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 992
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 993
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1000
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePasswordExpirationNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->handlePackagesChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    return-object v0
.end method

.method private allowedToSetDeviceOwnerOnDevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4168
    .local v0, "callingId":I
    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_3

    .line 4169
    :cond_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_2

    .line 4171
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 4169
    goto :goto_0

    .line 4171
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private checkCallerIsCurrentUserOrProfile()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 4675
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4676
    .local v1, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4679
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4681
    .local v0, "callingUser":Landroid/content/pm/UserInfo;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 4687
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v8, :cond_0

    .line 4688
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods for managed profile of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4698
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4700
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :goto_0
    return v6

    .line 4682
    :catch_0
    move-exception v3

    .line 4683
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to talk to activity managed."

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4698
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4692
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v7, :cond_1

    .line 4693
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods of a user that isn\'t the foreground user."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4698
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4700
    const/4 v6, 0x1

    goto :goto_0

    .line 4698
    .end local v0    # "callingUser":Landroid/content/pm/UserInfo;
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4502
    .local p1, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 4503
    .local v9, "userIdToCheck":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4507
    .local v4, "id":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 4508
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4509
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4512
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 4513
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4514
    .local v2, "enabledPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 4516
    .local v7, "systemService":Z
    const/16 v10, 0x2000

    :try_start_1
    invoke-interface {v6, v2, v10, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4518
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    const/4 v7, 0x1

    .line 4523
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v7, :cond_1

    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-nez v10, :cond_1

    .line 4524
    const/4 v10, 0x0

    .line 4528
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4530
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v7    # "systemService":Z
    :goto_1
    return v10

    .line 4518
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "enabledPackage":Ljava/lang/String;
    .restart local v7    # "systemService":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 4520
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 4521
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Can\'t talk to package managed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 4528
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "enabledPackage":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "systemService":Z
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v10

    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4530
    const/4 v10, 0x1

    goto :goto_1
.end method

.method private cleanUpOldUsers()V
    .locals 9

    .prologue
    .line 1658
    monitor-enter p0

    .line 1659
    :try_start_0
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerKeys()Ljava/util/Set;

    move-result-object v7

    .line 1661
    .local v7, "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :goto_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1662
    .local v6, "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 1663
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1662
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1659
    .end local v2    # "i":I
    .end local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 1665
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "i":I
    .restart local v6    # "usersWithData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "usersWithProfileOwners":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1666
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1668
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1669
    .local v1, "deletedUsers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1670
    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1671
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1672
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1674
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1675
    .local v4, "userId":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    goto :goto_3

    .line 1677
    .end local v4    # "userId":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method private clearUserRestrictions(Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v4, 0x0

    .line 4038
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4040
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 4041
    .local v1, "userRestrictions":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, p1}, Landroid/os/UserManager;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 4042
    const-string v2, "no_adjust_volume"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4043
    invoke-virtual {v0, v4, v4}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 4045
    :cond_0
    const-string v2, "no_unmute_microphone"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4046
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 4048
    :cond_1
    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4220
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4221
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 4224
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 4226
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4232
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return-void

    .line 4230
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceCrossUserPermission(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 4176
    if-gez p1, :cond_0

    .line 4177
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4179
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4180
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 4186
    :cond_1
    :goto_0
    return-void

    .line 4181
    :cond_2
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 4182
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceNotManagedProfile(ILjava/lang/String;)V
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 4195
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4196
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for a managed profile. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4198
    :cond_0
    return-void
.end method

.method private enforceSystemProcess(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4189
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 4190
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4192
    :cond_0
    return-void
.end method

.method private getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 4537
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4538
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 4540
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    return-object v2

    .line 4538
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    goto :goto_0
.end method

.method private getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2708
    const/4 v1, 0x0

    .line 2709
    .local v1, "count":I
    const/4 v5, 0x0

    .line 2710
    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2711
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2712
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2713
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v7, :cond_1

    .line 2719
    if-eqz v1, :cond_2

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-gt v1, v7, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-lt v1, v7, :cond_1

    .line 2722
    :cond_2
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2723
    move-object v5, v0

    goto :goto_0

    .line 2727
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-object v5
.end method

.method private getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 3924
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwner()Ljava/lang/String;

    move-result-object v1

    .line 3925
    .local v1, "deviceOwnerPackageName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, v5

    .line 3937
    :cond_0
    :goto_0
    return-object v0

    .line 3929
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3930
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3931
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 3932
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3933
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3931
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object v0, v5

    .line 3937
    goto :goto_0
.end method

.method private getEncryptionStatus()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3603
    const-string v4, "ro.crypto.state"

    const-string v5, "unsupported"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3604
    .local v0, "status":Ljava/lang/String;
    const-string v4, "encrypted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3605
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3607
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncrypted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x3

    .line 3611
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3616
    .end local v2    # "token":J
    :cond_1
    :goto_0
    return v1

    .line 3611
    .restart local v2    # "token":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 3613
    .end local v2    # "token":J
    :cond_2
    const-string v4, "unencrypted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3616
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2230
    const-wide/16 v8, 0x0

    .line 2232
    .local v8, "timeout":J
    if-eqz p1, :cond_1

    .line 2233
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2234
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_0

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2249
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-wide v12

    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move-wide v12, v8

    .line 2234
    goto :goto_0

    .line 2237
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2238
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2239
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2240
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2241
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 2242
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2243
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_3

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 2245
    :cond_3
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2241
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    move-wide v12, v8

    .line 2249
    goto :goto_0
.end method

.method private getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 4130
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v6, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v4

    .line 4132
    .local v4, "profileOwner":Landroid/content/ComponentName;
    :goto_0
    if-nez v4, :cond_2

    move-object v0, v5

    .line 4144
    :cond_0
    :goto_1
    return-object v0

    .end local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_1
    move-object v4, v5

    .line 4130
    goto :goto_0

    .line 4136
    .restart local v4    # "profileOwner":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 4137
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4138
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 4139
    iget-object v6, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4140
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    move-object v0, v5

    .line 4144
    goto :goto_1
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4201
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4203
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 1111
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1112
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1114
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 936
    const/4 v5, 0x0

    .line 938
    .local v5, "removed":Z
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 939
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 940
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    monitor-enter p0

    .line 941
    :try_start_0
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 942
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    .local v0, "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_start_1
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 947
    .local v1, "adminPackage":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 948
    :cond_0
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_2

    .line 951
    :cond_1
    const/4 v5, 0x1

    .line 952
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 953
    iget-object v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    .end local v1    # "adminPackage":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 960
    .end local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    if-eqz v5, :cond_4

    .line 961
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 962
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 963
    iget v6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 965
    :cond_4
    monitor-exit p0

    .line 966
    return-void

    .line 965
    .end local v2    # "i":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 956
    .restart local v0    # "aa":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private handlePasswordExpirationNotification(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1680
    monitor-enter p0

    .line 1681
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1683
    .local v4, "now":J
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 1684
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 1685
    .local v9, "ui":Landroid/content/pm/UserInfo;
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 1686
    .local v7, "profileUserHandle":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 1687
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1688
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 1689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1690
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1691
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v12, 0x19bfcc00

    sub-long/2addr v10, v12

    cmp-long v10, v4, v10

    if-ltz v10, :cond_1

    iget-wide v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1695
    const-string v10, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1689
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1701
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileUserHandle":I
    .end local v9    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1702
    monitor-exit p0

    .line 1703
    return-void

    .line 1702
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "now":J
    .end local v8    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private hasUserSetupCompleted(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 4056
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_1

    .line 4061
    :cond_0
    :goto_0
    return v1

    .line 4059
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4061
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 3593
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 2979
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2980
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4212
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4214
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/IPackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5202
    const/16 v1, 0x2000

    invoke-interface {p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5204
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V
    .locals 21
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 1430
    invoke-static/range {p2 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v7

    .line 1431
    .local v7, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v12, 0x0

    .line 1432
    .local v12, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v6

    .line 1434
    .local v6, "file":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1435
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 1436
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v10, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1440
    :cond_0
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .local v15, "type":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 1442
    :cond_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1443
    .local v14, "tag":Ljava/lang/String;
    const-string v18, "policies"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1444
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Settings do not start with policies tag: found "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1525
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    :catch_0
    move-exception v5

    move-object v12, v13

    .line 1526
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/NullPointerException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v12, :cond_2

    .line 1540
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1547
    :cond_2
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1553
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1554
    .local v17, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 1555
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Active password quality 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " does not match actual quality 0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1560
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1561
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1562
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1563
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1564
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1565
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1566
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1567
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    .line 1570
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1571
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1572
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 1573
    return-void

    .line 1449
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    :cond_4
    const/16 v18, 0x0

    :try_start_3
    const-string v19, "permission-provider"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1450
    .local v11, "permissionProvider":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 1451
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 1453
    :cond_5
    const/16 v18, 0x0

    const-string v19, "setup-complete"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1454
    .local v16, "userSetupComplete":Ljava/lang/String;
    if-eqz v16, :cond_6

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1455
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 1458
    :cond_6
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .line 1459
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 1460
    .local v9, "outerDepth":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 1461
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1462
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 1464
    :cond_7
    :goto_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_e

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v15, v0, :cond_8

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_e

    .line 1465
    :cond_8
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v15, v0, :cond_7

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v15, v0, :cond_7

    .line 1468
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1469
    const-string v18, "admin"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1470
    const/16 v18, 0x0

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v8

    .line 1472
    .local v8, "name":Ljava/lang/String;
    :try_start_4
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    .line 1480
    .local v4, "dai":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v4, :cond_7

    .line 1481
    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1482
    .local v3, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v3, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1483
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_3

    .line 1485
    .end local v3    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "dai":Landroid/app/admin/DeviceAdminInfo;
    :catch_1
    move-exception v5

    .line 1486
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed loading admin "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_3

    .line 1527
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v12, v13

    .line 1528
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/NumberFormatException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1488
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string v18, "failed-password-attempts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1489
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 1491
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    .line 1529
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_3
    move-exception v5

    move-object v12, v13

    .line 1530
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1492
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_a
    :try_start_7
    const-string v18, "password-owner"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1493
    const/16 v18, 0x0

    const-string v19, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1495
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 1531
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_4
    move-exception v18

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1496
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_b
    const-string v18, "active-password"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1497
    const/16 v18, 0x0

    const-string v19, "quality"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 1499
    const/16 v18, 0x0

    const-string v19, "length"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 1501
    const/16 v18, 0x0

    const-string v19, "uppercase"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 1503
    const/16 v18, 0x0

    const-string v19, "lowercase"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 1505
    const/16 v18, 0x0

    const-string v19, "letters"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 1507
    const/16 v18, 0x0

    const-string v19, "numeric"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 1509
    const/16 v18, 0x0

    const-string v19, "symbols"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 1511
    const/16 v18, 0x0

    const-string v19, "nonletter"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 1514
    const/16 v18, 0x0

    const-string v19, "simple-password-allowed"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    .line 1516
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_3

    .line 1533
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_5
    move-exception v5

    move-object v12, v13

    .line 1534
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/IOException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1517
    .end local v5    # "e":Ljava/io/IOException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_c
    :try_start_8
    const-string v18, "lock-task-component"

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1518
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v10, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_3

    .line 1535
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_6
    move-exception v5

    move-object v12, v13

    .line 1536
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "failed parsing "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1521
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "permissionProvider":Ljava/lang/String;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "tag":Ljava/lang/String;
    .restart local v15    # "type":I
    .restart local v16    # "userSetupComplete":Ljava/lang/String;
    :cond_d
    :try_start_9
    const-string v18, "DevicePolicyManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown tag: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    :cond_e
    move-object v12, v13

    .line 1537
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1542
    .end local v9    # "outerDepth":I
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "permissionProvider":Ljava/lang/String;
    .end local v14    # "tag":Ljava/lang/String;
    .end local v15    # "type":I
    .end local v16    # "userSetupComplete":Ljava/lang/String;
    :catch_7
    move-exception v18

    goto/16 :goto_2

    .line 1535
    :catch_8
    move-exception v5

    goto :goto_7

    .line 1533
    :catch_9
    move-exception v5

    goto/16 :goto_6

    .line 1531
    :catch_a
    move-exception v18

    goto/16 :goto_1

    .line 1529
    :catch_b
    move-exception v5

    goto/16 :goto_5

    .line 1527
    :catch_c
    move-exception v5

    goto/16 :goto_4

    .line 1525
    :catch_d
    move-exception v5

    goto/16 :goto_0
.end method

.method private lockNowUnchecked()V
    .locals 7

    .prologue
    .line 2964
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2967
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2970
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 2971
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2976
    :goto_0
    return-void

    .line 2972
    :catch_0
    move-exception v2

    .line 2974
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userHandle"    # I

    .prologue
    .line 1321
    if-nez p0, :cond_0

    const-string v0, "/data/system/device_policies.xml"

    .line 1325
    .local v0, "base":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    .line 1321
    .end local v0    # "base":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p0, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 3032
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 3033
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    const/4 v4, 0x0

    .line 3448
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3449
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3450
    iget-object v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3451
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_0

    .line 3452
    iget-object v3, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return-void

    .line 3449
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3457
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-direct {p0, v4, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "proxySpec"    # Ljava/lang/String;
    .param p2, "exclusionList"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3461
    if-nez p2, :cond_0

    .line 3462
    const-string p2, ""

    .line 3464
    :cond_0
    if-nez p1, :cond_1

    .line 3465
    const-string p1, ""

    .line 3468
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3469
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3470
    .local v0, "data":[Ljava/lang/String;
    const/16 v1, 0x1f90

    .line 3471
    .local v1, "proxyPort":I
    array-length v4, v0

    if-le v4, v6, :cond_2

    .line 3473
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3476
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 3477
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3479
    .local v3, "res":Landroid/content/ContentResolver;
    new-instance v2, Landroid/net/ProxyInfo;

    aget-object v4, v0, v5

    invoke-direct {v2, v4, v1, p2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3480
    .local v2, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3481
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid proxy properties, ignoring: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :goto_1
    return-void

    .line 3484
    :cond_3
    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3485
    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3486
    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 3474
    .end local v2    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v3    # "res":Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private saveSettingsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    const/4 v13, 0x1

    .line 1329
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    .line 1330
    .local v7, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 1331
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .line 1333
    .local v8, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1335
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1336
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1338
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v10, :cond_0

    .line 1340
    const/4 v10, 0x0

    const-string v11, "permission-provider"

    iget-object v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    :cond_0
    iget-boolean v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-eqz v10, :cond_1

    .line 1344
    const/4 v10, 0x0

    const-string v11, "setup-complete"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1348
    :cond_1
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1349
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 1350
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1351
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_2

    .line 1352
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1353
    const/4 v10, 0x0

    const-string v11, "name"

    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v12}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1354
    invoke-virtual {v1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1355
    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1359
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v10, :cond_4

    .line 1360
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1361
    const/4 v10, 0x0

    const-string v11, "value"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1362
    const/4 v10, 0x0

    const-string v11, "password-owner"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    :cond_4
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v10, :cond_5

    .line 1366
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1367
    const/4 v10, 0x0

    const-string v11, "value"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1368
    const/4 v10, 0x0

    const-string v11, "failed-password-attempts"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1371
    :cond_5
    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v10, :cond_6

    iget v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-nez v10, :cond_6

    iget-boolean v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    if-eq v10, v13, :cond_7

    .line 1376
    :cond_6
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1377
    const/4 v10, 0x0

    const-string v11, "quality"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1378
    const/4 v10, 0x0

    const-string v11, "length"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1379
    const/4 v10, 0x0

    const-string v11, "uppercase"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1380
    const/4 v10, 0x0

    const-string v11, "lowercase"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1381
    const/4 v10, 0x0

    const-string v11, "letters"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1382
    const/4 v10, 0x0

    const-string v11, "numeric"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1384
    const/4 v10, 0x0

    const-string v11, "symbols"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1385
    const/4 v10, 0x0

    const-string v11, "nonletter"

    iget v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    const/4 v10, 0x0

    const-string v11, "simple-password-allowed"

    iget-boolean v12, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1388
    const/4 v10, 0x0

    const-string v11, "active-password"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1391
    :cond_7
    const/4 v4, 0x0

    :goto_1
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_8

    .line 1392
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1393
    .local v2, "component":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "lock-task-component"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1394
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v6, v10, v11, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1395
    const/4 v10, 0x0

    const-string v11, "lock-task-component"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1391
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1398
    .end local v2    # "component":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    const-string v11, "policies"

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1400
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1401
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 1402
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1403
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1404
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->commit()V

    .line 1405
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v8, v9

    .line 1416
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 1406
    :catch_0
    move-exception v3

    .line 1408
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v8, :cond_9

    .line 1409
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1414
    :cond_9
    :goto_4
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_2

    .line 1411
    :catch_1
    move-exception v10

    goto :goto_4

    .line 1406
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    move-object v8, v9

    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v8    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1253
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 1254
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1255
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1256
    .local v1, "id":I
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V

    goto :goto_0

    .line 1258
    .end local v1    # "id":I
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private sendChangedNotification(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1419
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1423
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    return-void

    .line 1425
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V
    .locals 14
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I
    .param p4, "onEnableData"    # Landroid/os/Bundle;

    .prologue
    .line 1807
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1811
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v9

    .line 1812
    .local v9, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v6

    .line 1813
    .local v6, "info":Landroid/app/admin/DeviceAdminInfo;
    if-nez v6, :cond_0

    .line 1814
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad admin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1816
    :cond_0
    monitor-enter p0

    .line 1817
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v4

    .line 1819
    .local v4, "ident":J
    if-nez p2, :cond_1

    :try_start_1
    move/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 1821
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Admin is already added"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1844
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 1846
    .end local v4    # "ident":J
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 1823
    .restart local v4    # "ident":J
    :cond_1
    :try_start_3
    new-instance v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v7, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    .line 1824
    .local v7, "newAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    const/4 v10, -0x1

    .line 1826
    .local v10, "replaceIndex":I
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1827
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1828
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1829
    .local v8, "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v11, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1830
    move v10, v3

    .line 1834
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 1835
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    .line 1840
    :goto_1
    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1841
    const-string v11, "android.app.action.DEVICE_ADMIN_ENABLED"

    const/4 v12, 0x0

    move-object/from16 v0, p4

    invoke-virtual {p0, v7, v11, v0, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1844
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1847
    return-void

    .line 1827
    .restart local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1838
    .end local v8    # "oldAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    :try_start_5
    iget-object v11, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private setEncryptionRequested(Z)V
    .locals 0
    .param p1, "encrypt"    # Z

    .prologue
    .line 3624
    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 3268
    iget-object v12, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 3269
    .local v8, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 3270
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v9, Landroid/content/pm/UserInfo;->id:I

    .line 3271
    .local v7, "profileId":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 3272
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3273
    .local v0, "N":I
    if-lez v0, :cond_2

    .line 3274
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 3275
    iget-object v12, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3276
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v12, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3277
    iget-wide v10, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 3278
    .local v10, "timeout":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long v2, v10, v12

    .line 3279
    .local v2, "expiration":J
    :goto_2
    iput-wide v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 3274
    .end local v2    # "expiration":J
    .end local v10    # "timeout":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3278
    .restart local v10    # "timeout":J
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 3283
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v10    # "timeout":J
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    goto :goto_0

    .line 3285
    .end local v0    # "N":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "profileId":I
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-void
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 3676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3678
    .local v2, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3682
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    :goto_0
    return-void

    .line 3679
    :catch_0
    move-exception v0

    .line 3680
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "DevicePolicyManagerService"

    const-string v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3682
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static validateQualityConstant(I)V
    .locals 3
    .param p0, "quality"    # I

    .prologue
    .line 1576
    sparse-switch p0, :sswitch_data_0

    .line 1587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1585
    :sswitch_0
    return-void

    .line 1576
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private wipeDataLocked(ZLjava/lang/String;)V
    .locals 8
    .param p1, "wipeExtRequested"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3091
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 3094
    .local v1, "forceExtWipe":Z
    :goto_0
    invoke-static {}, Landroid/os/storage/StorageManager;->getSdVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 3097
    .local v3, "sd":Landroid/os/storage/StorageVolume;
    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz v3, :cond_2

    const-string v5, "mounted"

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3099
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3100
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "storage_volume"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3102
    const-string v5, "always_reset"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3103
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3104
    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3105
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3106
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3114
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3091
    .end local v1    # "forceExtWipe":Z
    .end local v3    # "sd":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3109
    .restart local v1    # "forceExtWipe":Z
    .restart local v3    # "sd":Landroid/os/storage/StorageVolume;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3110
    :catch_0
    move-exception v0

    .line 3111
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3110
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    .locals 2
    .param p1, "wipeExtRequested"    # Z
    .param p2, "userHandle"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 3160
    if-nez p2, :cond_0

    .line 3161
    invoke-direct {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDataLocked(ZLjava/lang/String;)V

    .line 3179
    :goto_0
    return-void

    .line 3163
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/ComponentName;Landroid/content/IntentFilter;I)V
    .locals 14
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .prologue
    .line 4446
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4447
    .local v4, "callingUserId":I
    monitor-enter p0

    .line 4448
    if-nez p1, :cond_0

    .line 4449
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4469
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4451
    :cond_0
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4453
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4454
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 4456
    .local v12, "id":J
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 4457
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V

    .line 4460
    :cond_1
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_2

    .line 4461
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    move-object/from16 v6, p2

    move v10, v4

    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4467
    :cond_2
    :try_start_3
    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4469
    :goto_0
    monitor-exit p0

    .line 4470
    return-void

    .line 4464
    :catch_0
    move-exception v1

    .line 4467
    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v12, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2157
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2158
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2160
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2161
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2163
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v5, :cond_0

    .line 2164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2166
    :cond_0
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2167
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2168
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 2172
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2174
    if-eqz v1, :cond_2

    .line 2175
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2176
    const/4 v5, 0x1

    .line 2179
    :goto_0
    return v5

    .line 2172
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2179
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 2172
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public addPersistentPreferredActivity(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 4277
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4279
    .local v3, "userHandle":I
    monitor-enter p0

    .line 4280
    if-nez p1, :cond_0

    .line 4281
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4294
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4283
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4285
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4286
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4288
    .local v0, "id":J
    :try_start_2
    invoke-interface {v2, p2, p3, v3}, Landroid/content/pm/IPackageManager;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4292
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4294
    :goto_0
    monitor-exit p0

    .line 4295
    return-void

    .line 4289
    :catch_0
    move-exception v4

    .line 4292
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4473
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4474
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 4475
    if-nez p1, :cond_0

    .line 4476
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4493
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4478
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4479
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4480
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4482
    .local v2, "id":J
    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V

    .line 4486
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4491
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4493
    :goto_0
    monitor-exit p0

    .line 4494
    return-void

    .line 4488
    :catch_0
    move-exception v4

    .line 4491
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearDeviceOwner(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3942
    if-nez p1, :cond_0

    .line 3943
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "packageName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3946
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 3947
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 3948
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Invalid packageName"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3950
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 3951
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 3953
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "uid":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3954
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "clearDeviceOwner can only be called by the device owner"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3956
    :cond_2
    monitor-enter p0

    .line 3957
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 3959
    .local v2, "ident":J
    :try_start_2
    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 3960
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v4, :cond_3

    .line 3961
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->clearDeviceOwner()V

    .line 3962
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3965
    :cond_3
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3967
    monitor-exit p0

    .line 3968
    return-void

    .line 3965
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3967
    .end local v2    # "ident":J
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4299
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4301
    .local v3, "userHandle":I
    monitor-enter p0

    .line 4302
    if-nez p1, :cond_0

    .line 4303
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4316
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4305
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4307
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 4308
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4310
    .local v0, "id":J
    :try_start_2
    invoke-interface {v2, p2, v3}, Landroid/content/pm/IPackageManager;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4314
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4316
    :goto_0
    monitor-exit p0

    .line 4317
    return-void

    .line 4311
    :catch_0
    move-exception v4

    .line 4314
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public clearProfileOwner(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4017
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4035
    :goto_0
    return-void

    .line 4020
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 4022
    .local v0, "callingUser":Landroid/os/UserHandle;
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4023
    monitor-enter p0

    .line 4024
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4026
    .local v2, "ident":J
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->clearUserRestrictions(Landroid/os/UserHandle;)V

    .line 4027
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4028
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 4029
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4032
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4034
    monitor-exit p0

    goto :goto_0

    .end local v2    # "ident":J
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4032
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public createAndInitializeUser(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/UserHandle;
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ownerName"    # Ljava/lang/String;
    .param p4, "profileOwnerComponent"    # Landroid/content/ComponentName;
    .param p5, "adminExtras"    # Landroid/os/Bundle;

    .prologue
    .line 4857
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .line 4858
    .local v6, "user":Landroid/os/UserHandle;
    if-nez v6, :cond_0

    .line 4859
    const/4 v6, 0x0

    .line 4883
    .end local v6    # "user":Landroid/os/UserHandle;
    :goto_0
    return-object v6

    .line 4861
    .restart local v6    # "user":Landroid/os/UserHandle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4863
    .local v2, "id":J
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4864
    .local v5, "profileOwnerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 4865
    .local v4, "ipm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4869
    .local v0, "activityManager":Landroid/app/IActivityManager;
    :try_start_1
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4870
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v4, v5, v7}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    .line 4874
    :cond_1
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4879
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-direct {p0, p4, v7, v8, p5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    .line 4880
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, p4, p3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4883
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4875
    :catch_0
    move-exception v1

    .line 4876
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Failed to make remote calls for configureUser"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 4883
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v5    # "profileOwnerPkg":Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public createUser(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/UserHandle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4835
    monitor-enter p0

    .line 4836
    if-nez p1, :cond_0

    .line 4837
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4851
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4839
    :cond_0
    const/4 v3, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4841
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4843
    .local v0, "id":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4844
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1

    .line 4845
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 4849
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    :goto_0
    return-object v3

    .line 4847
    :cond_1
    const/4 v3, 0x0

    .line 4849
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4236
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 4239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4272
    :goto_0
    return-void

    .line 4245
    :cond_0
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4247
    .local v3, "p":Landroid/util/Printer;
    monitor-enter p0

    .line 4248
    :try_start_0
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4250
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 4251
    .local v6, "userCount":I
    const/4 v5, 0x0

    .local v5, "u":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 4252
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 4253
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4254
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4255
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 4256
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4257
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    .line 4258
    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4259
    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 4255
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4263
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 4264
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Removing Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4268
    :cond_3
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4269
    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 4251
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 4271
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    .end local v5    # "u":I
    .end local v6    # "userCount":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5100
    monitor-enter p0

    .line 5101
    if-nez p1, :cond_0

    .line 5102
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ComponentName is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5140
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 5107
    :cond_0
    const/4 v7, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5109
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 5110
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 5118
    .local v0, "id":J
    :try_start_2
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    .line 5119
    .local v5, "um":Landroid/os/UserManager;
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5122
    .local v3, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_1

    .line 5123
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 5126
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5127
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 5128
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Only system apps can be enabled this way."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5134
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v4

    .line 5136
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "DevicePolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to install "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5138
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5140
    .end local v4    # "re":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5141
    return-void

    .line 5132
    .restart local v2    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v5    # "um":Landroid/os/UserManager;
    :cond_2
    :try_start_5
    invoke-interface {v2, p2, v6}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5138
    :try_start_6
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    .end local v3    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :catchall_1
    move-exception v7

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public enableSystemAppWithIntent(Landroid/content/ComponentName;Landroid/content/Intent;)I
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5145
    monitor-enter p0

    .line 5146
    if-nez p1, :cond_0

    .line 5147
    :try_start_0
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "ComponentName is null"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 5197
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 5152
    :cond_0
    const/4 v13, -0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 5155
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 5158
    .local v6, "id":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v11

    .line 5159
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 5162
    .local v10, "primaryUser":Landroid/content/pm/UserInfo;
    if-nez v10, :cond_1

    .line 5163
    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 5166
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 5167
    .local v9, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    iget v15, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p2

    invoke-interface {v9, v0, v13, v14, v15}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    .line 5173
    .local v2, "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 5174
    .local v8, "numberOfAppsInstalled":I
    if-eqz v2, :cond_4

    .line 5175
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 5176
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_2

    .line 5178
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v14, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isSystemApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 5179
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Only system apps can be enabled this way."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5190
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v11    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v3

    .line 5192
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v13, "DevicePolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to resolve intent for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5193
    const/4 v8, 0x0

    .line 5195
    :try_start_4
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v8

    .line 5184
    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 5185
    :try_start_5
    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v13, v12}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 5195
    .end local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .end local v8    # "numberOfAppsInstalled":I
    .end local v9    # "pm":Landroid/content/pm/IPackageManager;
    .end local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .end local v11    # "um":Landroid/os/UserManager;
    :catchall_1
    move-exception v13

    :try_start_6
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v13

    .restart local v2    # "activitiesToEnable":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v8    # "numberOfAppsInstalled":I
    .restart local v9    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v10    # "primaryUser":Landroid/content/pm/UserInfo;
    .restart local v11    # "um":Landroid/os/UserManager;
    :cond_4
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public enforceCanManageCaCerts(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 2985
    if-nez p1, :cond_0

    .line 2986
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_CA_CERTIFICATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    :goto_0
    return-void

    .line 2988
    :cond_0
    monitor-enter p0

    .line 2989
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2990
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .locals 7
    .param p1, "adminName"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1293
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move-object v3, v4

    .line 1316
    :goto_0
    return-object v3

    .line 1296
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1297
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1298
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1299
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v5, 0x8080

    invoke-virtual {v3, v2, v5, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1303
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1304
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1308
    :cond_2
    :try_start_0
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v5

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1312
    goto :goto_0

    .line 1313
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 1314
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1316
    goto/16 :goto_0
.end method

.method public getAccountTypesWithManagementDisabled()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 5230
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 5235
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 5236
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 5237
    const/4 v5, 0x0

    .line 5247
    :goto_0
    return-object v5

    .line 5239
    :cond_0
    monitor-enter p0

    .line 5240
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 5241
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5242
    .local v0, "N":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 5243
    .local v4, "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5244
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5245
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 5243
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5247
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 5248
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "resultSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "reqPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v9, 0x0

    .line 1137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1138
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1139
    .local v7, "userHandle":I
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 1141
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;>;"
    if-eqz p1, :cond_5

    .line 1145
    iget-object v8, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1146
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_0

    .line 1147
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1149
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v8

    if-eq v8, v1, :cond_1

    .line 1150
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not owned by uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1153
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1164
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v4

    .line 1165
    .local v4, "ownsDevice":Z
    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v5, 0x1

    .line 1169
    .local v5, "ownsProfile":Z
    :goto_0
    if-ne p2, v11, :cond_8

    .line 1170
    if-eqz v4, :cond_3

    .line 1179
    :cond_4
    :goto_1
    return-object v0

    .line 1155
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "ownsDevice":Z
    .end local v5    # "ownsProfile":Z
    :cond_5
    iget-object v8, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1156
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v8

    if-ne v8, v1, :cond_6

    .line 1157
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .restart local v4    # "ownsDevice":Z
    :cond_7
    move v5, v9

    .line 1165
    goto :goto_0

    .line 1173
    .restart local v5    # "ownsProfile":Z
    :cond_8
    if-ne p2, v12, :cond_9

    .line 1174
    if-nez v4, :cond_4

    if-eqz v5, :cond_3

    goto :goto_1

    .line 1178
    :cond_9
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 1184
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "ownsDevice":Z
    .end local v5    # "ownsProfile":Z
    :cond_a
    if-eqz p1, :cond_d

    .line 1185
    if-ne p2, v11, :cond_b

    .line 1186
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not own the device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1189
    :cond_b
    if-ne p2, v12, :cond_c

    .line 1190
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not own the profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1193
    :cond_c
    new-instance v10, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " did not specify uses-policy for: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1197
    :cond_d
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin owned by uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for policy #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1126
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1127
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_0
    return-object v0

    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .locals 5
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1887
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    .line 1888
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1902
    :goto_0
    return-object v3

    .line 1891
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1892
    monitor-enter p0

    .line 1893
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1894
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1895
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 1896
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1903
    .end local v0    # "N":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1898
    .restart local v0    # "N":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1899
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1900
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1899
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1902
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4930
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 4932
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 4933
    if-nez p1, :cond_0

    .line 4934
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4944
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4936
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4938
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4940
    .local v0, "id":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 4942
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getAutoTimeRequired()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3722
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3727
    :goto_0
    return v1

    .line 3725
    :cond_0
    monitor-enter p0

    .line 3726
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdmin()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3727
    .local v0, "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3728
    .end local v0    # "deviceOwner":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3764
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3782
    :goto_0
    return v4

    .line 3767
    :cond_0
    monitor-enter p0

    .line 3768
    if-eqz p1, :cond_2

    .line 3769
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3770
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3783
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3773
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3775
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3776
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3777
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3778
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v5, :cond_3

    .line 3779
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3776
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3782
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5321
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5322
    const/4 v1, 0x0

    .line 5332
    :goto_0
    return v1

    .line 5325
    :cond_0
    monitor-enter p0

    .line 5326
    if-nez p1, :cond_1

    .line 5327
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5333
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5330
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5332
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCrossProfileCallerIdDisabledForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 5340
    monitor-enter p0

    .line 5341
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAdmin(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5342
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 5343
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2210
    monitor-enter p0

    .line 2211
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2213
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2215
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    .line 2220
    :goto_0
    return-object v1

    .line 2217
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2218
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    goto :goto_0

    .line 2222
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2220
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .locals 8
    .param p1, "userHandle"    # I

    .prologue
    .line 2623
    monitor-enter p0

    .line 2629
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2641
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2642
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    iget v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2650
    :goto_1
    return v5

    .line 2632
    :catch_0
    move-exception v4

    .line 2635
    .local v4, "se":Ljava/lang/SecurityException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2637
    :catch_1
    move-exception v0

    .line 2638
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    throw v4

    .line 2651
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2646
    :cond_0
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2647
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_1

    move v1, p1

    .line 2648
    .local v1, "id":I
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 2650
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    goto :goto_1

    .line 2647
    .end local v1    # "id":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3897
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3905
    :goto_0
    return-object v0

    .line 3900
    :cond_0
    monitor-enter p0

    .line 3901
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3902
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3904
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getDeviceOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3910
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3919
    :goto_0
    return-object v0

    .line 3913
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    monitor-enter p0

    .line 3915
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 3916
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 3918
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3411
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3430
    :goto_0
    return-object v4

    .line 3414
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3415
    monitor-enter p0

    .line 3416
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3419
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3420
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3421
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3422
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v5, :cond_1

    .line 3425
    iget-object v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    goto :goto_0

    .line 3428
    .end local v0    # "N":I
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3420
    .restart local v0    # "N":I
    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "i":I
    .restart local v3    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3428
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3814
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3832
    :goto_0
    return v4

    .line 3817
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3818
    monitor-enter p0

    .line 3819
    if-eqz p1, :cond_2

    .line 3820
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3821
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3833
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3825
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3826
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3827
    .local v0, "N":I
    const/4 v4, 0x0

    .line 3828
    .local v4, "which":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3829
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3830
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    .line 3828
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3832
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5378
    monitor-enter p0

    .line 5379
    if-nez p1, :cond_0

    .line 5380
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5387
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5382
    :cond_0
    const/4 v2, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5384
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 5385
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 5386
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2678
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2685
    :goto_0
    return v1

    .line 2681
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2682
    monitor-enter p0

    .line 2683
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2685
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2686
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2683
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2919
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 2920
    const-wide/16 v8, 0x0

    .line 2946
    :goto_0
    return-wide v8

    .line 2922
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2923
    monitor-enter p0

    .line 2924
    const-wide/16 v8, 0x0

    .line 2926
    .local v8, "time":J
    if-eqz p1, :cond_2

    .line 2927
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2928
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_1
    monitor-exit p0

    move-wide v8, v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_1

    .line 2932
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2933
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2934
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2935
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2936
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 2937
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2938
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-nez v11, :cond_5

    .line 2939
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2936
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2940
    :cond_5
    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_4

    .line 2942
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_3

    .line 2946
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .line 2947
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .locals 2
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2253
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2254
    const-wide/16 v0, 0x0

    .line 2258
    :goto_0
    return-wide v0

    .line 2256
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2257
    monitor-enter p0

    .line 2258
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_0

    .line 2259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .locals 16
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2127
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 2128
    const-wide/16 v8, 0x0

    .line 2151
    :goto_0
    return-wide v8

    .line 2130
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2131
    monitor-enter p0

    .line 2132
    const-wide/16 v8, 0x0

    .line 2134
    .local v8, "timeout":J
    if-eqz p1, :cond_2

    .line 2135
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 2136
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_1

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_1
    monitor-exit p0

    move-wide v8, v12

    goto :goto_0

    :cond_1
    move-wide v12, v8

    goto :goto_1

    .line 2139
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 2140
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 2141
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    iget v11, v10, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    .line 2142
    .local v6, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2143
    .local v2, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 2144
    iget-object v11, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2145
    .restart local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_4

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_5

    iget-wide v12, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v11, v8, v12

    if-lez v11, :cond_5

    .line 2147
    :cond_4
    iget-wide v8, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2143
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2151
    .end local v2    # "N":I
    .end local v3    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v4    # "i":I
    .end local v6    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    monitor-exit p0

    goto :goto_0

    .line 2152
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2065
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2066
    const/4 v4, 0x0

    .line 2089
    :goto_0
    return v4

    .line 2068
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2069
    monitor-enter p0

    .line 2070
    const/4 v4, 0x0

    .line 2072
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2073
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2074
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2078
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2079
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2080
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2081
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2082
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2083
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2084
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v4, v8, :cond_4

    .line 2085
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2082
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2089
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2090
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2018
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2019
    const/4 v4, 0x0

    .line 2042
    :goto_0
    return v4

    .line 2021
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2022
    monitor-enter p0

    .line 2023
    const/4 v4, 0x0

    .line 2025
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2026
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2027
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2031
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2032
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2033
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2034
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2035
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2036
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2037
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v4, v8, :cond_4

    .line 2038
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 2035
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2042
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2043
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2372
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2373
    const/4 v4, 0x0

    .line 2396
    :goto_0
    return v4

    .line 2375
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2376
    monitor-enter p0

    .line 2377
    const/4 v4, 0x0

    .line 2379
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2380
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2381
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2385
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2386
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2387
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2388
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2389
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2390
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2391
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v4, v8, :cond_4

    .line 2392
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2389
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2396
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2397
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2325
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2326
    const/4 v4, 0x0

    .line 2349
    :goto_0
    return v4

    .line 2328
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2329
    monitor-enter p0

    .line 2330
    const/4 v4, 0x0

    .line 2332
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2333
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2334
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2338
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2339
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2340
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2341
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2342
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2343
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2344
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v4, v8, :cond_4

    .line 2345
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2342
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2349
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2350
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2513
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2514
    const/4 v4, 0x0

    .line 2537
    :goto_0
    return v4

    .line 2516
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2517
    monitor-enter p0

    .line 2518
    const/4 v4, 0x0

    .line 2520
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2521
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2522
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2526
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2527
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2528
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2529
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2530
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2531
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2532
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v4, v8, :cond_4

    .line 2533
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2530
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2537
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2538
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2419
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2420
    const/4 v4, 0x0

    .line 2443
    :goto_0
    return v4

    .line 2422
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2423
    monitor-enter p0

    .line 2424
    const/4 v4, 0x0

    .line 2426
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2427
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2428
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2432
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2433
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2434
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2435
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2436
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2437
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2438
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v4, v8, :cond_4

    .line 2439
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2436
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2443
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2444
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2466
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2467
    const/4 v4, 0x0

    .line 2490
    :goto_0
    return v4

    .line 2469
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2470
    monitor-enter p0

    .line 2471
    const/4 v4, 0x0

    .line 2473
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2474
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2475
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2479
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2480
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2481
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2482
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2483
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2484
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2485
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v4, v8, :cond_4

    .line 2486
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2483
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2490
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2491
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2281
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 2282
    const/4 v4, 0x0

    .line 2305
    :goto_0
    return v4

    .line 2284
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2285
    monitor-enter p0

    .line 2286
    const/4 v4, 0x0

    .line 2288
    .local v4, "length":I
    if-eqz p1, :cond_2

    .line 2289
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2290
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 2294
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 2295
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2296
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 2297
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2298
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 2299
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2300
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v4, v8, :cond_4

    .line 2301
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2298
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2305
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 2306
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1971
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 1972
    const/4 v4, 0x0

    .line 1995
    :goto_0
    return v4

    .line 1974
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1975
    monitor-enter p0

    .line 1976
    const/4 v4, 0x0

    .line 1978
    .local v4, "mode":I
    if-eqz p1, :cond_2

    .line 1979
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 1980
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_1
    monitor-exit p0

    move v4, v8

    goto :goto_0

    :cond_1
    move v8, v4

    goto :goto_1

    .line 1984
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 1985
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1986
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 1987
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1988
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 1989
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1990
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v4, v8, :cond_4

    .line 1991
    iget v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1988
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1995
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 1996
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPasswordSimpleAllowed(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 2558
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2559
    monitor-enter p0

    .line 2560
    const/4 v3, 0x1

    .line 2562
    .local v3, "isAllowed":Z
    if-eqz p1, :cond_1

    .line 2563
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 2564
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_0

    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordAllowed:Z

    :goto_0
    monitor-exit p0

    .line 2576
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :goto_1
    return v5

    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_0
    move v5, v3

    .line 2564
    goto :goto_0

    .line 2567
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 2568
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2569
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 2570
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2571
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordAllowed:Z

    if-nez v5, :cond_3

    .line 2572
    const/4 v3, 0x0

    .line 2576
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0

    move v5, v3

    goto :goto_1

    .line 2569
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2577
    .end local v0    # "N":I
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4592
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4593
    const/4 v1, 0x0

    .line 4603
    :goto_0
    return-object v1

    .line 4596
    :cond_0
    if-nez p1, :cond_1

    .line 4597
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4600
    :cond_1
    monitor-enter p0

    .line 4601
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4603
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    monitor-exit p0

    goto :goto_0

    .line 4604
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermittedAccessibilityServicesForUser(I)Ljava/util/List;
    .locals 27
    .param p1, "userId"    # I

    .prologue
    .line 4609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 4610
    const/16 v21, 0x0

    .line 4670
    :goto_0
    return-object v21

    .line 4612
    :cond_0
    monitor-enter p0

    .line 4613
    const/16 v21, 0x0

    .line 4617
    .local v21, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v20

    .line 4618
    .local v20, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    .line 4619
    .local v5, "PROFILES_SIZE":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v5, :cond_4

    .line 4622
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v19

    .line 4623
    .local v19, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 4624
    .local v4, "N":I
    const/16 v16, 0x0

    .local v16, "j":I
    move-object/from16 v22, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    move/from16 v0, v16

    if-ge v0, v4, :cond_3

    .line 4625
    :try_start_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4626
    .local v7, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v7, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 4627
    .local v10, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    .line 4628
    if-nez v22, :cond_1

    .line 4629
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4624
    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v22, v21

    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 4631
    :cond_1
    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 4619
    .end local v7    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 4638
    .end local v4    # "N":I
    .end local v16    # "j":I
    .end local v19    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_4
    if-eqz v21, :cond_8

    .line 4639
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v14

    .line 4641
    .local v14, "id":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 4642
    .local v24, "user":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 4643
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 p1, v0

    .line 4645
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    .line 4647
    .local v6, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 4650
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 4651
    .local v18, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v13, :cond_7

    .line 4652
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 4653
    .local v23, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4655
    .local v17, "packageName":Ljava/lang/String;
    const/16 v25, 0x2000

    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 4657
    .local v8, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_6

    .line 4658
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 4660
    .end local v8    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v9

    .line 4661
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v25, "DevicePolicyManagerService"

    const-string v26, "Accessibility service in missing package"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 4666
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    .end local v23    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v25

    :try_start_6
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v25

    .line 4671
    .end local v5    # "PROFILES_SIZE":I
    .end local v11    # "i":I
    .end local v14    # "id":J
    .end local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v25

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v25

    .line 4666
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v11    # "i":I
    .restart local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v14    # "id":J
    .restart local v18    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_7
    :try_start_7
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4670
    .end local v6    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v13    # "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v14    # "id":J
    .end local v18    # "pm":Landroid/content/pm/IPackageManager;
    .end local v24    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 4671
    .end local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "N":I
    .restart local v16    # "j":I
    .restart local v19    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v25

    move-object/from16 v21, v22

    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public getPermittedInputMethods(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4750
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4751
    const/4 v1, 0x0

    .line 4761
    :goto_0
    return-object v1

    .line 4754
    :cond_0
    if-nez p1, :cond_1

    .line 4755
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4758
    :cond_1
    monitor-enter p0

    .line 4759
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4761
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    monitor-exit p0

    goto :goto_0

    .line 4762
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPermittedInputMethodsForCurrentUser()Ljava/util/List;
    .locals 28

    .prologue
    .line 4769
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 4776
    .local v8, "currentUser":Landroid/content/pm/UserInfo;
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    .line 4777
    .local v25, "userId":I
    monitor-enter p0

    .line 4778
    const/16 v23, 0x0

    .line 4782
    .local v23, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v22

    .line 4783
    .local v22, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    .line 4784
    .local v5, "PROFILES_SIZE":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_3

    .line 4787
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v21

    .line 4788
    .local v21, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 4789
    .local v4, "N":I
    const/16 v18, 0x0

    .local v18, "j":I
    move-object/from16 v24, v23

    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    move/from16 v0, v18

    if-ge v0, v4, :cond_2

    .line 4790
    :try_start_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4791
    .local v6, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v10, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 4792
    .local v10, "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 4793
    if-nez v24, :cond_0

    .line 4794
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4789
    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v24, v23

    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 4770
    .end local v4    # "N":I
    .end local v5    # "PROFILES_SIZE":I
    .end local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "currentUser":Landroid/content/pm/UserInfo;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v18    # "j":I
    .end local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "userId":I
    :catch_0
    move-exception v9

    .line 4771
    .local v9, "e":Landroid/os/RemoteException;
    const-string v26, "DevicePolicyManagerService"

    const-string v27, "Failed to make remote calls to get current user"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4773
    const/16 v23, 0x0

    .line 4829
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v23

    .line 4796
    .restart local v4    # "N":I
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v8    # "currentUser":Landroid/content/pm/UserInfo;
    .restart local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v18    # "j":I
    .restart local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "userId":I
    :cond_0
    :try_start_3
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 4784
    .end local v6    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v10    # "fromAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 4803
    .end local v4    # "N":I
    .end local v18    # "j":I
    .end local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    if-eqz v23, :cond_6

    .line 4804
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "input_method"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    .line 4806
    .local v17, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual/range {v17 .. v17}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    .line 4807
    .local v16, "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v14

    .line 4809
    .local v14, "id":J
    :try_start_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v20

    .line 4810
    .local v20, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v16, :cond_5

    .line 4811
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 4812
    .local v13, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v19

    .line 4814
    .local v19, "packageName":Ljava/lang/String;
    const/16 v26, 0x2000

    :try_start_6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v26

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 4817
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_4

    .line 4818
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 4820
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    .line 4821
    .restart local v9    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v26, "DevicePolicyManagerService"

    const-string v27, "Input method for missing package"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 4826
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :catchall_0
    move-exception v26

    :try_start_8
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v26

    .line 4830
    .end local v5    # "PROFILES_SIZE":I
    .end local v11    # "i":I
    .end local v14    # "id":J
    .end local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_1
    move-exception v26

    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v26

    .line 4826
    .restart local v5    # "PROFILES_SIZE":I
    .restart local v11    # "i":I
    .restart local v14    # "id":J
    .restart local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .restart local v20    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v22    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5
    :try_start_9
    invoke-static {v14, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4829
    .end local v14    # "id":J
    .end local v16    # "imes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v17    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v20    # "pm":Landroid/content/pm/IPackageManager;
    :cond_6
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 4830
    .end local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "N":I
    .restart local v18    # "j":I
    .restart local v21    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .restart local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v26

    move-object/from16 v23, v24

    .end local v24    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public getProfileOwner(I)Landroid/content/ComponentName;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 4115
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4124
    :goto_0
    return-object v0

    .line 4119
    :cond_0
    monitor-enter p0

    .line 4120
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4121
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 4123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProfileOwnerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 4149
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4159
    :goto_0
    return-object v0

    .line 4152
    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_USERS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    monitor-enter p0

    .line 4155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    .line 4156
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 4158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getProfileWithMinimumFailedPasswordsForWipe(I)I
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    const/16 v1, -0x2710

    .line 2691
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 2697
    :goto_0
    return v1

    .line 2694
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2695
    monitor-enter p0

    .line 2696
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2697
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 2698
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .locals 10
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "result"    # Landroid/os/RemoteCallback;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3182
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3212
    :goto_0
    return-void

    .line 3185
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3186
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    monitor-enter p0

    .line 3190
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3191
    .local v9, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v9, :cond_1

    .line 3193
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3196
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 3211
    .end local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3198
    .restart local v9    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3199
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3200
    iget-object v0, v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3201
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;

    invoke-direct {v4, p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 3211
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3194
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getRestrictionsProvider(I)Landroid/content/ComponentName;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 4436
    monitor-enter p0

    .line 4437
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 4438
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system can query the permission provider"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4442
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4440
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4441
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 3654
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3671
    :goto_0
    return v4

    .line 3657
    :cond_0
    monitor-enter p0

    .line 3658
    if-eqz p1, :cond_2

    .line 3659
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3660
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3672
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3663
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3664
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3665
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3666
    iget-object v5, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3667
    .restart local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eqz v5, :cond_3

    .line 3668
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3665
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3671
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3549
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_0

    move v4, v5

    .line 3570
    :goto_0
    return v4

    .line 3552
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3553
    monitor-enter p0

    .line 3555
    if-eqz p1, :cond_2

    .line 3557
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3558
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 3571
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    move v4, v5

    .line 3558
    goto :goto_1

    .line 3563
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 3564
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3565
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 3566
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_3

    .line 3567
    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 3565
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3570
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto :goto_0
.end method

.method public getStorageEncryptionStatus(I)I
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 3581
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3582
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method public getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 20
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4362
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 4363
    const/4 v14, 0x0

    .line 4415
    :goto_0
    return-object v14

    .line 4365
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4366
    if-nez p2, :cond_1

    .line 4367
    new-instance v17, Ljava/lang/NullPointerException;

    const-string v18, "agent is null"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 4370
    :cond_1
    monitor-enter p0

    .line 4371
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 4372
    .local v7, "componentName":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 4373
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v6

    .line 4374
    .local v6, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v6, :cond_2

    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4416
    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v7    # "componentName":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 4375
    .restart local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v7    # "componentName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 4376
    .local v15, "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v15, :cond_3

    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    :cond_3
    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 4377
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4378
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    iget-object v0, v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4379
    monitor-exit p0

    goto :goto_0

    .line 4383
    .end local v6    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v15    # "trustAgentInfo":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v13

    .line 4384
    .local v13, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .line 4389
    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    const/4 v5, 0x1

    .line 4390
    .local v5, "allAdminsHaveOptions":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/UserInfo;

    .line 4391
    .local v16, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    .line 4392
    .local v12, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v0, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4393
    .local v3, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_6

    .line 4394
    iget-object v0, v12, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4395
    .local v4, "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_9

    const/4 v8, 0x1

    .line 4397
    .local v8, "disablesTrust":Z
    :goto_3
    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    .line 4398
    .local v11, "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    if-eqz v11, :cond_b

    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    .line 4399
    if-eqz v8, :cond_a

    .line 4400
    if-nez v14, :cond_7

    .line 4401
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4403
    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_7
    iget-object v0, v11, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4393
    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 4395
    .end local v8    # "disablesTrust":Z
    .end local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .line 4405
    .restart local v8    # "disablesTrust":Z
    .restart local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    :cond_a
    const-string v17, "DevicePolicyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring admin "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " because it has trust options but doesn\'t declare "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "KEYGUARD_DISABLE_TRUST_AGENTS"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4409
    :cond_b
    if-eqz v8, :cond_8

    .line 4410
    const/4 v5, 0x0

    .line 4411
    goto/16 :goto_1

    .line 4415
    .end local v3    # "N":I
    .end local v4    # "active":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v8    # "disablesTrust":Z
    .end local v9    # "i":I
    .end local v11    # "info":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
    .end local v12    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v16    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_c
    if-eqz v5, :cond_d

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .restart local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    :cond_d
    const/4 v14, 0x0

    goto :goto_5
.end method

.method getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 1009
    monitor-enter p0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1011
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-nez v0, :cond_0

    .line 1012
    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    .line 1013
    .restart local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1014
    invoke-direct {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;I)V

    .line 1016
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1017
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 1031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1033
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1035
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .locals 4
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "policyId"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1872
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1873
    const/4 v1, 0x0

    .line 1881
    :goto_0
    return v1

    .line 1875
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1876
    monitor-enter p0

    .line 1877
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1878
    .local v0, "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1879
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1882
    .end local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1881
    .restart local v0    # "administrator":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasUserSetupCompleted()Z
    .locals 1

    .prologue
    .line 4052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method public installCaCert(Landroid/content/ComponentName;[B)Z
    .locals 12
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "certBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2996
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 3000
    :try_start_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 3001
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 3010
    .local v8, "pemCert":[B
    new-instance v9, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 3011
    .local v9, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3013
    .local v4, "id":J
    :try_start_1
    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, v9}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 3015
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v10

    invoke-interface {v10, v8}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3016
    const/4 v10, 0x1

    .line 3020
    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3026
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "id":J
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v8    # "pemCert":[B
    .end local v9    # "userHandle":Landroid/os/UserHandle;
    :goto_0
    return v10

    .line 3002
    :catch_0
    move-exception v0

    .line 3003
    .local v0, "ce":Ljava/security/cert/CertificateException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem converting cert"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3004
    const/4 v10, 0x0

    goto :goto_0

    .line 3005
    .end local v0    # "ce":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .line 3006
    .local v6, "ioe":Ljava/io/IOException;
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "Problem reading cert"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3007
    const/4 v10, 0x0

    goto :goto_0

    .line 3017
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "id":J
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v8    # "pemCert":[B
    .restart local v9    # "userHandle":Landroid/os/UserHandle;
    :catch_2
    move-exception v2

    .line 3018
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3020
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3026
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 3020
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v10

    :try_start_6
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v10
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3022
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_3
    move-exception v3

    .line 3023
    .local v3, "e1":Ljava/lang/InterruptedException;
    :try_start_7
    const-string v10, "DevicePolicyManagerService"

    const-string v11, "installCaCertsToKeyChain(): "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3024
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3026
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v3    # "e1":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v10

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method public installKeyPair(Landroid/content/ComponentName;[B[BLjava/lang/String;)Z
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "privKey"    # [B
    .param p3, "cert"    # [B
    .param p4, "alias"    # Ljava/lang/String;

    .prologue
    .line 3062
    if-nez p1, :cond_0

    .line 3063
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3065
    :cond_0
    monitor-enter p0

    .line 3066
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3067
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3068
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 3069
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3071
    .local v2, "id":J
    :try_start_1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    .line 3073
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v1

    .line 3074
    .local v1, "keyChain":Landroid/security/IKeyChainService;
    invoke-interface {v1, p2, p3, p4}, Landroid/security/IKeyChainService;->installKeyPair([B[BLjava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 3078
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3084
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3086
    .end local v1    # "keyChain":Landroid/security/IKeyChainService;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_0
    return v6

    .line 3067
    .end local v2    # "id":J
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 3075
    .restart local v2    # "id":J
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 3076
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3078
    :try_start_6
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3084
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3086
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 3078
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v6

    :try_start_7
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3080
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v0

    .line 3081
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_8
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "Interrupted while installing certificate"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3082
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3084
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_2
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public isActivePasswordSufficient(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2582
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 2613
    :goto_0
    return v3

    .line 2585
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2587
    monitor-enter p0

    .line 2592
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2593
    .local v1, "parent":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    move v0, p1

    .line 2594
    .local v0, "id":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 2598
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2600
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_1

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2602
    :cond_1
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 2593
    .end local v0    # "id":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_2
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    .line 2605
    .restart local v0    # "id":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    iget-boolean v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordSimpleAllowed(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eq v5, v6, :cond_4

    iget-boolean v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    if-ne v5, v3, :cond_4

    .line 2607
    monitor-exit p0

    move v3, v4

    goto :goto_0

    .line 2610
    :cond_4
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v6, 0x60000

    if-eq v5, v6, :cond_5

    .line 2611
    monitor-exit p0

    goto :goto_0

    .line 2619
    .end local v0    # "id":I
    .end local v1    # "parent":Landroid/content/pm/UserInfo;
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2613
    .restart local v0    # "id":I
    .restart local v1    # "parent":Landroid/content/pm/UserInfo;
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_5
    :try_start_1
    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    iget v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v6, 0x0

    invoke-virtual {p0, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v6

    if-lt v5, v6, :cond_6

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 1850
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1855
    :goto_0
    return v0

    .line 1853
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1854
    monitor-enter p0

    .line 1855
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1856
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5077
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5078
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 5079
    if-nez p1, :cond_0

    .line 5080
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5095
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5082
    :cond_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5084
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 5086
    .local v2, "id":J
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5087
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 5092
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5094
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    .line 5088
    :catch_0
    move-exception v4

    .line 5090
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getApplicationHiddenSettingAsUser"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5092
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5094
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5092
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3885
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3889
    :goto_0
    return v0

    .line 3888
    :cond_0
    monitor-enter p0

    .line 3889
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceOwner;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 3892
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 5397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5398
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5399
    .local v4, "userHandle":I
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5400
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    monitor-enter p0

    .line 5401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 5402
    iget-object v5, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5406
    .local v1, "lockTaskPackage":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5407
    const/4 v5, 0x1

    monitor-exit p0

    .line 5411
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :goto_1
    return v5

    .line 5401
    .restart local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5410
    .end local v1    # "lockTaskPackage":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 5411
    const/4 v5, 0x0

    goto :goto_1

    .line 5410
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public isMasterVolumeMuted(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 5516
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5518
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5519
    if-nez p1, :cond_0

    .line 5520
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5527
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5522
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5524
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5526
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2
.end method

.method public isRemovingAdmin(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1861
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1862
    const/4 v1, 0x0

    .line 1867
    :goto_0
    return v1

    .line 1864
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1865
    monitor-enter p0

    .line 1866
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 1867
    .local v0, "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    goto :goto_0

    .line 1868
    .end local v0    # "policyData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5280
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5282
    .local v4, "userId":I
    monitor-enter p0

    .line 5283
    if-eqz p1, :cond_0

    .line 5284
    const/4 v5, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5287
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 5289
    .local v0, "id":J
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5290
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, v4}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    .line 5295
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5298
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    .line 5291
    :catch_0
    move-exception v3

    .line 5293
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to getBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5295
    :try_start_4
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5297
    monitor-exit p0

    .line 5298
    const/4 v5, 0x0

    goto :goto_0

    .line 5295
    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5

    .line 5297
    .end local v0    # "id":J
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method loadDeviceOwner()V
    .locals 1

    .prologue
    .line 1063
    monitor-enter p0

    .line 1064
    :try_start_0
    invoke-static {}, Lcom/android/server/devicepolicy/DeviceOwner;->load()Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 1065
    monitor-exit p0

    .line 1066
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockNow()V
    .locals 2

    .prologue
    .line 2951
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 2961
    :goto_0
    return-void

    .line 2954
    :cond_0
    monitor-enter p0

    .line 2957
    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2959
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lockNowUnchecked()V

    .line 2960
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    .locals 8
    .param p1, "isEnabled"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 5416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 5417
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "notifyLockTaskModeChanged can only be called by system"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5419
    :cond_0
    monitor-enter p0

    .line 5420
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 5421
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5422
    .local v1, "adminExtras":Landroid/os/Bundle;
    const-string v6, "android.app.extra.LOCK_TASK_PACKAGE"

    invoke-virtual {v1, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5423
    iget-object v6, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5424
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    .line 5425
    .local v3, "ownsDevice":Z
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 5427
    .local v4, "ownsProfile":Z
    :goto_1
    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    .line 5428
    :cond_2
    if-eqz p1, :cond_4

    .line 5429
    const-string v6, "android.app.action.LOCK_TASK_ENTERING"

    const/4 v7, 0x0

    invoke-virtual {p0, v0, v6, v1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 5436
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "adminExtras":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    .end local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5425
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "adminExtras":Landroid/os/Bundle;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ownsDevice":Z
    .restart local v5    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 5432
    .restart local v4    # "ownsProfile":Z
    :cond_4
    :try_start_1
    const-string v6, "android.app.action.LOCK_TASK_EXITING"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    goto :goto_0

    .line 5436
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "ownsDevice":Z
    .end local v4    # "ownsProfile":Z
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5437
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 1907
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1919
    :goto_0
    return v3

    .line 1910
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1911
    monitor-enter p0

    .line 1912
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 1913
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1914
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1915
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1916
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1920
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1914
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1919
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1924
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1948
    :goto_0
    return-void

    .line 1927
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1928
    monitor-enter p0

    .line 1929
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1930
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-nez v0, :cond_1

    .line 1931
    monitor-exit p0

    goto :goto_0

    .line 1947
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1933
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-eq v1, v4, :cond_3

    .line 1935
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1936
    monitor-exit p0

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_DEVICE_ADMINS"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 1943
    .local v2, "ident":J
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1945
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1947
    monitor-exit p0

    goto :goto_0

    .line 1945
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 1261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1262
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    .line 1263
    monitor-enter p0

    .line 1264
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1290
    :cond_0
    return-void

    .line 1265
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2184
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2185
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 2187
    .local v1, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 2188
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2190
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-nez v6, :cond_1

    .line 2191
    monitor-exit p0

    .line 2205
    :cond_0
    :goto_0
    return v5

    .line 2193
    :cond_1
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 2194
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2196
    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 2198
    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2200
    if-eqz v1, :cond_0

    .line 2201
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLocalService:Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    invoke-static {v5, v4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V

    .line 2202
    const/4 v5, 0x1

    goto :goto_0

    .line 2198
    .end local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .end local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "changedProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1
.end method

.method public removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 4889
    monitor-enter p0

    .line 4890
    if-nez p1, :cond_0

    .line 4891
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4901
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4893
    :cond_0
    const/4 v2, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4897
    .local v0, "id":J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 4899
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v2

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method removeUserData(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1040
    monitor-enter p0

    .line 1041
    if-nez p1, :cond_0

    .line 1042
    :try_start_0
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    monitor-exit p0

    .line 1060
    :goto_0
    return-void

    .line 1045
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v2, :cond_1

    .line 1046
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->removeProfileOwner(I)V

    .line 1047
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 1050
    :cond_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1051
    .local v0, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    if-eqz v0, :cond_2

    .line 1052
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1054
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1056
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1057
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    goto :goto_0

    .line 1058
    .end local v0    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 3288
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3289
    const-string v7, "report failed password attempt"

    invoke-direct {p0, p1, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3290
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3295
    .local v0, "ident":J
    const/4 v6, 0x0

    .line 3296
    .local v6, "wipeData":Z
    const/4 v2, 0x0

    .line 3297
    .local v2, "identifier":I
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3298
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3299
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3300
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3301
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v7, :cond_2

    .line 3302
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAdminWithMinimumFailedPasswordsForWipeLocked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v5

    .line 3304
    .local v5, "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v5, :cond_0

    iget v3, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 3306
    .local v3, "max":I
    :cond_0
    if-lez v3, :cond_1

    iget v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-lt v7, v3, :cond_1

    .line 3310
    const/4 v6, 0x1

    .line 3311
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 3313
    :cond_1
    const-string v7, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V

    .line 3317
    .end local v3    # "max":I
    .end local v5    # "strictestAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3318
    if-eqz v6, :cond_3

    .line 3320
    const/4 v7, 0x0

    :try_start_2
    const-string v8, "reportFailedPasswordAttempt()"

    invoke-direct {p0, v7, v2, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3324
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3326
    return-void

    .line 3317
    .end local v4    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3324
    :catchall_1
    move-exception v7

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    .line 3329
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3330
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3333
    monitor-enter p0

    .line 3334
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 3335
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2

    .line 3336
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 3338
    .local v0, "ident":J
    const/4 v3, 0x0

    :try_start_1
    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3339
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 3340
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3341
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-eqz v3, :cond_1

    .line 3342
    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3347
    :cond_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3350
    .end local v0    # "ident":J
    :cond_2
    monitor-exit p0

    .line 3351
    return-void

    .line 3347
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3350
    .end local v0    # "ident":J
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .locals 36
    .param p1, "passwordOrNull"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2731
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    move/from16 v33, v0

    if-nez v33, :cond_0

    .line 2732
    const/16 v33, 0x0

    .line 2872
    :goto_0
    return v33

    .line 2734
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2735
    const-string v33, "reset the password"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 2737
    if-eqz p1, :cond_1

    move-object/from16 v24, p1

    .line 2740
    .local v24, "password":Ljava/lang/String;
    :goto_1
    monitor-enter p0

    .line 2743
    const/16 v33, 0x0

    const/16 v34, 0x2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2745
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v26

    .line 2746
    .local v26, "quality":I
    if-eqz v26, :cond_3

    .line 2747
    invoke-static/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v27

    .line 2748
    .local v27, "realQuality":I
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    const/high16 v33, 0x60000

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 2750
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: password quality 0x"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required quality 0x"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    const/16 v33, 0x0

    monitor-exit p0

    goto :goto_0

    .line 2838
    .end local v26    # "quality":I
    .end local v27    # "realQuality":I
    :catchall_0
    move-exception v33

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v33

    .line 2737
    .end local v24    # "password":Ljava/lang/String;
    :cond_1
    const-string v24, ""

    goto :goto_1

    .line 2756
    .restart local v24    # "password":Ljava/lang/String;
    .restart local v26    # "quality":I
    .restart local v27    # "realQuality":I
    :cond_2
    :try_start_1
    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 2758
    .end local v27    # "realQuality":I
    :cond_3
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v12

    .line 2759
    .local v12, "length":I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-ge v0, v12, :cond_4

    .line 2760
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: password length "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required length "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2764
    :cond_4
    const/high16 v33, 0x60000

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 2765
    const/4 v13, 0x0

    .line 2766
    .local v13, "letters":I
    const/16 v31, 0x0

    .line 2767
    .local v31, "uppercase":I
    const/4 v14, 0x0

    .line 2768
    .local v14, "lowercase":I
    const/16 v23, 0x0

    .line 2769
    .local v23, "numbers":I
    const/16 v30, 0x0

    .line 2770
    .local v30, "symbols":I
    const/16 v22, 0x0

    .line 2771
    .local v22, "nonletter":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v33

    if-ge v8, v0, :cond_8

    .line 2772
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2773
    .local v6, "c":C
    const/16 v33, 0x41

    move/from16 v0, v33

    if-lt v6, v0, :cond_5

    const/16 v33, 0x5a

    move/from16 v0, v33

    if-gt v6, v0, :cond_5

    .line 2774
    add-int/lit8 v13, v13, 0x1

    .line 2775
    add-int/lit8 v31, v31, 0x1

    .line 2771
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2776
    :cond_5
    const/16 v33, 0x61

    move/from16 v0, v33

    if-lt v6, v0, :cond_6

    const/16 v33, 0x7a

    move/from16 v0, v33

    if-gt v6, v0, :cond_6

    .line 2777
    add-int/lit8 v13, v13, 0x1

    .line 2778
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 2779
    :cond_6
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v6, v0, :cond_7

    const/16 v33, 0x39

    move/from16 v0, v33

    if-gt v6, v0, :cond_7

    .line 2780
    add-int/lit8 v23, v23, 0x1

    .line 2781
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 2783
    :cond_7
    add-int/lit8 v30, v30, 0x1

    .line 2784
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 2787
    .end local v6    # "c":C
    :cond_8
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v15

    .line 2788
    .local v15, "neededLetters":I
    if-ge v13, v15, :cond_9

    .line 2789
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: number of letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2793
    :cond_9
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v18

    .line 2794
    .local v18, "neededNumbers":I
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 2795
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: number of numerical digits "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of numerical digits "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2800
    :cond_a
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v16

    .line 2801
    .local v16, "neededLowerCase":I
    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    .line 2802
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of lowercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2807
    :cond_b
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v20

    .line 2808
    .local v20, "neededUpperCase":I
    move/from16 v0, v31

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 2809
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of uppercase letters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2814
    :cond_c
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v19

    .line 2815
    .local v19, "neededSymbols":I
    move/from16 v0, v30

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 2816
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: number of special symbols "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of special symbols "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2820
    :cond_d
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v17

    .line 2821
    .local v17, "neededNonLetter":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .line 2822
    const-string v33, "DevicePolicyManagerService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " does not meet required number of non-letter characters "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2829
    .end local v8    # "i":I
    .end local v13    # "letters":I
    .end local v14    # "lowercase":I
    .end local v15    # "neededLetters":I
    .end local v16    # "neededLowerCase":I
    .end local v17    # "neededNonLetter":I
    .end local v18    # "neededNumbers":I
    .end local v19    # "neededSymbols":I
    .end local v20    # "neededUpperCase":I
    .end local v22    # "nonletter":I
    .end local v23    # "numbers":I
    .end local v30    # "symbols":I
    .end local v31    # "uppercase":I
    :cond_e
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordSimpleAllowed(Landroid/content/ComponentName;I)Z

    move-result v29

    .line 2830
    .local v29, "simpleAllowed":Z
    if-nez v29, :cond_f

    .line 2831
    invoke-static/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isPasswordSimple(Ljava/lang/String;)Z

    move-result v9

    .line 2832
    .local v9, "isSimple":Z
    if-eqz v9, :cond_f

    .line 2833
    const-string v33, "DevicePolicyManagerService"

    const-string v34, "resetPassword: simple password not allowed"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    const/16 v33, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 2838
    .end local v9    # "isSimple":Z
    :cond_f
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2841
    .local v7, "callingUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v25

    .line 2842
    .local v25, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v33, v0

    if-ltz v33, :cond_10

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v7, :cond_10

    .line 2843
    const-string v33, "DevicePolicyManagerService"

    const-string v34, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 2849
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2851
    .local v10, "ident":J
    :try_start_2
    new-instance v32, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2852
    .local v32, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_13

    .line 2853
    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v33

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 2857
    :goto_4
    and-int/lit8 v33, p2, 0x1

    if-eqz v33, :cond_14

    const/16 v28, 0x1

    .line 2858
    .local v28, "requireEntry":Z
    :goto_5
    if-eqz v28, :cond_11

    .line 2859
    const/16 v33, -0x1

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 2861
    :cond_11
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2862
    if-eqz v28, :cond_15

    move/from16 v21, v7

    .line 2863
    .local v21, "newOwner":I
    :goto_6
    :try_start_3
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    .line 2864
    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 2865
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2867
    :cond_12
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2869
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2872
    const/16 v33, 0x1

    goto/16 :goto_0

    .line 2855
    .end local v21    # "newOwner":I
    .end local v28    # "requireEntry":Z
    :cond_13
    const/16 v33, 0x0

    :try_start_4
    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 2869
    .end local v32    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :catchall_1
    move-exception v33

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v33

    .line 2857
    .restart local v32    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_14
    const/16 v28, 0x0

    goto :goto_5

    .line 2862
    .restart local v28    # "requireEntry":Z
    :cond_15
    const/16 v21, -0x1

    goto :goto_6

    .line 2867
    .restart local v21    # "newOwner":I
    :catchall_2
    move-exception v33

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v33
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 1204
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V

    .line 1208
    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "admin"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "adminExtras"    # Landroid/os/Bundle;
    .param p4, "result"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 1215
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1217
    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1220
    :cond_0
    if-eqz p3, :cond_1

    .line 1221
    invoke-virtual {v1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1223
    :cond_1
    if-eqz p4, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p4

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1229
    :goto_0
    return-void

    .line 1227
    :cond_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "reqPolicy"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1235
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    .line 1236
    .local v3, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1237
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 1238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1239
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 1240
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1241
    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    .line 1238
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1245
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .prologue
    .line 5210
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5226
    :goto_0
    return-void

    .line 5213
    :cond_0
    monitor-enter p0

    .line 5214
    if-nez p1, :cond_1

    .line 5215
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5225
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5217
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5219
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz p3, :cond_2

    .line 5220
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5224
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5225
    monitor-exit p0

    goto :goto_0

    .line 5222
    :cond_2
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->accountTypesWithManagementDisabled:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .locals 1
    .param p1, "adminReceiver"    # Landroid/content/ComponentName;
    .param p2, "refreshing"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 1799
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v0, :cond_0

    .line 1803
    :goto_0
    return-void

    .line 1802
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setActiveAdmin(Landroid/content/ComponentName;ZILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setActivePasswordState(IIIIIIIIZI)V
    .locals 8
    .param p1, "quality"    # I
    .param p2, "length"    # I
    .param p3, "letters"    # I
    .param p4, "uppercase"    # I
    .param p5, "lowercase"    # I
    .param p6, "numbers"    # I
    .param p7, "symbols"    # I
    .param p8, "nonletter"    # I
    .param p9, "simpleAllowed"    # Z
    .param p10, "userHandle"    # I

    .prologue
    .line 3217
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 3262
    :goto_0
    return-void

    .line 3220
    :cond_0
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3221
    const-string v5, "set the active password"

    move/from16 v0, p10

    invoke-direct {p0, v0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3223
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    move/from16 v0, p10

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3227
    .local v4, "p":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 3229
    monitor-enter p0

    .line 3230
    :try_start_0
    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v5, p1, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v5, p2, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v5, p3, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v5, p4, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v5, p5, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v5, p6, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v5, p7, :cond_1

    iget v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    move/from16 v0, p8

    if-ne v5, v0, :cond_1

    iget-boolean v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    move/from16 v0, p9

    if-eq v5, v0, :cond_2

    .line 3238
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3240
    .local v2, "ident":J
    :try_start_1
    iput p1, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    .line 3241
    iput p2, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    .line 3242
    iput p3, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    .line 3243
    iput p5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    .line 3244
    iput p4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    .line 3245
    iput p6, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    .line 3246
    iput p7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    .line 3247
    move/from16 v0, p8

    iput v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    .line 3249
    move/from16 v0, p9

    iput-boolean v0, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSimpleAllowed:Z

    .line 3250
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    .line 3251
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3252
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    .line 3253
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3254
    const-string v5, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v6, 0x0

    move/from16 v0, p10

    invoke-direct {p0, v5, v6, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandToSelfAndProfilesLocked(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3258
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3261
    .end local v2    # "ident":J
    :cond_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 3258
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v5

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "hidden"    # Z

    .prologue
    .line 5054
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5055
    .local v0, "callingUserId":I
    monitor-enter p0

    .line 5056
    if-nez p1, :cond_0

    .line 5057
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5072
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5059
    :cond_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5061
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 5063
    .local v2, "id":J
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 5064
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p2, p3, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 5069
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5071
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    return v5

    .line 5065
    :catch_0
    move-exception v4

    .line 5067
    .local v4, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setApplicationHiddenSetting"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5069
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5071
    const/4 v5, 0x0

    monitor-exit p0

    goto :goto_0

    .line 5069
    .end local v4    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "settings"    # Landroid/os/Bundle;

    .prologue
    .line 4321
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 4323
    .local v2, "userHandle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 4324
    if-nez p1, :cond_0

    .line 4325
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4335
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4327
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4331
    .local v0, "id":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2, p3, v2}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4333
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4335
    monitor-exit p0

    .line 4336
    return-void

    .line 4333
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setAutoTimeRequired(Landroid/content/ComponentName;IZ)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "required"    # Z

    .prologue
    .line 3690
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_1

    .line 3716
    :cond_0
    :goto_0
    return-void

    .line 3693
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3694
    monitor-enter p0

    .line 3695
    if-nez p1, :cond_2

    .line 3696
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3704
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3698
    :cond_2
    const/4 v1, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3700
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    if-eq v1, p3, :cond_3

    .line 3701
    iput-boolean p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->requireAutoTime:Z

    .line 3702
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3704
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3707
    if-eqz p3, :cond_0

    .line 3708
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3710
    .local v2, "ident":J
    :try_start_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "auto_time"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3713
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 3741
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3757
    :goto_0
    return-void

    .line 3744
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3745
    monitor-enter p0

    .line 3746
    if-nez p1, :cond_1

    .line 3747
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3756
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3749
    :cond_1
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3751
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_2

    .line 3752
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    .line 3753
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3755
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3756
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .prologue
    .line 5303
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 5317
    :goto_0
    return-void

    .line 5306
    :cond_0
    monitor-enter p0

    .line 5307
    if-nez p1, :cond_1

    .line 5308
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5316
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5310
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5312
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    if-eq v1, p2, :cond_2

    .line 5313
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableCallerId:Z

    .line 5314
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5316
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3838
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 3878
    :goto_0
    return v4

    .line 3841
    :cond_0
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3843
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid package name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for device owner"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3846
    :cond_2
    monitor-enter p0

    .line 3847
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->allowedToSetDeviceOwnerOnDevice()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3848
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Trying to set device owner but device is already provisioned."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3880
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 3852
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->hasDeviceOwner()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3853
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Trying to set device owner but device owner is already set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3858
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 3860
    .local v2, "ident":J
    :try_start_2
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 3862
    .local v1, "ibm":Landroid/app/backup/IBackupManager;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v4, v6}, Landroid/app/backup/IBackupManager;->setBackupServiceActive(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3866
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3869
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v4, :cond_5

    .line 3871
    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithDeviceOwner(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 3872
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 3873
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v4, v5

    goto :goto_0

    .line 3863
    .end local v1    # "ibm":Landroid/app/backup/IBackupManager;
    :catch_0
    move-exception v0

    .line 3864
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed deactivating backup service."

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3866
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3876
    .restart local v1    # "ibm":Landroid/app/backup/IBackupManager;
    :cond_5
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/devicepolicy/DeviceOwner;->setDeviceOwner(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 3878
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v5

    goto/16 :goto_0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1073
    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v12

    .line 1074
    .local v12, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1075
    .local v14, "now":J
    sub-long v16, v12, v14

    .line 1077
    .local v16, "timeToExpire":J
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-nez v20, :cond_1

    .line 1079
    const-wide/16 v8, 0x0

    .line 1093
    .local v8, "alarmTime":J
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1095
    .local v18, "token":J
    :try_start_0
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AlarmManager;

    .line 1096
    .local v10, "am":Landroid/app/AlarmManager;
    const/16 v20, 0x15c3

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v22, 0x48000000    # 131072.0f

    new-instance v23, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1100
    .local v11, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1101
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-eqz v20, :cond_0

    .line 1102
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0, v8, v9, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1105
    :cond_0
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    return-void

    .line 1080
    .end local v8    # "alarmTime":J
    .end local v10    # "am":Landroid/app/AlarmManager;
    .end local v11    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "token":J
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-gtz v20, :cond_2

    .line 1082
    const-wide/32 v20, 0x5265c00

    add-long v8, v14, v20

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .line 1086
    .end local v8    # "alarmTime":J
    :cond_2
    const-wide/32 v20, 0x5265c00

    rem-long v6, v16, v20

    .line 1087
    .local v6, "alarmInterval":J
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_3

    .line 1088
    const-wide/32 v6, 0x5265c00

    .line 1090
    :cond_3
    add-long v8, v14, v6

    .restart local v8    # "alarmTime":J
    goto :goto_0

    .line 1105
    .end local v6    # "alarmInterval":J
    .restart local v18    # "token":J
    :catchall_0
    move-exception v20

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 11
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxySpec"    # Ljava/lang/String;
    .param p3, "exclusionList"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 3355
    iget-boolean v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v8, :cond_0

    .line 3356
    const/4 v3, 0x0

    .line 3406
    :goto_0
    return-object v3

    .line 3358
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3359
    monitor-enter p0

    .line 3360
    if-nez p1, :cond_1

    .line 3361
    :try_start_0
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3407
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 3365
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    .line 3366
    .local v5, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3371
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 3372
    .local v2, "compSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 3373
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3374
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v8, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_2

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3377
    monitor-exit p0

    goto :goto_0

    .line 3382
    .end local v1    # "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_4

    .line 3383
    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_0

    .line 3387
    :cond_4
    if-nez p2, :cond_5

    .line 3388
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3389
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3390
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    .line 3400
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 3402
    .local v6, "origId":J
    :try_start_2
    invoke-direct {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3404
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3406
    const/4 v3, 0x0

    monitor-exit p0

    goto/16 :goto_0

    .line 3393
    .end local v6    # "origId":J
    :cond_5
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    .line 3394
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    .line 3395
    iput-object p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    goto :goto_1

    .line 3404
    .restart local v6    # "origId":J
    :catchall_1
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 5441
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5443
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5444
    if-nez p1, :cond_0

    .line 5445
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5460
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5447
    :cond_0
    const/4 v1, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5449
    sget-object v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->GLOBAL_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5450
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Permission denial: device owners cannot update %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5454
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 5456
    .local v2, "id":J
    :try_start_2
    invoke-static {v0, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5458
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5460
    monitor-exit p0

    .line 5461
    return-void

    .line 5458
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "which"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 3790
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3807
    :goto_0
    return-void

    .line 3793
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3794
    const-string v1, "disable keyguard features"

    invoke-direct {p0, p3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 3795
    monitor-enter p0

    .line 3796
    if-nez p1, :cond_1

    .line 3797
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3806
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3799
    :cond_1
    const/16 v1, 0x9

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3801
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_2

    .line 3802
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    .line 3803
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3805
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 3806
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 5353
    monitor-enter p0

    .line 5354
    if-nez p1, :cond_0

    .line 5355
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5371
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5357
    :cond_0
    const/4 v4, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5359
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 5360
    .local v3, "userHandle":I
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5361
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5362
    if-eqz p2, :cond_1

    .line 5363
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 5364
    aget-object v1, p2, v0

    .line 5365
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5370
    .end local v0    # "j":I
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5371
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5372
    return-void
.end method

.method public setMasterVolumeMuted(Landroid/content/ComponentName;Z)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "on"    # Z

    .prologue
    .line 5400
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5402
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5403
    if-nez p1, :cond_0

    .line 5404
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5415
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5406
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5408
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 5411
    .local v1, "iAudioService":Landroid/media/IAudioService;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p2, v3, v4}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5415
    :goto_0
    :try_start_3
    monitor-exit p0

    .line 5416
    return-void

    .line 5412
    :catch_0
    move-exception v2

    .line 5413
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Failed to setMasterMute"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "num"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2655
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2674
    :goto_0
    return-void

    .line 2658
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2659
    monitor-enter p0

    .line 2660
    if-nez p1, :cond_1

    .line 2661
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2673
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2665
    :cond_1
    const/4 v1, 0x4

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 2667
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2669
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_2

    .line 2670
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    .line 2671
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2673
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeMs"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2876
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2892
    :goto_0
    return-void

    .line 2879
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2880
    monitor-enter p0

    .line 2881
    if-nez p1, :cond_1

    .line 2882
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2891
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2884
    :cond_1
    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2886
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v2, p2

    if-eqz v1, :cond_2

    .line 2887
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    .line 2888
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2889
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2891
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .locals 8
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "timeout"    # J
    .param p4, "userHandle"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 2094
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2120
    :goto_0
    return-void

    .line 2097
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2098
    monitor-enter p0

    .line 2099
    if-nez p1, :cond_1

    .line 2100
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2119
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2102
    :cond_1
    cmp-long v1, p2, v4

    if-gez v1, :cond_2

    .line 2103
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2105
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2108
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    cmp-long v1, p2, v4

    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, p2, v6

    .line 2109
    .local v2, "expiration":J
    :goto_1
    iput-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    .line 2110
    iput-wide p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    .line 2111
    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    .line 2112
    const-string v1, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2118
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 2119
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v2    # "expiration":J
    :cond_4
    move-wide v2, v4

    .line 2108
    goto :goto_1
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2047
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2062
    :goto_0
    return-void

    .line 2050
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2051
    monitor-enter p0

    .line 2052
    if-nez p1, :cond_1

    .line 2053
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2061
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2055
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2057
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_2

    .line 2058
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    .line 2059
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2061
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2000
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2015
    :goto_0
    return-void

    .line 2003
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2004
    monitor-enter p0

    .line 2005
    if-nez p1, :cond_1

    .line 2006
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2014
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2008
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2010
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_2

    .line 2011
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    .line 2012
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2014
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2354
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2369
    :goto_0
    return-void

    .line 2357
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2358
    monitor-enter p0

    .line 2359
    if-nez p1, :cond_1

    .line 2360
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2368
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2362
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2364
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_2

    .line 2365
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    .line 2366
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2368
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2310
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2311
    monitor-enter p0

    .line 2312
    if-nez p1, :cond_0

    .line 2313
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2321
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2315
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2317
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1

    .line 2318
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    .line 2319
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2321
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2322
    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2495
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2510
    :goto_0
    return-void

    .line 2498
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2499
    monitor-enter p0

    .line 2500
    if-nez p1, :cond_1

    .line 2501
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2509
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2503
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2505
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_2

    .line 2506
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    .line 2507
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2509
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2401
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2416
    :goto_0
    return-void

    .line 2404
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2405
    monitor-enter p0

    .line 2406
    if-nez p1, :cond_1

    .line 2407
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2415
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2409
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2411
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_2

    .line 2412
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    .line 2413
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2415
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2448
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2463
    :goto_0
    return-void

    .line 2451
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2452
    monitor-enter p0

    .line 2453
    if-nez p1, :cond_1

    .line 2454
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2462
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2456
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2458
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_2

    .line 2459
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    .line 2460
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2462
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "length"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2263
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 2278
    :goto_0
    return-void

    .line 2266
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2267
    monitor-enter p0

    .line 2268
    if-nez p1, :cond_1

    .line 2269
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2277
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2271
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2273
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_2

    .line 2274
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    .line 2275
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2277
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 1951
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 1968
    :goto_0
    return-void

    .line 1954
    :cond_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->validateQualityConstant(I)V

    .line 1955
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 1957
    monitor-enter p0

    .line 1958
    if-nez p1, :cond_1

    .line 1959
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1967
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1961
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 1963
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_2

    .line 1964
    iput p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    .line 1965
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 1967
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPasswordSimpleAllowed(Landroid/content/ComponentName;ZI)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "allowed"    # Z
    .param p3, "userHandle"    # I

    .prologue
    .line 2543
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 2544
    monitor-enter p0

    .line 2545
    if-nez p1, :cond_0

    .line 2546
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2554
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2548
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 2550
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordAllowed:Z

    if-eq v1, p2, :cond_1

    .line 2551
    iput-boolean p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->simplePasswordAllowed:Z

    .line 2552
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 2554
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2555
    return-void
.end method

.method public setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 13
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v10, 0x0

    .line 4545
    iget-boolean v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v11, :cond_0

    .line 4587
    :goto_0
    return v10

    .line 4548
    :cond_0
    if-nez p1, :cond_1

    .line 4549
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "ComponentName is null"

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4552
    :cond_1
    if-eqz p2, :cond_4

    .line 4553
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 4554
    .local v9, "userId":I
    const/4 v3, 0x0

    .line 4555
    .local v3, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4557
    .local v6, "id":J
    :try_start_0
    iget-object v11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v11, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 4558
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4559
    iget v9, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 4561
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAccessibilityManagerForUser(I)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 4562
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 4565
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4568
    if-eqz v3, :cond_4

    .line 4569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4570
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 4571
    .local v5, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4565
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v10

    .line 4573
    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 4574
    const-string v11, "DevicePolicyManagerService"

    const-string v12, "Cannot set permitted accessibility services, because it contains already enabled accesibility services."

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4581
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":J
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    :cond_4
    monitor-enter p0

    .line 4582
    const/4 v10, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 4584
    .local v1, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedAccessiblityServices:Ljava/util/List;

    .line 4585
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4586
    monitor-exit p0

    .line 4587
    const/4 v10, 0x1

    goto :goto_0

    .line 4586
    .end local v1    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_1
    move-exception v10

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10
.end method

.method public setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageList"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    .line 4705
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_1

    .line 4745
    :cond_0
    :goto_0
    return v6

    .line 4708
    :cond_1
    if-nez p1, :cond_2

    .line 4709
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "ComponentName is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4714
    :cond_2
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkCallerIsCurrentUserOrProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4718
    if-eqz p2, :cond_4

    .line 4722
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 4724
    .local v5, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 4726
    .local v1, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v1, :cond_4

    .line 4727
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4728
    .local v2, "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 4729
    .local v4, "ime":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4731
    .end local v4    # "ime":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->checkPackagesInPermittedListOrSystem(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 4732
    const-string v7, "DevicePolicyManagerService"

    const-string v8, "Cannot set permitted input methods, because it contains already enabled input method."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4739
    .end local v1    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "enabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    monitor-enter p0

    .line 4740
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4742
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->permittedInputMethods:Ljava/util/List;

    .line 4743
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4744
    monitor-exit p0

    .line 4745
    const/4 v6, 0x1

    goto :goto_0

    .line 4744
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public setProfileEnabled(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;

    .prologue
    .line 4066
    iget-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v5, :cond_0

    .line 4092
    :goto_0
    return-void

    .line 4069
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4070
    .local v3, "userHandle":I
    monitor-enter p0

    .line 4072
    if-nez p1, :cond_1

    .line 4073
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4091
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4076
    :cond_1
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4077
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4079
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 4081
    .local v0, "id":J
    :try_start_2
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->setUserEnabled(I)V

    .line 4082
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4083
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.USER"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4084
    const/high16 v5, 0x50000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4087
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4089
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4091
    monitor-exit p0

    goto :goto_0

    .line 4089
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 4096
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4098
    .local v2, "userId":I
    if-nez p1, :cond_0

    .line 4099
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4103
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4107
    .local v0, "id":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2, p2}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4109
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 4111
    return-void

    .line 4109
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    .line 3972
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v2, :cond_0

    .line 3973
    const/4 v1, 0x0

    .line 4010
    :goto_0
    return v1

    .line 3975
    :cond_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_USERS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 3978
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    .line 3980
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to set profile owner for invalid userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3983
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3984
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot set a profile owner on a guest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3987
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->isInstalledForUser(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3989
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not installed for userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3992
    :cond_4
    monitor-enter p0

    .line 3994
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3996
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to set profile owner but user is already set-up."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4012
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4000
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    if-nez v2, :cond_6

    .line 4002
    invoke-static {p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->createWithProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    .line 4004
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 4005
    monitor-exit p0

    goto/16 :goto_0

    .line 4008
    :cond_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceOwner;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 4009
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DeviceOwner;->writeOwnerFile()V

    .line 4010
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V
    .locals 5
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "proxyInfo"    # Landroid/net/ProxyInfo;

    .prologue
    .line 3434
    monitor-enter p0

    .line 3435
    const/4 v1, -0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 3436
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3439
    .local v2, "token":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3441
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3443
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3445
    return-void

    .line 3436
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "token":J
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3443
    .restart local v2    # "token":J
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "permissionProvider"    # Landroid/content/ComponentName;

    .prologue
    .line 4421
    monitor-enter p0

    .line 4422
    if-nez p1, :cond_0

    .line 4423
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ComponentName is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4431
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4425
    :cond_0
    const/4 v2, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4427
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4428
    .local v1, "userHandle":I
    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    .line 4429
    .local v0, "userData":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iput-object p2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    .line 4430
    invoke-direct {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4431
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4432
    return-void
.end method

.method public setScreenCaptureDisabled(Landroid/content/ComponentName;IZ)V
    .locals 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I
    .param p3, "disabled"    # Z

    .prologue
    .line 3631
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 3647
    :goto_0
    return-void

    .line 3634
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3635
    monitor-enter p0

    .line 3636
    if-nez p1, :cond_1

    .line 3637
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3646
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3639
    :cond_1
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3641
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    if-eq v1, p3, :cond_2

    .line 3642
    iput-boolean p3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->disableScreenCapture:Z

    .line 3643
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3644
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 3646
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 5465
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5466
    .local v1, "callingUserId":I
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5468
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    monitor-enter p0

    .line 5469
    if-nez p1, :cond_0

    .line 5470
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5491
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5472
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 5475
    .local v0, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5476
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_DEVICEOWNER_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5477
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Device owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5480
    :cond_1
    sget-object v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->SECURE_SETTINGS_WHITELIST:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5481
    new-instance v3, Ljava/lang/SecurityException;

    const-string v6, "Permission denial: Profile owners cannot update %1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5485
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    .line 5487
    .local v4, "id":J
    :try_start_2
    invoke-static {v2, p2, p3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5489
    :try_start_3
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5491
    monitor-exit p0

    .line 5492
    return-void

    .line 5489
    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .locals 9
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "encrypt"    # Z
    .param p3, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    .line 3495
    iget-boolean v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v6, :cond_0

    .line 3538
    :goto_0
    return v5

    .line 3498
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3499
    monitor-enter p0

    .line 3501
    if-nez p1, :cond_1

    .line 3502
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3541
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3505
    :cond_1
    if-nez p3, :cond_2

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3

    .line 3507
    :cond_2
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    monitor-exit p0

    goto :goto_0

    .line 3512
    :cond_3
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    .line 3516
    .local v1, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3517
    monitor-exit p0

    goto :goto_0

    .line 3521
    :cond_4
    iget-boolean v5, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_5

    .line 3522
    iput-boolean p2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    .line 3523
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 3526
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    .line 3528
    .local v4, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    const/4 v3, 0x0

    .line 3529
    .local v3, "newRequested":Z
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3530
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 3531
    iget-object v5, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    .line 3530
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3535
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    .line 3538
    if-eqz v3, :cond_7

    const/4 v5, 0x3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_7
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public setTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)V
    .locals 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "agent"    # Landroid/content/ComponentName;
    .param p3, "args"    # Landroid/os/PersistableBundle;
    .param p4, "userHandle"    # I

    .prologue
    .line 4340
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v1, :cond_0

    .line 4358
    :goto_0
    return-void

    .line 4343
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 4344
    const-string v1, "set trust agent configuration"

    invoke-direct {p0, p4, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceNotManagedProfile(ILjava/lang/String;)V

    .line 4345
    monitor-enter p0

    .line 4346
    if-nez p1, :cond_1

    .line 4347
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "admin is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4357
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4349
    :cond_1
    if-nez p2, :cond_2

    .line 4350
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "agent is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4352
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 4354
    .local v0, "ap":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->trustAgentInfos:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;

    invoke-direct {v3, p3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4355
    invoke-direct {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 4356
    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V

    .line 4357
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uninstallBlocked"    # Z

    .prologue
    .line 5254
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 5256
    .local v4, "userId":I
    monitor-enter p0

    .line 5257
    if-nez p1, :cond_0

    .line 5258
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5272
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 5260
    :cond_0
    const/4 v5, -0x1

    :try_start_1
    invoke-virtual {p0, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 5262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 5264
    .local v0, "id":J
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 5265
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v2, p2, p3, v4}, Landroid/content/pm/IPackageManager;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5270
    :try_start_3
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    .line 5272
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5273
    return-void

    .line 5266
    :catch_0
    move-exception v3

    .line 5268
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failed to setBlockUninstallForUser"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5270
    :try_start_5
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 4853
    new-instance v13, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    invoke-direct {v13, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 4854
    .local v13, "user":Landroid/os/UserHandle;
    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v14

    .line 4855
    .local v14, "userHandle":I
    monitor-enter p0

    .line 4856
    if-nez p1, :cond_0

    .line 4857
    :try_start_0
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v18, "ComponentName is null"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 4954
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 4859
    :cond_0
    const/4 v15, -0x1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    .line 4861
    .local v2, "activeAdmin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v15, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v15}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v5

    .line 4862
    .local v5, "isDeviceOwner":Z
    if-nez v5, :cond_1

    if-eqz v14, :cond_1

    sget-object v15, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DEVICE_OWNER_USER_RESTRICTIONS:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 4864
    new-instance v15, Ljava/lang/SecurityException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Profile owners cannot set user restriction "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 4866
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v13}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 4868
    .local v3, "alreadyRestricted":Z
    const/4 v4, 0x0

    .line 4869
    .local v4, "iAudioService":Landroid/media/IAudioService;
    const-string v15, "no_unmute_microphone"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "no_adjust_volume"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 4871
    :cond_2
    const-string v15, "audio"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 4875
    :cond_3
    if-eqz p3, :cond_4

    if-nez v3, :cond_4

    .line 4877
    :try_start_2
    const-string v15, "no_unmute_microphone"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 4878
    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v15, v0}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4887
    :cond_4
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v6

    .line 4889
    .local v6, "id":J
    if-eqz p3, :cond_5

    if-nez v3, :cond_5

    .line 4890
    :try_start_4
    const-string v15, "no_config_wifi"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 4891
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "wifi_networks_available_notification_on"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4924
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v15, v0, v1, v13}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 4925
    move/from16 v0, p3

    if-eq v0, v3, :cond_6

    .line 4926
    const-string v15, "no_share_location"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 4929
    const-string v10, "sys.settings_secure_version"

    .line 4930
    .local v10, "property":Ljava/lang/String;
    const-string v15, "sys.settings_secure_version"

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v15, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    const-wide/16 v20, 0x1

    add-long v16, v18, v20

    .line 4931
    .local v16, "version":J
    const-string v15, "sys.settings_secure_version"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4933
    const-string v9, "location_providers_allowed"

    .line 4934
    .local v9, "name":Ljava/lang/String;
    sget-object v15, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v18, "location_providers_allowed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 4935
    .local v12, "url":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v12, v0, v1, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4939
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "property":Ljava/lang/String;
    .end local v12    # "url":Landroid/net/Uri;
    .end local v16    # "version":J
    :cond_6
    :try_start_5
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4941
    if-nez p3, :cond_7

    if-eqz v3, :cond_7

    .line 4943
    :try_start_6
    const-string v15, "no_unmute_microphone"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 4944
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v4, v15, v0}, Landroid/media/IAudioService;->setMicrophoneMute(ZLjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4953
    :cond_7
    :goto_2
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendChangedNotification(I)V

    .line 4954
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4955
    return-void

    .line 4879
    .end local v6    # "id":J
    :cond_8
    :try_start_8
    const-string v15, "no_adjust_volume"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 4880
    const/4 v15, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v15, v0, v1}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 4883
    :catch_0
    move-exception v11

    .line 4884
    .local v11, "re":Landroid/os/RemoteException;
    :try_start_9
    const-string v15, "DevicePolicyManagerService"

    const-string v18, "Failed to talk to AudioService."

    move-object/from16 v0, v18

    invoke-static {v15, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 4894
    .end local v11    # "re":Landroid/os/RemoteException;
    .restart local v6    # "id":J
    :cond_9
    :try_start_a
    const-string v15, "no_usb_file_transfer"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 4895
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v18, "usb"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbManager;

    .line 4897
    .local v8, "manager":Landroid/hardware/usb/UsbManager;
    const-string v15, "none"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 4939
    .end local v8    # "manager":Landroid/hardware/usb/UsbManager;
    :catchall_1
    move-exception v15

    :try_start_b
    invoke-static {v6, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4898
    :cond_a
    :try_start_c
    const-string v15, "no_share_location"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 4899
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "location_mode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4902
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "location_providers_allowed"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4905
    :cond_b
    const-string v15, "no_debugging_features"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 4907
    if-nez v14, :cond_5

    .line 4908
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "adb_enabled"

    const-string v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4911
    :cond_c
    const-string v15, "ensure_verify_apps"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 4912
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "package_verifier_enable"

    const-string v19, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4915
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "verifier_verify_adb_installs"

    const-string v19, "1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 4918
    :cond_d
    const-string v15, "no_install_unknown_sources"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 4919
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v18, "install_non_market_apps"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v15, v0, v1, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_1

    .line 4945
    :cond_e
    :try_start_d
    const-string v15, "no_adjust_volume"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 4946
    const/4 v15, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v15, v0, v1}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 4949
    :catch_1
    move-exception v11

    .line 4950
    .restart local v11    # "re":Landroid/os/RemoteException;
    :try_start_e
    const-string v15, "DevicePolicyManagerService"

    const-string v18, "Failed to talk to AudioService."

    move-object/from16 v0, v18

    invoke-static {v15, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2
.end method

.method public switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 4906
    monitor-enter p0

    .line 4907
    if-nez p1, :cond_0

    .line 4908
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4925
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4910
    :cond_0
    const/4 v4, -0x2

    :try_start_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 4912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 4914
    .local v2, "id":J
    const/4 v1, 0x0

    .line 4915
    .local v1, "userId":I
    if-eqz p2, :cond_1

    .line 4916
    :try_start_2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 4918
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 4923
    :try_start_3
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    return v4

    .line 4919
    :catch_0
    move-exception v0

    .line 4920
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Couldn\'t switch user"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4921
    const/4 v4, 0x0

    .line 4923
    :try_start_5
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->restoreCallingIdentity(J)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1615
    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1616
    .local v1, "systemState":Z
    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    .line 1617
    .local v0, "cameraDisabled":Z
    if-eq v0, v1, :cond_0

    .line 1618
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1620
    .local v2, "token":J
    if-eqz v0, :cond_1

    :try_start_0
    const-string v4, "1"

    .line 1623
    .local v4, "value":Ljava/lang/String;
    :goto_0
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1625
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1628
    .end local v2    # "token":J
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1620
    .restart local v2    # "token":J
    :cond_1
    :try_start_1
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1625
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 1631
    iget-boolean v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v4, :cond_1

    .line 1651
    :cond_0
    return-void

    .line 1634
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->loadDeviceOwner()V

    .line 1636
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->cleanUpOldUsers()V

    .line 1638
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$SetupContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 1640
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateUserSetupComplete()V

    .line 1643
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 1644
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1645
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1646
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1647
    .local v2, "userHandle":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getScreenCaptureDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 1645
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public uninstallCaCert(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 8
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3039
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCanManageCaCerts(Landroid/content/ComponentName;)V

    .line 3041
    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 3042
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3044
    .local v2, "id":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 3046
    .local v4, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3050
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3056
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3058
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :goto_1
    return-void

    .line 3047
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_0
    move-exception v0

    .line 3048
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "from CaCertUninstaller: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3050
    :try_start_4
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 3052
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_1
    move-exception v1

    .line 3053
    .local v1, "ie":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v6, "DevicePolicyManagerService"

    const-string v7, "CaCertUninstaller: "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3054
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3056
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3050
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v6

    :try_start_6
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3056
    .end local v4    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 7
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 2895
    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 2896
    .local v2, "timeMs":J
    iget-wide v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 2916
    :goto_0
    return-void

    .line 2900
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2902
    .local v0, "ident":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 2903
    const-wide/32 v2, 0x7fffffff

    .line 2911
    :goto_1
    :try_start_0
    iput-wide v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    .line 2912
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2907
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2914
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method updateUserSetupComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 5539
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    .line 5540
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5541
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 5542
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5543
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 5544
    .local v4, "userHandle":I
    const-string v6, "user_setup_complete"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_0

    .line 5546
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 5547
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-boolean v6, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    if-nez v6, :cond_0

    .line 5548
    iput-boolean v8, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    .line 5549
    monitor-enter p0

    .line 5550
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(I)V

    .line 5551
    monitor-exit p0

    .line 5542
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5551
    .restart local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 5555
    .end local v2    # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v4    # "userHandle":I
    :cond_1
    return-void
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;)V
    .locals 5
    .param p1, "policy"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    .prologue
    .line 1592
    iget v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_1

    .line 1593
    const/4 v0, 0x0

    .line 1594
    .local v0, "haveOwner":Z
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1595
    iget-object v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_2

    .line 1596
    const/4 v0, 0x1

    .line 1600
    :cond_0
    if-nez v0, :cond_1

    .line 1601
    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    .line 1606
    .end local v0    # "haveOwner":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 1594
    .restart local v0    # "haveOwner":Z
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public wipeData(II)V
    .locals 9
    .param p1, "flags"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 3118
    iget-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    if-nez v7, :cond_0

    .line 3157
    :goto_0
    return-void

    .line 3121
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    .line 3122
    monitor-enter p0

    .line 3125
    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    .line 3129
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 3130
    .local v1, "cname":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 3131
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 3136
    .local v5, "source":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 3138
    .local v2, "ident":J
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_4

    .line 3139
    if-nez p2, :cond_1

    :try_start_1
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3141
    :cond_1
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Only device owner admins can set WIPE_RESET_PROTECTION_DATA"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3154
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3156
    .end local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .end local v1    # "cname":Landroid/content/ComponentName;
    .end local v2    # "ident":J
    .end local v5    # "source":Ljava/lang/String;
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 3133
    .restart local v0    # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    .restart local v1    # "cname":Landroid/content/ComponentName;
    :cond_2
    :try_start_3
    iget-object v7, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    .restart local v5    # "source":Ljava/lang/String;
    goto :goto_1

    .line 3144
    .restart local v2    # "ident":J
    :cond_3
    :try_start_4
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persistent_data_block"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 3146
    .local v4, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v4, :cond_4

    .line 3147
    invoke-virtual {v4}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 3150
    .end local v4    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    :cond_4
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    .line 3151
    .local v6, "wipeExtRequested":Z
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DevicePolicyManager.wipeData() from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, p2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3154
    :try_start_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3156
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 3150
    .end local v6    # "wipeExtRequested":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

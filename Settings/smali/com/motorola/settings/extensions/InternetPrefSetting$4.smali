.class Lcom/motorola/settings/extensions/InternetPrefSetting$4;
.super Ljava/lang/Thread;
.source "InternetPrefSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/extensions/InternetPrefSetting;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;


# direct methods
.method constructor <init>(Lcom/motorola/settings/extensions/InternetPrefSetting;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    iget-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    # getter for: Lcom/motorola/settings/extensions/InternetPrefSetting;->VERBOSE_ENABLED:Z
    invoke-static {v3}, Lcom/motorola/settings/extensions/InternetPrefSetting;->access$200(Lcom/motorola/settings/extensions/InternetPrefSetting;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "IntPrefSetting"

    const-string v4, "unregisterReceiver()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    const-class v4, Lcom/motorola/settings/extensions/InetConditionReceiver;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    invoke-virtual {v3}, Lcom/motorola/settings/extensions/InternetPrefSetting;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 105
    iget-object v3, p0, Lcom/motorola/settings/extensions/InternetPrefSetting$4;->this$0:Lcom/motorola/settings/extensions/InternetPrefSetting;

    const-string v4, "internet_pref_setting"

    invoke-virtual {v3, v4, v6}, Lcom/motorola/settings/extensions/InternetPrefSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 107
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_show"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method

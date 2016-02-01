.class Lcom/android/settings/notification/ZenModeAutomationSettings$1;
.super Lcom/android/settings/notification/ZenRuleNameDialog;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .local p4, "x2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 6
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .local v3, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    sget-object v4, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    const/16 v4, 0x16

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    const/4 v4, 0x7

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    new-instance v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iput-object p1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iput-boolean v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iput v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v4, v4, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v2

    .local v2, "ruleId":Ljava/lang/String;
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v4, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    # invokes: Lcom/android/settings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

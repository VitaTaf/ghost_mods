.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$7;
.super Lcom/android/settings/notification/ZenRuleNameDialog;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showRuleNameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;Ljava/lang/String;Landroid/util/ArraySet;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .local p4, "x2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$7;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;)V
    .locals 4
    .param p1, "ruleName"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$7;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$7;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRuleId:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$700(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .local v1, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$7;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method

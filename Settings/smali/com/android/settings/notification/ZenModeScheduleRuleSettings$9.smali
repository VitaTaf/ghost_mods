.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;
.super Lcom/android/settings/notification/ZenModeScheduleDaysSelection;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # [I

    .prologue
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0, p2, p3}, Lcom/android/settings/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V

    return-void
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 4
    .param p1, "days"    # [I

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDisableListeners:Z
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "days.onChanged days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [[I

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$500(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$500(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$500(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$9;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method

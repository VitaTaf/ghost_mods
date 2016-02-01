.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDisableListeners:Z
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    if-eq p2, v2, :cond_0

    :cond_4
    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$400()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange end h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iput p1, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    iput p2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$500(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$500(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$500(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v2

    iput-boolean v1, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto/16 :goto_0
.end method

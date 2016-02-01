.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDeleteRuleDialog()V
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
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mDeleting:Z
    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$602(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;Z)Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mRuleId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$700(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    return-void
.end method

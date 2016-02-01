.class Lcom/android/settings/notification/ZenModeAutomationSettings$2;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->val$rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    # invokes: Lcom/android/settings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

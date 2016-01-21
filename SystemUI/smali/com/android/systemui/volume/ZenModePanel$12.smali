.class Lcom/android/systemui/volume/ZenModePanel$12;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2900(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 1000
    return-void
.end method

.method public onSelected(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 985
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$2600(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$1200(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mZenButtonsCallback selected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;
    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->access$2700(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;

    move-result-object v2

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->access$2800(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 988
    .local v0, "realConditionId":Landroid/net/Uri;
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$12$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/volume/ZenModePanel$12$1;-><init>(Lcom/android/systemui/volume/ZenModePanel$12;Ljava/lang/Object;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 995
    .end local v0    # "realConditionId":Landroid/net/Uri;
    :cond_1
    return-void
.end method

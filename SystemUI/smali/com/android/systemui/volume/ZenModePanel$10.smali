.class Lcom/android/systemui/volume/ZenModePanel$10;
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
    .line 939
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2500(Lcom/android/systemui/volume/ZenModePanel;)V

    .line 957
    return-void
.end method

.method public onSelected(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 942
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$2200(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenModePanel;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

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

    .line 944
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;
    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->access$2300(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;

    move-result-object v2

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/systemui/volume/ZenModePanel;->access$2400(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .line 945
    .local v0, "realConditionId":Landroid/net/Uri;
    new-instance v1, Lcom/android/systemui/volume/ZenModePanel$10$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/volume/ZenModePanel$10$1;-><init>(Lcom/android/systemui/volume/ZenModePanel$10;Ljava/lang/Object;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 952
    .end local v0    # "realConditionId":Landroid/net/Uri;
    :cond_1
    return-void
.end method

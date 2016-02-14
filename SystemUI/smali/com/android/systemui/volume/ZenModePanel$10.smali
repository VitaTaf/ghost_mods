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
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->fireInteraction()V
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$2800(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method public onSelected(Ljava/lang/Object;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mZenButtons:Lcom/android/systemui/volume/SegmentedButtons;
    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->access$2500(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/volume/SegmentedButtons;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/ZenModePanel;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "zen":I
    # getter for: Lcom/android/systemui/volume/ZenModePanel;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/volume/ZenModePanel;->access$1100(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mZenButtonsCallback selected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v3, p0, Lcom/android/systemui/volume/ZenModePanel$10;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mSessionExitCondition:Landroid/service/notification/Condition;
    invoke-static {v3}, Lcom/android/systemui/volume/ZenModePanel;->access$2600(Lcom/android/systemui/volume/ZenModePanel;)Landroid/service/notification/Condition;

    move-result-object v3

    # invokes: Lcom/android/systemui/volume/ZenModePanel;->getRealConditionId(Landroid/service/notification/Condition;)Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/systemui/volume/ZenModePanel;->access$2700(Lcom/android/systemui/volume/ZenModePanel;Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "realConditionId":Landroid/net/Uri;
    new-instance v2, Lcom/android/systemui/volume/ZenModePanel$10$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/volume/ZenModePanel$10$1;-><init>(Lcom/android/systemui/volume/ZenModePanel$10;ILandroid/net/Uri;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .end local v0    # "realConditionId":Landroid/net/Uri;
    .end local v1    # "zen":I
    :cond_1
    return-void
.end method

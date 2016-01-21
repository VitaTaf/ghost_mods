.class Lcom/android/systemui/volume/ZenModePanel$12$1;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenModePanel$12;->onSelected(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/ZenModePanel$12;

.field final synthetic val$realConditionId:Landroid/net/Uri;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenModePanel$12;Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$12$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$12;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenModePanel$12$1;->val$value:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/volume/ZenModePanel$12$1;->val$realConditionId:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$12$1;->this$1:Lcom/android/systemui/volume/ZenModePanel$12;

    iget-object v0, v0, Lcom/android/systemui/volume/ZenModePanel$12;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    # getter for: Lcom/android/systemui/volume/ZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$700(Lcom/android/systemui/volume/ZenModePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$12$1;->val$value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/volume/ZenModePanel$12$1;->val$realConditionId:Landroid/net/Uri;

    const-string v3, "ZenModePanel.selectZen"

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 992
    return-void
.end method

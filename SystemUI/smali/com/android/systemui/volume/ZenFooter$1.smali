.class Lcom/android/systemui/volume/ZenFooter$1;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "ZenFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/ZenFooter$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenFooter;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitConditionChanged(Landroid/service/notification/Condition;)V
    .locals 1
    .param p1, "exitCondition"    # Landroid/service/notification/Condition;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ZenFooter;->update()V

    .line 107
    return-void
.end method

.method public onZenChanged(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # invokes: Lcom/android/systemui/volume/ZenFooter;->setZen(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->access$000(Lcom/android/systemui/volume/ZenFooter;I)V

    .line 103
    return-void
.end method

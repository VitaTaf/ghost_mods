.class Lcom/android/systemui/volume/ZenFooter$1;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "ZenFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenFooter;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
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
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 1
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # invokes: Lcom/android/systemui/volume/ZenFooter;->setConfig(Landroid/service/notification/ZenModeConfig;)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->access$100(Lcom/android/systemui/volume/ZenFooter;Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method public onZenChanged(I)V
    .locals 1
    .param p1, "zen"    # I

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$1;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # invokes: Lcom/android/systemui/volume/ZenFooter;->setZen(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/ZenFooter;->access$000(Lcom/android/systemui/volume/ZenFooter;I)V

    return-void
.end method

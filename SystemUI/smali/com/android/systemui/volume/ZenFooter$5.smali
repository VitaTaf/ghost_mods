.class Lcom/android/systemui/volume/ZenFooter$5;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenFooter;
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
    .line 216
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .prologue
    .line 239
    return-void
.end method

.method public onInteraction()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onMoreSettings()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->access$300(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/ZenFooter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->access$300(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/ZenFooter$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenFooter$Callback;->onSettingsClicked()V

    .line 222
    :cond_0
    return-void
.end method

.method public onPrioritySettings()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->access$300(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/ZenFooter$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mCallback:Lcom/android/systemui/volume/ZenFooter$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->access$300(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/volume/ZenFooter$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/ZenFooter$Callback;->onPrioritySettingsClicked()V

    .line 229
    :cond_0
    return-void
.end method

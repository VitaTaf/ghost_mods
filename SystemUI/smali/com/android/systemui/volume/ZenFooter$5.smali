.class Lcom/android/systemui/volume/ZenFooter$5;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 215
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 218
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/ZenFooter;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-virtual {v1}, Lcom/android/systemui/volume/ZenFooter;->isZen()Z

    move-result v1

    if-eq p2, v1, :cond_1

    .line 220
    if-eqz p2, :cond_2

    const/4 v0, 0x3

    .line 222
    .local v0, "newZen":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # setter for: Lcom/android/systemui/volume/ZenFooter;->mZen:I
    invoke-static {v1, v0}, Lcom/android/systemui/volume/ZenFooter;->access$502(Lcom/android/systemui/volume/ZenFooter;I)I

    .line 223
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # invokes: Lcom/android/systemui/volume/ZenFooter;->setFooterExpanded(Z)Z
    invoke-static {v1, p2}, Lcom/android/systemui/volume/ZenFooter;->access$600(Lcom/android/systemui/volume/ZenFooter;Z)Z

    .line 224
    iget-object v1, p0, Lcom/android/systemui/volume/ZenFooter$5;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/ZenFooter;->access$700(Lcom/android/systemui/volume/ZenFooter;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    const/4 v2, 0x0

    # getter for: Lcom/android/systemui/volume/ZenFooter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/ZenFooter;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 226
    .end local v0    # "newZen":I
    :cond_1
    return-void

    .line 220
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

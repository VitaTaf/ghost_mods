.class Lcom/android/systemui/volume/ZenFooter$2;
.super Ljava/lang/Object;
.source "ZenFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 114
    iput-object p1, p0, Lcom/android/systemui/volume/ZenFooter$2;->this$0:Lcom/android/systemui/volume/ZenFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$2;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->access$200(Lcom/android/systemui/volume/ZenFooter;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenFooter$2;->this$0:Lcom/android/systemui/volume/ZenFooter;

    # getter for: Lcom/android/systemui/volume/ZenFooter;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/volume/ZenFooter;->access$200(Lcom/android/systemui/volume/ZenFooter;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

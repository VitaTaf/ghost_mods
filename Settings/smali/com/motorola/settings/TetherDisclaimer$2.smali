.class Lcom/motorola/settings/TetherDisclaimer$2;
.super Ljava/lang/Object;
.source "TetherDisclaimer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/settings/TetherDisclaimer;->displayStartupNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/settings/TetherDisclaimer;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/motorola/settings/TetherDisclaimer;Landroid/view/View;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/settings/TetherDisclaimer$2;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    iput-object p2, p0, Lcom/motorola/settings/TetherDisclaimer$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    iget-object v0, p0, Lcom/motorola/settings/TetherDisclaimer$2;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    # setter for: Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z
    invoke-static {v0, p2}, Lcom/motorola/settings/TetherDisclaimer;->access$002(Lcom/motorola/settings/TetherDisclaimer;Z)Z

    iget-object v0, p0, Lcom/motorola/settings/TetherDisclaimer$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    return-void
.end method

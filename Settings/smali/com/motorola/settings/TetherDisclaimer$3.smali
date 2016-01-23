.class Lcom/motorola/settings/TetherDisclaimer$3;
.super Ljava/lang/Object;
.source "TetherDisclaimer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/motorola/settings/TetherDisclaimer;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/motorola/settings/TetherDisclaimer$3;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/motorola/settings/TetherDisclaimer$3;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z
    invoke-static {v0, v1}, Lcom/motorola/settings/TetherDisclaimer;->access$002(Lcom/motorola/settings/TetherDisclaimer;Z)Z

    .line 184
    iget-object v0, p0, Lcom/motorola/settings/TetherDisclaimer$3;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    iget-object v1, p0, Lcom/motorola/settings/TetherDisclaimer$3;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    # getter for: Lcom/motorola/settings/TetherDisclaimer;->mTetherResult:I
    invoke-static {v1}, Lcom/motorola/settings/TetherDisclaimer;->access$100(Lcom/motorola/settings/TetherDisclaimer;)I

    move-result v1

    # invokes: Lcom/motorola/settings/TetherDisclaimer;->setResultAndFinish(I)V
    invoke-static {v0, v1}, Lcom/motorola/settings/TetherDisclaimer;->access$200(Lcom/motorola/settings/TetherDisclaimer;I)V

    .line 185
    return-void
.end method

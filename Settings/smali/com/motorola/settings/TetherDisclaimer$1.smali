.class Lcom/motorola/settings/TetherDisclaimer$1;
.super Ljava/lang/Object;
.source "TetherDisclaimer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/motorola/settings/TetherDisclaimer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/motorola/settings/TetherDisclaimer$1;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    iput-object p2, p0, Lcom/motorola/settings/TetherDisclaimer$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 162
    iget-object v3, p0, Lcom/motorola/settings/TetherDisclaimer$1;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    invoke-virtual {v3}, Lcom/motorola/settings/TetherDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 164
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-ne p2, v6, :cond_0

    .line 165
    iget-object v3, p0, Lcom/motorola/settings/TetherDisclaimer$1;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    invoke-virtual {v3}, Lcom/motorola/settings/TetherDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/settings/TetherDisclaimer$1;->val$key:Ljava/lang/String;

    iget-object v5, p0, Lcom/motorola/settings/TetherDisclaimer$1;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    # getter for: Lcom/motorola/settings/TetherDisclaimer;->mDoNotShowChecked:Z
    invoke-static {v5}, Lcom/motorola/settings/TetherDisclaimer;->access$000(Lcom/motorola/settings/TetherDisclaimer;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    if-nez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/motorola/settings/TetherDisclaimer$1;->this$0:Lcom/motorola/settings/TetherDisclaimer;

    # setter for: Lcom/motorola/settings/TetherDisclaimer;->mTetherResult:I
    invoke-static {v1, v6}, Lcom/motorola/settings/TetherDisclaimer;->access$102(Lcom/motorola/settings/TetherDisclaimer;I)I

    .line 171
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 172
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_1
    move v0, v2

    .line 162
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_2
    move v1, v2

    .line 165
    goto :goto_1
.end method

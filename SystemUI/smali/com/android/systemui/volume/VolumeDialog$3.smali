.class Lcom/android/systemui/volume/VolumeDialog$3;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 374
    const/4 v5, 0x7

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v7}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I
    invoke-static {v7}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    .line 375
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 376
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 377
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 378
    .local v0, "hasVibrator":Z
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1700(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v5, v8, :cond_4

    .line 379
    if-eqz v0, :cond_1

    .line 380
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 405
    .end local v0    # "hasVibrator":Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const-wide/16 v6, 0x0

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v4, v6, v7}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    .line 406
    return-void

    .line 382
    .restart local v0    # "hasVibrator":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v5, :cond_3

    .line 383
    .local v3, "wasZero":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$stream:I

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    :cond_2
    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .end local v3    # "wasZero":Z
    :cond_3
    move v3, v4

    .line 382
    goto :goto_1

    .line 386
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 387
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_0

    .line 388
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$stream:I

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 392
    .end local v0    # "hasVibrator":Z
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    if-nez v5, :cond_8

    .line 393
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget v5, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v5, :cond_7

    move v2, v3

    .line 394
    .local v2, "vmute":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$stream:I

    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    :cond_6
    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .end local v2    # "vmute":Z
    :cond_7
    move v2, v4

    .line 393
    goto :goto_2

    .line 396
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-nez v5, :cond_9

    move v1, v3

    .line 397
    .local v1, "mute":Z
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$stream:I

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamMute(IZ)V

    .line 398
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mAutomute:Z
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$2000(Lcom/android/systemui/volume/VolumeDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$row:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_0

    .line 400
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$3;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog;->access$1600(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialog$3;->val$stream:I

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto/16 :goto_0

    .end local v1    # "mute":Z
    :cond_9
    move v1, v4

    .line 396
    goto :goto_3
.end method

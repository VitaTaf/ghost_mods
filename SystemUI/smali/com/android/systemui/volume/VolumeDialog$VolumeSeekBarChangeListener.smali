.class final Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V
    .locals 0
    .param p2, "row"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialog;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p3, "x2"    # Lcom/android/systemui/volume/VolumeDialog$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialog;Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onProgressChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fromUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v0, v2, 0x64

    .local v0, "minProgress":I
    if-ge p2, v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .end local v0    # "minProgress":I
    :cond_3
    # invokes: Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I
    invoke-static {p1, p2}, Lcom/android/systemui/volume/VolumeDialog;->access$5600(Landroid/widget/SeekBar;I)I

    move-result v1

    .local v1, "userLevel":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v2, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(I[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialog;->access$2300(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialog;->access$700()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z
    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$3602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # invokes: Lcom/android/systemui/volume/VolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I
    invoke-static {p1, v1}, Lcom/android/systemui/volume/VolumeDialog;->access$5600(Landroid/widget/SeekBar;I)I

    move-result v0

    .local v0, "userLevel":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialog;

    # getter for: Lcom/android/systemui/volume/VolumeDialog;->mHandler:Lcom/android/systemui/volume/VolumeDialog$H;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialog;->access$200(Lcom/android/systemui/volume/VolumeDialog;)Lcom/android/systemui/volume/VolumeDialog$H;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

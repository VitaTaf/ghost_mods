.class Lcom/android/systemui/volume/VolumePanel$9;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1479
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1480
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1481
    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1482
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->minVolume:I

    add-int/2addr v3, p2

    const/16 v4, 0x11

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/systemui/volume/VolumePanel;->access$1900(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    .line 1485
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1486
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1490
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1494
    return-void
.end method

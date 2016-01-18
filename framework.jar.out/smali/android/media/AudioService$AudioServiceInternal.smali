.class final Landroid/media/AudioService$AudioServiceInternal;
.super Landroid/media/AudioManagerInternal;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AudioServiceInternal"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .prologue
    .line 5692
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/media/AudioManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustMasterVolumeForUid(IILjava/lang/String;I)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 5724
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/AudioService;->adjustMasterVolume(IILjava/lang/String;I)V

    .line 5725
    return-void
.end method

.method public adjustStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 5712
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;IIILjava/lang/String;I)V

    .line 5713
    return-void
.end method

.method public adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 5706
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Landroid/media/AudioService;->access$9700(Landroid/media/AudioService;IIILjava/lang/String;I)V

    .line 5707
    return-void
.end method

.method public getRingerModeInternal()I
    .locals 1

    .prologue
    .line 5729
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    return v0
.end method

.method public setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
    .locals 2
    .param p1, "delegate"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 5695
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v0, p1}, Landroid/media/AudioService;->access$9602(Landroid/media/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 5696
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;
    invoke-static {v0}, Landroid/media/AudioService;->access$9600(Landroid/media/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5697
    invoke-virtual {p0}, Landroid/media/AudioService$AudioServiceInternal;->getRingerModeInternal()I

    move-result v0

    const-string v1, "AudioService.setRingerModeDelegate"

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService$AudioServiceInternal;->setRingerModeInternal(ILjava/lang/String;)V

    .line 5699
    :cond_0
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 5734
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 5735
    return-void
.end method

.method public setStreamVolumeForUid(IIILjava/lang/String;I)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 5718
    iget-object v0, p0, Landroid/media/AudioService$AudioServiceInternal;->this$0:Landroid/media/AudioService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    # invokes: Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V
    invoke-static/range {v0 .. v5}, Landroid/media/AudioService;->access$9900(Landroid/media/AudioService;IIILjava/lang/String;I)V

    .line 5719
    return-void
.end method

.class final Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ServiceMonitor$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceMonitorCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeUI$1;

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public onNoService()V
    .locals 2

    .prologue
    .line 260
    # getter for: Lcom/android/systemui/volume/VolumeUI;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumeUI;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumeUI"

    const-string v1, "onNoService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/volume/VolumeUI;->setVolumeController(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeUI;->access$1300(Lcom/android/systemui/volume/VolumeUI;Z)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1400(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->hide()V

    .line 263
    return-void
.end method

.method public onServiceStartAttempt()J
    .locals 2

    .prologue
    .line 267
    # getter for: Lcom/android/systemui/volume/VolumeUI;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumeUI;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VolumeUI"

    const-string v1, "onServiceStartAttempt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/volume/VolumeUI;->setVolumeController(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeUI;->access$1300(Lcom/android/systemui/volume/VolumeUI;Z)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$800(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$VolumeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$VolumeController;->dismissNow()V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$ServiceMonitorCallbacks;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mRestorationNotification:Lcom/android/systemui/volume/VolumeUI$RestorationNotification;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$1400(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$RestorationNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeUI$RestorationNotification;->show()V

    .line 271
    const-wide/16 v0, 0x0

    return-wide v0
.end method

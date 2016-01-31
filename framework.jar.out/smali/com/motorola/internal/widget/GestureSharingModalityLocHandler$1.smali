.class Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "GestureSharingModalityLocHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x3

    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "-GSModalityLocHandler"

    const-string v3, "Gesture Sharing Receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.motorola.internal.intent.action.GS_REGISTER_LOC_MODALITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-GSModalityLocHandler"

    const-string v3, "ACTION_GS_REGISTER_LOC_MODALITY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_LOC_UPDATES_INTERVAL"

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLocationUpdatesInterval:J
    invoke-static {v2, v4, v5}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$002(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;J)J

    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_LOC_MIN_VEHICLE_SPEED"

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    # setter for: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedVehicle:F
    invoke-static {v2, v3}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$102(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;F)F

    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    const-string v3, "com.motorola.internal.intent.extra.GS_LOC_MODALITY_LOC_MIN_MOVING_SPEED"

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    # setter for: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedMoving:F
    invoke-static {v2, v3}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$202(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;F)F

    const-string v2, "com.motorola.internal.intent.extra.GS_MODALITY_LOC_REG_EXPIRE"

    const-wide/32 v4, 0xa4cb80

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .local v0, "registerExpire":J
    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "-GSModalityLocHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updates interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    # getter for: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mLocationUpdatesInterval:J
    invoke-static {v4}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$000(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Min Vehicle Speed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    # getter for: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedVehicle:F
    invoke-static {v4}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$100(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Min Moving Speed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    # getter for: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->mMinSpeedMoving:F
    invoke-static {v4}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$200(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Reg Expire: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->register(J)V
    invoke-static {v2, v0, v1}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$300(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;J)V

    .end local v0    # "registerExpire":J
    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.motorola.internal.intent.action.GS_UNREGISTER_LOC_MODALITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "-GSModalityLocHandler"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "-GSModalityLocHandler"

    const-string v3, "ACTION_GS_UNREGISTER_LOC_MODALITY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler$1;->this$0:Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->unRegister()V
    invoke-static {v2}, Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;->access$400(Lcom/motorola/internal/widget/GestureSharingModalityLocHandler;)V

    goto :goto_0
.end method

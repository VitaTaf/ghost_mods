.class Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "GestureSharingModalitySHubHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;


# direct methods
.method constructor <init>(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v3, "GSModalitySHubHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GSModalitySHubHandler"

    const-string v4, "Gesture Sharing Receiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.motorola.internal.intent.action.GS_REGISTER_SH_MODALITY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "GSModalitySHubHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "GSModalitySHubHandler"

    const-string v4, "ACTION_GS_REGISTER_SH_MODALITY"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_SH_START_DURATION"

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .local v6, "startDuration":J
    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_SH_END_DURATION"

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .local v8, "endDuration":J
    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_SH_REGISTER_ALL"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, "mRegisterAll":Z
    const-string v3, "GSModalitySHubHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "GSModalitySHubHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - End duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Register ALL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "now":J
    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_SH_WALKING_EXPIRE"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .local v16, "walkingExpire":J
    const-string v3, "GSModalitySHubHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "GSModalitySHubHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Walking Expire: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    add-long v4, v10, v16

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->registerWalking(JJJ)V
    invoke-static/range {v3 .. v9}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$100(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;JJJ)V

    :cond_4
    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_SH_RUNNING_EXPIRE"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .local v12, "runningExpire":J
    const-string v3, "GSModalitySHubHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "GSModalitySHubHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running Expire: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    add-long v4, v10, v12

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->registerRunning(JJJ)V
    invoke-static/range {v3 .. v9}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$200(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;JJJ)V

    :cond_6
    const-string v3, "com.motorola.internal.intent.extra.GS_MODALITY_SH_VEHICLE_EXPIRE"

    const-wide/16 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .local v14, "vehicleExpire":J
    const-string v3, "GSModalitySHubHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "GSModalitySHubHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Vehicle Expire: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    add-long v4, v10, v14

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->registerVehicle(JJJ)V
    invoke-static/range {v3 .. v9}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$300(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;JJJ)V

    .end local v2    # "mRegisterAll":Z
    .end local v6    # "startDuration":J
    .end local v8    # "endDuration":J
    .end local v10    # "now":J
    .end local v12    # "runningExpire":J
    .end local v14    # "vehicleExpire":J
    .end local v16    # "walkingExpire":J
    :cond_8
    :goto_0
    return-void

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.motorola.internal.intent.action.GS_UNREGISTER_SH_MODALITY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterWalking()V
    invoke-static {v3}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$400(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterRunning()V
    invoke-static {v3}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$500(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler$4;->this$0:Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;

    # invokes: Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->unregisterVehicle()V
    invoke-static {v3}, Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;->access$600(Lcom/motorola/internal/widget/GestureSharingModalitySHubHandler;)V

    goto :goto_0
.end method

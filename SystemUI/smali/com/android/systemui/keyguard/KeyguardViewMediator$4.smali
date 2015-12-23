.class Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1236
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1291
    :goto_0
    return-void

    .line 1238
    :sswitch_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1241
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1244
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleReset()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1247
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1250
    :sswitch_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1253
    :sswitch_5
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/policy/IKeyguardShowCallback;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto :goto_0

    .line 1256
    :sswitch_6
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_1

    :goto_2
    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V
    invoke-static {v4, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    .line 1259
    :sswitch_7
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1262
    :sswitch_8
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    .line 1265
    :sswitch_9
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_3
    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3100(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_3

    .line 1268
    :sswitch_a
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v2

    .line 1269
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v3, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1270
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1273
    :sswitch_b
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto :goto_0

    .line 1276
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1277
    .local v0, "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-wide v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3200(Lcom/android/systemui/keyguard/KeyguardViewMediator;JJ)V

    goto :goto_0

    .line 1280
    .end local v0    # "params":Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    :sswitch_d
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Timeout while waiting for activity drawn!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :sswitch_e
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_0

    .line 1287
    :sswitch_f
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    move v4, v2

    :goto_4
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-eqz v6, :cond_4

    :goto_5
    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleRequestUnlock(Landroid/os/IBinder;ZZ)V
    invoke-static {v5, v1, v4, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/IBinder;ZZ)V

    goto/16 :goto_0

    :cond_3
    move v4, v3

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_5

    .line 1236
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_a
        0x11 -> :sswitch_b
        0x12 -> :sswitch_c
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x64 -> :sswitch_f
    .end sparse-switch
.end method

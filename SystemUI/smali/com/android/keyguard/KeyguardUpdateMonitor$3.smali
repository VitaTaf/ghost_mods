.class Lcom/android/keyguard/KeyguardUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 562
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 568
    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12d

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 605
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 570
    const-string v8, "status"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 571
    .local v7, "status":I
    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 572
    .local v5, "plugged":I
    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 573
    .local v3, "level":I
    const-string v8, "health"

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 574
    .local v2, "health":I
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x12e

    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {v10, v7, v3, v5, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIII)V

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 576
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 577
    .end local v2    # "health":I
    .end local v3    # "level":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "plugged":I
    .end local v7    # "status":I
    :cond_3
    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 578
    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v1

    .line 580
    .local v1, "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const-string v8, "KeyguardUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " slotId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x130

    iget v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v12, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 586
    .end local v1    # "args":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    :cond_4
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 587
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x131

    const-string v11, "android.media.EXTRA_RINGER_MODE"

    const/4 v12, -0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 589
    :cond_5
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 590
    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "state":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x132

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 592
    .end local v6    # "state":Ljava/lang/String;
    :cond_6
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 593
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x137

    const-string v11, "android.intent.extra.user_handle"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 595
    :cond_7
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 596
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0

    .line 598
    :cond_8
    const-string v8, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 600
    .local v6, "state":Landroid/telephony/ServiceState;
    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e00e9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 601
    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    # getter for: Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x14a

    invoke-virtual {v9, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

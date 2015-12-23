.class Landroid/mtp/MtpDSUCusInterface$CUSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpDSUCusInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDSUCusInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CUSReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDSUCusInterface;


# direct methods
.method private constructor <init>(Landroid/mtp/MtpDSUCusInterface;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpDSUCusInterface;Landroid/mtp/MtpDSUCusInterface$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/mtp/MtpDSUCusInterface;
    .param p2, "x1"    # Landroid/mtp/MtpDSUCusInterface$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;-><init>(Landroid/mtp/MtpDSUCusInterface;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 174
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "action":Ljava/lang/String;
    const/4 v5, 0x1

    .line 177
    .local v5, "succeed":Z
    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v6, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    # setter for: Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;
    invoke-static {v6, v8}, Landroid/mtp/MtpDSUCusInterface;->access$002(Landroid/mtp/MtpDSUCusInterface;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    const-string v6, "com.motorola.android.tethered.TETHERED_CHECK_UPDATE_RESPONSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_REQUEST_ID"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 183
    .local v2, "id":J
    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, "err":I
    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v10

    .line 185
    .local v4, "ret":[Ljava/lang/Object;
    iget-object v6, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    # setter for: Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/mtp/MtpDSUCusInterface;->access$002(Landroid/mtp/MtpDSUCusInterface;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 204
    .end local v1    # "err":I
    .end local v2    # "id":J
    .end local v4    # "ret":[Ljava/lang/Object;
    :goto_1
    if-eqz v5, :cond_0

    .line 206
    iget-object v6, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    # getter for: Landroid/mtp/MtpDSUCusInterface;->mCDL:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v6}, Landroid/mtp/MtpDSUCusInterface;->access$200(Landroid/mtp/MtpDSUCusInterface;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 186
    :cond_2
    const-string v6, "com.motorola.android.tethered.TETHERED_UPDATE_NOTIFICATION_RESPONSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 187
    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 190
    .restart local v1    # "err":I
    if-eqz v1, :cond_3

    .line 191
    iget-object v6, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    # setter for: Landroid/mtp/MtpDSUCusInterface;->mPendingIntent:Landroid/content/Intent;
    invoke-static {v6, v8}, Landroid/mtp/MtpDSUCusInterface;->access$102(Landroid/mtp/MtpDSUCusInterface;Landroid/content/Intent;)Landroid/content/Intent;

    .line 193
    :cond_3
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    .line 194
    .restart local v4    # "ret":[Ljava/lang/Object;
    iget-object v6, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    # setter for: Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/mtp/MtpDSUCusInterface;->access$002(Landroid/mtp/MtpDSUCusInterface;[Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 195
    .end local v1    # "err":I
    .end local v4    # "ret":[Ljava/lang/Object;
    :cond_4
    const-string v6, "com.motorola.android.tethered.TETHERED_UPDATE_RESULT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 196
    const-string v6, "com.motorola.android.tethered.tetheredinterface.TETHERED_EXTRA_ERROR"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 197
    .restart local v1    # "err":I
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    .line 198
    .restart local v4    # "ret":[Ljava/lang/Object;
    iget-object v6, p0, Landroid/mtp/MtpDSUCusInterface$CUSReceiver;->this$0:Landroid/mtp/MtpDSUCusInterface;

    # setter for: Landroid/mtp/MtpDSUCusInterface;->mResult:[Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/mtp/MtpDSUCusInterface;->access$002(Landroid/mtp/MtpDSUCusInterface;[Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 200
    .end local v1    # "err":I
    .end local v4    # "ret":[Ljava/lang/Object;
    :cond_5
    const/4 v5, 0x0

    .line 201
    const-string v6, "MtpDSUCusInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive wrong intent from CUS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

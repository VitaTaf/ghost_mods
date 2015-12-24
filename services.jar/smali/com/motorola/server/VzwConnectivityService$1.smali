.class Lcom/motorola/server/VzwConnectivityService$1;
.super Landroid/content/BroadcastReceiver;
.source "VzwConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/VzwConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/VzwConnectivityService;


# direct methods
.method constructor <init>(Lcom/motorola/server/VzwConnectivityService;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService$1;->this$0:Lcom/motorola/server/VzwConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "action":Ljava/lang/String;
    const-string v2, "VzwConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive Intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService$1;->this$0:Lcom/motorola/server/VzwConnectivityService;

    # getter for: Lcom/motorola/server/VzwConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/server/VzwConnectivityService;->access$100(Lcom/motorola/server/VzwConnectivityService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/motorola/server/VzwConnectivityService$1;->this$0:Lcom/motorola/server/VzwConnectivityService;

    # getter for: Lcom/motorola/server/VzwConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/motorola/server/VzwConnectivityService;->access$100(Lcom/motorola/server/VzwConnectivityService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

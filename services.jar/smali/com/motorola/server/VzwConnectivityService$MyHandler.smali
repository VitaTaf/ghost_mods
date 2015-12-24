.class Lcom/motorola/server/VzwConnectivityService$MyHandler;
.super Landroid/os/Handler;
.source "VzwConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/VzwConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/VzwConnectivityService;


# direct methods
.method public constructor <init>(Lcom/motorola/server/VzwConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/motorola/server/VzwConnectivityService$MyHandler;->this$0:Lcom/motorola/server/VzwConnectivityService;

    .line 328
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 329
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 333
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/server/VzwConnectivityService$MyHandler;->this$0:Lcom/motorola/server/VzwConnectivityService;

    # invokes: Lcom/motorola/server/VzwConnectivityService;->updateNetworkApnStats()V
    invoke-static {v0}, Lcom/motorola/server/VzwConnectivityService;->access$200(Lcom/motorola/server/VzwConnectivityService;)V

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

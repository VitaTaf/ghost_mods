.class Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
.super Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/ModalityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccumulatedMovementListenerTransport"
.end annotation


# static fields
.field private static final MSG_ACCUM_MVMT:I = 0x1


# instance fields
.field private mAccumMvmtListener:Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

.field private final mAccumMvmtListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0}, Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;-><init>()V

    .line 1278
    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListener:Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    .line 1280
    if-nez p3, :cond_0

    .line 1281
    new-instance v0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport$1;-><init>(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListenerHandler:Landroid/os/Handler;

    .line 1295
    :goto_0
    return-void

    .line 1288
    :cond_0
    new-instance v0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport$2;-><init>(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;Landroid/os/Looper;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1320
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1325
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListener:Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    invoke-interface {v0}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;->onAccumulatedMovement()V

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$600(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 1271
    invoke-direct {p0, p1}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private removeDeadListener()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    const-string v0, "ModalityManager"

    const-string/jumbo v1, "removeDeadListener(): handler thread is still alive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :goto_0
    return-void

    .line 1314
    :cond_0
    const-string v0, "ModalityManager"

    const-string/jumbo v1, "removeDeadListener(): handler thread is dead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListener:Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeAccumulatedMovementListener(Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onAccumulatedMovement()V
    .locals 4

    .prologue
    .line 1298
    const-string v1, "ModalityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAccumulatedMovement(), package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    # getter for: Lcom/motorola/slpc/ModalityManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/motorola/slpc/ModalityManager;->access$200(Lcom/motorola/slpc/ModalityManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1301
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1303
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->mAccumMvmtListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    invoke-direct {p0}, Lcom/motorola/slpc/ModalityManager$AccumulatedMovementListenerTransport;->removeDeadListener()V

    .line 1306
    :cond_0
    return-void
.end method

.class Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
.super Lcom/motorola/slpc/IMovementListener$Stub;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/ModalityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MovementListenerTransport"
.end annotation


# static fields
.field private static final END_MOVEMENT_MSG:I = 0x2

.field private static final START_MOVEMENT_MSG:I = 0x1


# instance fields
.field private mMovementListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

.field private final mMovementListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$MovementListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Lcom/motorola/slpc/ModalityManager$MovementListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0}, Lcom/motorola/slpc/IMovementListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    if-nez p3, :cond_0

    new-instance v0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$1;-><init>(Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$2;-><init>(Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;Landroid/os/Looper;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    invoke-interface {v0}, Lcom/motorola/slpc/ModalityManager$MovementListener;->onStartMovement()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    invoke-interface {v0}, Lcom/motorola/slpc/ModalityManager$MovementListener;->onEndMovement()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$500(Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private removeDeadListener()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ModalityManager"

    const-string/jumbo v1, "removeDeadListener(): handler thread is still alive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "ModalityManager"

    const-string/jumbo v1, "removeDeadListener(): handler thread is dead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListener:Lcom/motorola/slpc/ModalityManager$MovementListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeMovementListener(Lcom/motorola/slpc/ModalityManager$MovementListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onEndMovement()V
    .locals 4

    .prologue
    const-string v1, "ModalityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEndMovement(), package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

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

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->removeDeadListener()V

    :cond_0
    return-void
.end method

.method public onStartMovement()V
    .locals 4

    .prologue
    const-string v1, "ModalityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartMovement(), package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

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

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->mMovementListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->removeDeadListener()V

    :cond_0
    return-void
.end method

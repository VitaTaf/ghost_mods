.class Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
.super Lcom/motorola/slpc/IOrientationListener$Stub;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/ModalityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationListenerTransport"
.end annotation


# static fields
.field private static final MSG_ORIENTATION_CHANGED:I = 0x1


# instance fields
.field private mOrientationListener:Lcom/motorola/slpc/ModalityManager$OrientationListener;

.field private final mOrientationListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$OrientationListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "listener"    # Lcom/motorola/slpc/ModalityManager$OrientationListener;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0}, Lcom/motorola/slpc/IOrientationListener$Stub;-><init>()V

    .line 607
    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListener:Lcom/motorola/slpc/ModalityManager$OrientationListener;

    .line 609
    if-nez p3, :cond_0

    .line 610
    new-instance v0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$1;-><init>(Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListenerHandler:Landroid/os/Handler;

    .line 624
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$2;-><init>(Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;Landroid/os/Looper;Lcom/motorola/slpc/ModalityManager;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 651
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 653
    :pswitch_0
    new-instance v0, Lcom/motorola/slpc/Transition;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/slpc/Transition;

    invoke-direct {v0, v1}, Lcom/motorola/slpc/Transition;-><init>(Lcom/motorola/slpc/Transition;)V

    .line 654
    .local v0, "transition":Lcom/motorola/slpc/Transition;
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListener:Lcom/motorola/slpc/ModalityManager$OrientationListener;

    invoke-interface {v1, v0}, Lcom/motorola/slpc/ModalityManager$OrientationListener;->onOrientationChange(Lcom/motorola/slpc/Transition;)V

    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$300(Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 600
    invoke-direct {p0, p1}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private removeDeadListener()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListenerHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const-string v0, "ModalityManager"

    const-string/jumbo v1, "removeDeadListener(): handler thread is still alive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 645
    :cond_0
    const-string v0, "ModalityManager"

    const-string/jumbo v1, "removeDeadListener(): handler thread is dead"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListener:Lcom/motorola/slpc/ModalityManager$OrientationListener;

    invoke-virtual {v0, v1}, Lcom/motorola/slpc/ModalityManager;->removeOrientationListener(Lcom/motorola/slpc/ModalityManager$OrientationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onOrientationChange(Lcom/motorola/slpc/Transition;)V
    .locals 4
    .param p1, "transition"    # Lcom/motorola/slpc/Transition;

    .prologue
    .line 627
    const-string v1, "ModalityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOrientationChange() -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/slpc/Transition;->getNewState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

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

    .line 630
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 631
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 632
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 634
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->mOrientationListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->removeDeadListener()V

    .line 637
    :cond_0
    return-void
.end method

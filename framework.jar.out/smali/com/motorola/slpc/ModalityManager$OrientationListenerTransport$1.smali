.class Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$1;
.super Landroid/os/Handler;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$OrientationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

.field final synthetic val$this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;Lcom/motorola/slpc/ModalityManager;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$1;->this$1:Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$1;->val$this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport$1;->this$1:Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;

    # invokes: Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;->access$300(Lcom/motorola/slpc/ModalityManager$OrientationListenerTransport;Landroid/os/Message;)V

    .line 614
    return-void
.end method

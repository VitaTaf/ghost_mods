.class Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$2;
.super Landroid/os/Handler;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$MovementListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

.field final synthetic val$this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;Landroid/os/Looper;Lcom/motorola/slpc/ModalityManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$2;->this$1:Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    iput-object p3, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$2;->val$this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport$2;->this$1:Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;

    # invokes: Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;->access$500(Lcom/motorola/slpc/ModalityManager$MovementListenerTransport;Landroid/os/Message;)V

    .line 1118
    return-void
.end method

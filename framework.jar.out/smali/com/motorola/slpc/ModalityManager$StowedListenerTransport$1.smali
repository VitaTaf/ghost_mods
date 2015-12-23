.class Lcom/motorola/slpc/ModalityManager$StowedListenerTransport$1;
.super Landroid/os/Handler;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;-><init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$StowedListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

.field final synthetic val$this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;Lcom/motorola/slpc/ModalityManager;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport$1;->this$1:Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport$1;->val$this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport$1;->this$1:Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;

    # invokes: Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;->access$400(Lcom/motorola/slpc/ModalityManager$StowedListenerTransport;Landroid/os/Message;)V

    .line 862
    return-void
.end method

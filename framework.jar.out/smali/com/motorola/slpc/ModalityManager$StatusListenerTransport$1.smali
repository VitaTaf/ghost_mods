.class Lcom/motorola/slpc/ModalityManager$StatusListenerTransport$1;
.super Landroid/os/Handler;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport$1;->this$1:Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport$1;->this$1:Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    # getter for: Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->mStatusListener:Lcom/motorola/slpc/ModalityManager$StatusListener;
    invoke-static {v0}, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->access$000(Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;)Lcom/motorola/slpc/ModalityManager$StatusListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/motorola/slpc/ModalityManager$StatusListener;->onStatusChange(I)V

    .line 236
    :cond_0
    return-void
.end method

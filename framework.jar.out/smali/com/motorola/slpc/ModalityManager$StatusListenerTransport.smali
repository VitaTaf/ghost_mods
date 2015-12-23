.class Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;
.super Lcom/motorola/slpc/IStatusListener$Stub;
.source "ModalityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/ModalityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusListenerTransport"
.end annotation


# static fields
.field private static final MSG_STATUS_CHANGED:I = 0x1


# instance fields
.field private final mStatusHandler:Landroid/os/Handler;

.field private mStatusListener:Lcom/motorola/slpc/ModalityManager$StatusListener;

.field final synthetic this$0:Lcom/motorola/slpc/ModalityManager;


# direct methods
.method constructor <init>(Lcom/motorola/slpc/ModalityManager;Lcom/motorola/slpc/ModalityManager$StatusListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/motorola/slpc/ModalityManager$StatusListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->this$0:Lcom/motorola/slpc/ModalityManager;

    invoke-direct {p0}, Lcom/motorola/slpc/IStatusListener$Stub;-><init>()V

    .line 230
    new-instance v0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport$1;

    invoke-direct {v0, p0}, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport$1;-><init>(Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;)V

    iput-object v0, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->mStatusHandler:Landroid/os/Handler;

    .line 220
    iput-object p2, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->mStatusListener:Lcom/motorola/slpc/ModalityManager$StatusListener;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;)Lcom/motorola/slpc/ModalityManager$StatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->mStatusListener:Lcom/motorola/slpc/ModalityManager$StatusListener;

    return-object v0
.end method


# virtual methods
.method public onStatusChange(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 225
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/motorola/slpc/ModalityManager$StatusListenerTransport;->mStatusHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    return-void
.end method

.class Lcom/android/nfc/cardemulation/HostEmulationManager$1;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iput-object p1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 469
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 470
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 471
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 478
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 479
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 480
    monitor-exit v1

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

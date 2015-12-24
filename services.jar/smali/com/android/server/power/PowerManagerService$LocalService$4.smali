.class Lcom/android/server/power/PowerManagerService$LocalService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$LocalService;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$LocalService;

.field final synthetic val$l:Landroid/os/PowerManagerInternal$LowPowerModeListener;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$LocalService;Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 0

    .prologue
    .line 3638
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService$4;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService$4;->val$l:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3640
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService$4;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3641
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService$4;->this$1:Lcom/android/server/power/PowerManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLowPowerModeListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService$4;->val$l:Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3642
    monitor-exit v1

    .line 3643
    return-void

    .line 3642
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

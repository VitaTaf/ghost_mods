.class Lcom/android/systemui/statusbar/policy/FlashlightController$5;
.super Ljava/lang/Object;
.source "FlashlightController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 420
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$002(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z

    .line 422
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$900(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$500(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    .line 425
    return-void

    .line 422
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

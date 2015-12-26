.class Lcom/android/systemui/recents/model/TaskResourceLoadQueue;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# instance fields
.field mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method addTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit p0

    .line 57
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method clearTasks()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 75
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method nextTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

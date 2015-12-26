.class Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;
.super Landroid/app/ITaskStackListener$Stub;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/Recents;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 115
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 116
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v5, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v5, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v5}, Lcom/android/systemui/recents/Recents;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 120
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 121
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v5, v5, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 122
    .local v3, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 123
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 127
    .local v1, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    if-eqz v4, :cond_0

    .line 128
    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 130
    :cond_0
    iput v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 131
    iput v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 132
    iput-boolean v6, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 133
    iput-boolean v6, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 134
    iget-object v5, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v5, v5, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 136
    .end local v1    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v2    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v3    # "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    return-void
.end method

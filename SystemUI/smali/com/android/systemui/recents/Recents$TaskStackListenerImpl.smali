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
    .line 106
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Landroid/app/ITaskStackListener$Stub;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 120
    iget-object v6, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v6, v6, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v6, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 123
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v6, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v6, :cond_0

    .line 124
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 125
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 126
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 129
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v6, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v6, v6, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 130
    .local v3, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v2, v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 131
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 135
    .local v1, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    if-eqz v4, :cond_2

    .line 136
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v6, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 138
    :cond_2
    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 139
    iput v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 140
    iput-boolean v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 141
    iput-boolean v7, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 142
    iget-object v6, p0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v6, v6, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    goto :goto_0
.end method

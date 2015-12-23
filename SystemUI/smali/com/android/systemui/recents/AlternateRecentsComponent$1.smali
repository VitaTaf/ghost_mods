.class Lcom/android/systemui/recents/AlternateRecentsComponent$1;
.super Ljava/lang/Object;
.source "AlternateRecentsComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/AlternateRecentsComponent;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/AlternateRecentsComponent;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 244
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 245
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v3, v3, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 246
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 247
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 248
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 249
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 250
    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 251
    iget-object v3, p0, Lcom/android/systemui/recents/AlternateRecentsComponent$1;->this$0:Lcom/android/systemui/recents/AlternateRecentsComponent;

    iget-object v3, v3, Lcom/android/systemui/recents/AlternateRecentsComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 252
    return-void
.end method

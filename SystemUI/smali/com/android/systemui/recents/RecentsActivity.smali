.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;
.implements Lcom/android/systemui/recents/views/DebugOverlayView$DebugOverlayViewCallbacks;
.implements Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;
    }
.end annotation


# instance fields
.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mDebugOverlayStub:Landroid/view/ViewStub;

.field final mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

.field mLastTabKeyEventTime:J

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 178
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    return-void
.end method

.method private getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;-><init>(Landroid/app/FragmentManager;Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mResizeTaskDebugDialog:Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    return-object v0
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v2, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 300
    .local v0, "appWidgetId":I
    if-ltz v0, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, p0, v0, v3}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 303
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v1, "opts":Landroid/os/Bundle;
    const-string v2, "appWidgetCategory"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 308
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setPadding(IIII)V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    .line 314
    .end local v1    # "opts":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    goto :goto_0
.end method

.method bindSearchBarAppWidget()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 268
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 269
    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 272
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 273
    .local v0, "appWidgetId":I
    if-ltz v0, :cond_0

    .line 274
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 275
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v3, :cond_0

    .line 278
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->unbindSearchAppWidget(Landroid/appwidget/AppWidgetHost;I)V

    .line 279
    const/4 v0, -0x1

    .line 284
    :cond_0
    if-gez v0, :cond_1

    .line 285
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->bindSearchAppWidget(Landroid/appwidget/AppWidgetHost;)Landroid/util/Pair;

    move-result-object v2

    .line 287
    .local v2, "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v2, :cond_1

    .line 289
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSearchBarAppWidgetId(Landroid/content/Context;I)V

    .line 290
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 294
    .end local v2    # "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_1
    return-void
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 4
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 318
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 319
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 321
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 336
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 359
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 360
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 363
    const/4 v1, 0x1

    .line 365
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 341
    if-eqz p1, :cond_0

    .line 342
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 344
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 349
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method dismissRecentsToHomeWithoutTransitionAnimation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 354
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/RecentsActivity;->overridePendingTransition(II)V

    .line 355
    return-void
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 647
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 375
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 376
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 379
    new-instance v3, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v4, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 382
    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 383
    const v3, 0x7f0f00c3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 384
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 385
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 388
    const v3, 0x7f0f00c4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 389
    const v3, 0x7f0f00c5

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 390
    new-instance v3, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 397
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    :try_start_0
    const-string v3, "ambientRatio"

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 586
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 588
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 591
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 593
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 605
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->DebugModeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabled"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", please restart Recents now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 609
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 598
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 599
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 600
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 601
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 605
    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 499
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 500
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 504
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 505
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 506
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 507
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    .line 508
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 511
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 524
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 525
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 632
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 537
    sparse-switch p1, :sswitch_data_0

    .line 566
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 567
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 539
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move v1, v2

    .line 541
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_0

    .line 543
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 544
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_3
    move v1, v3

    .line 539
    goto :goto_1

    .line 550
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 554
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 559
    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 433
    :cond_0
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 669
    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 2

    .prologue
    .line 651
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 652
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 653
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v1}, Lcom/android/systemui/recents/Recents;->startScreenPinning(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 654
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 674
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 437
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 438
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 439
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 440
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 443
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "action_hide_recents_activity"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v4, "action_toggle_recents_activity"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v4, "action_start_enter_animation"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks()V

    .line 458
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-nez v4, :cond_2

    .line 459
    .local v3, "wasLaunchedByAm":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 462
    :cond_1
    return-void

    .line 458
    .end local v3    # "wasLaunchedByAm":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 466
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 467
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 468
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 469
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v1, v4}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 472
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 475
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 478
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 483
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 484
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    .line 485
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 486
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 487
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 488
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 489
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 642
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResizeTaskDebugDialog()Lcom/android/systemui/recents/RecentsResizeTaskDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/RecentsResizeTaskDialog;->showResizeTaskDialog(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/RecentsView;)V

    .line 624
    return-void
.end method

.method public onTaskViewClicked()V
    .locals 0

    .prologue
    .line 636
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 529
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 530
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 533
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 573
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    .line 662
    return-void
.end method

.method updateRecentsTasks()V
    .locals 15

    .prologue
    .line 189
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 190
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 191
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v5, :cond_0

    .line 192
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 196
    :cond_0
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v12

    if-nez v12, :cond_1

    .line 197
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {v4, v5, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 199
    :cond_1
    new-instance v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 200
    .local v3, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    iput v12, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 201
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    iput v12, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 202
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    iput v12, v3, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 203
    invoke-virtual {v4, p0, v5, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 205
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v7

    .line 206
    .local v7, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    iget-object v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v12

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, v13, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 207
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v12, :cond_2

    .line 208
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v12, v7}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 212
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    const/4 v13, 0x0

    invoke-direct {v0, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v12, "android.intent.category.HOME"

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const/high16 v12, 0x10200000

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    new-instance v14, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v12, :cond_5

    const v12, 0x7f050063

    :goto_1
    iget-object v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v13, v13, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    if-eqz v13, :cond_6

    const v13, 0x7f050064

    :goto_2
    invoke-static {p0, v12, v13}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v12

    invoke-direct {v14, p0, v0, v12}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    iput-object v14, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 224
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 225
    .local v10, "taskStackCount":I
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    .line 226
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v10, :cond_8

    .line 227
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/TaskStack;

    .line 228
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 229
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 230
    .local v9, "taskCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    if-ge v2, v9, :cond_3

    .line 231
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 232
    .local v8, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v13, v13, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    if-ne v12, v13, :cond_7

    .line 233
    const/4 v12, 0x1

    iput-boolean v12, v8, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 226
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 206
    .end local v0    # "homeIntent":Landroid/content/Intent;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskCount":I
    .end local v10    # "taskStackCount":I
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 216
    .restart local v0    # "homeIntent":Landroid/content/Intent;
    :cond_5
    const v12, 0x7f050061

    goto :goto_1

    :cond_6
    const v13, 0x7f050062

    goto :goto_2

    .line 230
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v9    # "taskCount":I
    .restart local v10    # "taskStackCount":I
    .restart local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 241
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "taskCount":I
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_8
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v12, :cond_a

    .line 242
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-nez v12, :cond_9

    .line 243
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v12}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 245
    :cond_9
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 259
    :goto_5
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 260
    return-void

    .line 248
    :cond_a
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    if-eqz v12, :cond_b

    .line 249
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_b
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/RecentsView;->hasValidSearchBar()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 252
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_5

    .line 254
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto :goto_5
.end method

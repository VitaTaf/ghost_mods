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

.field mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Lcom/android/systemui/recents/misc/DebugTrigger;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/DebugTrigger;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    return-void
.end method


# virtual methods
.method addSearchBarAppWidgetView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v2, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 305
    .local v0, "appWidgetId":I
    if-ltz v0, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2, p0, v0, v3}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v1, "opts":Landroid/os/Bundle;
    const-string v2, "appWidgetCategory"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 313
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setPadding(IIII)V

    .line 314
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V

    .line 319
    .end local v1    # "opts":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 316
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

    .line 270
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 273
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .line 274
    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 277
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 278
    .local v0, "appWidgetId":I
    if-ltz v0, :cond_0

    .line 279
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 280
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->unbindSearchAppWidget(Landroid/appwidget/AppWidgetHost;I)V

    .line 284
    const/4 v0, -0x1

    .line 289
    :cond_0
    if-gez v0, :cond_1

    .line 290
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->bindSearchAppWidget(Landroid/appwidget/AppWidgetHost;)Landroid/util/Pair;

    move-result-object v2

    .line 292
    .local v2, "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v2, :cond_1

    .line 294
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, p0, v3}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSearchBarAppWidgetId(Landroid/content/Context;I)V

    .line 295
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 299
    .end local v2    # "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_1
    return-void
.end method

.method dismissRecentsToFocusedTaskOrHome(Z)Z
    .locals 4
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 323
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 324
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 341
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    .line 358
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 359
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 362
    const/4 v1, 0x1

    .line 364
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

    .line 346
    if-eqz p1, :cond_0

    .line 347
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 349
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 354
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 415
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 621
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 373
    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 374
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 375
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 378
    new-instance v3, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v4, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 381
    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 382
    const v3, 0x7f0f00c3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 383
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 384
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v4, 0x700

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 387
    const v3, 0x7f0f00c4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 388
    const v3, 0x7f0f00c5

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 389
    new-instance v3, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/SystemUIApplication;

    const-class v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v4}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 398
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v3, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    :try_start_0
    const-string v3, "ambientRatio"

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 575
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 581
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 582
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 594
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

    .line 598
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 587
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 590
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 594
    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 489
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 493
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 494
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 495
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 496
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    .line 497
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 500
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 513
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 514
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 606
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 526
    sparse-switch p1, :sswitch_data_0

    .line 555
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 556
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 528
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

    .line 530
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_0

    .line 532
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 533
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 534
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_3
    move v1, v3

    .line 528
    goto :goto_1

    .line 539
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 543
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 548
    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 526
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
    .line 427
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 434
    :cond_0
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 643
    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 648
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 438
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 439
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 440
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 441
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "action_hide_recents_activity"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v3, "action_toggle_recents_activity"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v3, "action_start_enter_animation"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 458
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationTriggered()V

    .line 461
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 466
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 467
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 468
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/systemui/recents/AlternateRecentsComponent;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 471
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 474
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 477
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 478
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 616
    return-void
.end method

.method public onTaskViewClicked()V
    .locals 0

    .prologue
    .line 610
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 518
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 519
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 522
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 562
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    .line 636
    return-void
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 20
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    .line 193
    .local v8, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/AlternateRecentsComponent;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 194
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v9, :cond_0

    .line 195
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 199
    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    if-nez v17, :cond_1

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 202
    :cond_1
    new-instance v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 203
    .local v7, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 208
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v10

    .line 209
    .local v10, "root":Lcom/android/systemui/recents/model/SpaceNode;
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v12

    .line 210
    .local v12, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v3

    .line 211
    .local v3, "hasTasks":Z
    if-eqz v3, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 214
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    if-nez v3, :cond_4

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    .line 217
    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    .local v4, "homeIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.HOME"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const/high16 v17, 0x10200000

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    new-instance v19, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    const v17, 0x7f050063

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    const v18, 0x7f050064

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    .line 229
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 230
    .local v15, "taskStackCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 231
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v15, :cond_8

    .line 232
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/TaskStack;

    .line 233
    .local v11, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 234
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 235
    .local v14, "taskCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v14, :cond_3

    .line 236
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 237
    .local v13, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 238
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 231
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 214
    .end local v4    # "homeIntent":Landroid/content/Intent;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v11    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v14    # "taskCount":I
    .end local v15    # "taskStackCount":I
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 221
    .restart local v4    # "homeIntent":Landroid/content/Intent;
    :cond_5
    const v17, 0x7f050061

    goto/16 :goto_1

    :cond_6
    const v18, 0x7f050062

    goto :goto_2

    .line 235
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v11    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v13    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "taskCount":I
    .restart local v15    # "taskStackCount":I
    .restart local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 246
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v11    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "taskCount":I
    .end local v16    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 250
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 264
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 265
    return-void

    .line 253
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/RecentsView;->hasValidSearchBar()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_5

    .line 259
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto :goto_5
.end method

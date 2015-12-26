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

.field mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

.field mSearchAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 176
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

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    .line 303
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v1, "opts":Landroid/os/Bundle;
    const-string v2, "appWidgetCategory"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 308
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 309
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Landroid/view/View;)V

    .line 314
    .end local v1    # "opts":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBar(Landroid/view/View;)V

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
    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSearchAppWidgetHostView:Landroid/appwidget/AppWidgetHostView;

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
    .locals 2
    .param p1, "checkFilteredStackState"    # Z

    .prologue
    const/4 v0, 0x1

    .line 318
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    if-eqz v1, :cond_3

    .line 320
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->unfilterFilteredStacks()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    if-eqz v1, :cond_2

    .line 326
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    goto :goto_0

    .line 335
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)Z
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dismissRecentsToHomeRaw(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 340
    if-eqz p1, :cond_0

    .line 341
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 343
    .local v0, "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v2, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    invoke-direct {v2, v0}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 348
    .end local v0    # "exitTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    goto :goto_0
.end method

.method inflateDebugOverlay()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onAllTaskViewsDismissed()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishLaunchHomeRunnable:Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivity$FinishRecentsRunnable;->run()V

    .line 614
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome(Z)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 365
    invoke-static {p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 368
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 372
    new-instance v2, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v3, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 375
    const v2, 0x7f040031

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 376
    const v2, 0x7f0f00c3

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 377
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/recents/views/RecentsView;->setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V

    .line 378
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v3, 0x700

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    .line 381
    const v2, 0x7f0f00c4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 382
    const v2, 0x7f0f00c5

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlayStub:Landroid/view/ViewStub;

    .line 383
    new-instance v2, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/SystemUIApplication;

    const-class v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 386
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 392
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v2, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    :try_start_0
    const-string v2, "ambientRatio"

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 402
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDebugModeTriggered()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    if-eqz v1, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/RecentsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 570
    .local v0, "settings":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 572
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 574
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 575
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->disable()V

    .line 587
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

    .line 591
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 580
    .restart local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 581
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 582
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->inflateDebugOverlay()V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/DebugOverlayView;->enable()V

    goto :goto_0

    .line 587
    :cond_3
    const-string v1, "Disabled"

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHost;->stopListening()V

    .line 482
    return-void
.end method

.method public onEnterAnimationTriggered()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 486
    new-instance v2, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v2, p0, v3, v3, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 487
    .local v2, "t":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 488
    .local v1, "ctx":Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/views/RecentsView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 489
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v3, :cond_0

    .line 490
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 493
    .local v0, "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    iget-object v3, v1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v4, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 506
    .end local v0    # "cbRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/systemui/recents/RecentsAppWidgetHost$RecentsAppWidgetHostCallbacks;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startEnterRecentsAnimation()V

    .line 507
    return-void
.end method

.method public onExitToHomeAnimationTriggered()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->startExitRecentsAnimation()V

    .line 599
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 519
    sparse-switch p1, :sswitch_data_0

    .line 548
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugTrigger:Lcom/android/systemui/recents/misc/DebugTrigger;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/misc/DebugTrigger;->onKeyEvent(I)V

    .line 549
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 521
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

    .line 523
    .local v1, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_0

    .line 525
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    .line 526
    .local v0, "backward":Z
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-nez v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    goto :goto_0

    .end local v0    # "backward":Z
    .end local v1    # "hasRepKeyTimeElapsed":Z
    :cond_3
    move v1, v3

    .line 521
    goto :goto_1

    .line 532
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 536
    :sswitch_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    goto :goto_0

    .line 541
    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->dismissFocusedTask()V

    goto :goto_0

    .line 519
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
    .line 421
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 422
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->setIntent(Landroid/content/Intent;)V

    .line 425
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    .line 428
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/DebugOverlayView;->clear()V

    .line 431
    :cond_0
    return-void
.end method

.method public onPrimarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 636
    return-void
.end method

.method public onScreenPinningRequest()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 621
    :cond_0
    return-void
.end method

.method public onSecondarySeekBarChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 641
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 436
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    .line 437
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 438
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 439
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 442
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 443
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "action_hide_recents_activity"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v3, "action_toggle_recents_activity"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v3, "action_start_enter_animation"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->registerReceivers(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsTasks(Landroid/content/Intent;)V

    .line 453
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 458
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mVisible:Z

    .line 459
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 460
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 461
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {p0, v1, v2}, Lcom/android/systemui/recents/Recents;->notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V

    .line 464
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->onRecentsHidden()V

    .line 467
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mServiceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 470
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unregisterReceivers()V

    .line 471
    return-void
.end method

.method public onTaskLaunchFailed()V
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHomeRaw(Z)V

    .line 609
    return-void
.end method

.method public onTaskViewClicked()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 511
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 512
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 515
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->onUserInteraction()V

    .line 555
    return-void
.end method

.method public refreshSearchWidget()V
    .locals 0

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->bindSearchBarAppWidget()V

    .line 628
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    .line 629
    return-void
.end method

.method updateRecentsTasks(Landroid/content/Intent;)V
    .locals 20
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 187
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v8

    .line 188
    .local v8, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 189
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v9, :cond_0

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 194
    :cond_0
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    if-nez v17, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 197
    :cond_1
    new-instance v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 198
    .local v7, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v9, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 203
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getSpaceNode()Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v10

    .line 204
    .local v10, "root":Lcom/android/systemui/recents/model/SpaceNode;
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v12

    .line 205
    .local v12, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {v10}, Lcom/android/systemui/recents/model/SpaceNode;->hasTasks()Z

    move-result v3

    .line 206
    .local v3, "hasTasks":Z
    if-eqz v3, :cond_2

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/systemui/recents/views/RecentsView;->setTaskStacks(Ljava/util/ArrayList;)V

    .line 209
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

    .line 212
    new-instance v4, Landroid/content/Intent;

    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .local v4, "homeIntent":Landroid/content/Intent;
    const-string v17, "android.intent.category.HOME"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const/high16 v17, 0x10200000

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
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

    .line 224
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 225
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

    .line 226
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v15, :cond_8

    .line 227
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/TaskStack;

    .line 228
    .local v11, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 229
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 230
    .local v14, "taskCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v14, :cond_3

    .line 231
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 232
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

    .line 233
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v13, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    .line 226
    .end local v13    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 209
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

    .line 216
    .restart local v4    # "homeIntent":Landroid/content/Intent;
    :cond_5
    const v17, 0x7f050061

    goto/16 :goto_1

    :cond_6
    const v18, 0x7f050062

    goto :goto_2

    .line 230
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

    .line 241
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

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_9

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyViewStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    .line 245
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    .line 259
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation()V

    .line 260
    return-void

    .line 248
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/RecentsView;->hasSearchBar()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/RecentsView;->setSearchBarVisibility(I)V

    goto :goto_5

    .line 254
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsActivity;->addSearchBarAppWidgetView()V

    goto :goto_5
.end method

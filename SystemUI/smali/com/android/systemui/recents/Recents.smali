.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/RecentsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;,
        Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/systemui/recents/Recents;

.field static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;


# instance fields
.field mBootCompleted:Z

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

.field mStartAnimationTriggered:Z

.field mStatusBarHeight:I

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    .line 180
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 194
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 837
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 838
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 839
    return-object v0
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    return-object v0
.end method

.method public static getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 202
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0}, Lcom/android/systemui/recents/Recents;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    .line 204
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    iput-object p0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 205
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->start()V

    .line 206
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->onBootCompleted()V

    .line 208
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    return-object v0
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "visible"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 797
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->visibilityChanged(Z)V

    .line 805
    :goto_0
    return-void

    .line 800
    :cond_0
    const-string v1, "action_notify_recents_visibility_change"

    invoke-static {p0, v1}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 802
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 803
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static onStartScreenPinning(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 825
    invoke-static {p0}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v2

    iget-object v0, v2, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 827
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 828
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 829
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 831
    :cond_0
    return-void
.end method

.method public static startScreenPinning(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    invoke-static {p0}, Lcom/android/systemui/recents/Recents;->onStartScreenPinning(Landroid/content/Context;)V

    .line 822
    :goto_0
    return-void

    .line 818
    :cond_0
    const-string v1, "action_screen_pinning_request"

    invoke-static {p0, v1}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 820
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static visibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 807
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 808
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 810
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method configurationChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout(Z)V

    .line 478
    return-void
.end method

.method getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "fromSearchHome"    # Z

    .prologue
    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 588
    if-eqz p1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v1, 0x7f050053

    const v2, 0x7f050054

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v1, 0x7f050051

    const v2, 0x7f050052

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;)Landroid/app/ActivityOptions;
    .locals 17
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 606
    new-instance v14, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v14}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 607
    .local v14, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v16

    .line 609
    .local v16, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v16, :cond_0

    iget-object v3, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    .line 610
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 611
    .local v15, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v3, v5

    float-to-int v13, v3

    .line 612
    .local v13, "toHeaderWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v3, v5

    float-to-int v12, v3

    .line 613
    .local v12, "toHeaderHeight":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 618
    .local v4, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 619
    .local v11, "c":Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v11, v3, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3, v14}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3, v11}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 622
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 625
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget v5, v15, Landroid/graphics/Rect;->left:I

    iget v6, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    move-object/from16 v10, p0

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 632
    .end local v4    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v12    # "toHeaderHeight":I
    .end local v13    # "toHeaderWidth":I
    .end local v15    # "toTaskRect":Landroid/graphics/Rect;
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "runningTaskId"    # I
    .param p4, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 641
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    .line 643
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 644
    .local v3, "taskCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 645
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 646
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v5, p3, :cond_2

    .line 647
    move-object v2, v1

    .line 648
    invoke-virtual {p4, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 653
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "taskCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 655
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 659
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 660
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 662
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v5

    .line 644
    .restart local v0    # "i":I
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "taskCount":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 4

    .prologue
    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 577
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v1, 0x7f050055

    const v2, 0x7f050056

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/Recents;->hideRecentsInternal(ZZ)V

    .line 309
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 306
    const-string v1, "triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method hideRecentsInternal(ZZ)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 312
    iget-boolean v2, p0, Lcom/android/systemui/recents/Recents;->mBootCompleted:Z

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 314
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v3, "action_hide_recents_activity"

    invoke-static {v2, v3}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "triggeredFromAltTab"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    const-string v2, "triggeredFromHomeKey"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 322
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-void
.end method

.method public onAnimationStarted()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 847
    iget-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    .line 852
    new-instance v4, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;)V

    .line 871
    .local v4, "fallbackReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "action_start_enter_animation"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 872
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 875
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mBootCompleted:Z

    .line 270
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->configurationChanged()V

    .line 472
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public preloadRecents()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->preloadRecentsInternal()V

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method preloadRecentsInternal()V
    .locals 3

    .prologue
    .line 363
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 364
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 365
    sget-object v1, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 366
    return-void
.end method

.method reloadHeaderBarLayout(Z)V
    .locals 14
    .param p1, "reloadWidget"    # Z

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 483
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    .line 484
    const v0, 0x1050011

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    .line 485
    const v0, 0x1050012

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    .line 486
    const v0, 0x1050014

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 489
    if-eqz p1, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/Recents;->reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 496
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    invoke-virtual {v0, v12, v1, v2, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 503
    :goto_1
    new-instance v8, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 504
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 505
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v6

    .line 506
    .local v6, "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v10, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 507
    .local v10, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 508
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v6, v0, v1, v10}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 509
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v11

    .line 510
    .local v11, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0d0061

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 511
    .local v9, "taskBarHeight":I
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 513
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v12, v12, v1, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    .line 517
    return-void

    .end local v6    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskBarHeight":I
    .end local v10    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v11    # "taskViewSize":Landroid/graphics/Rect;
    :cond_1
    move v4, v12

    .line 493
    goto/16 :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    invoke-virtual {v0, v12, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method reloadSearchBarAppWidget(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 525
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-gez v2, :cond_0

    .line 526
    new-instance v0, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    sget v2, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 528
    .local v0, "host":Landroid/appwidget/AppWidgetHost;
    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->bindSearchAppWidget(Landroid/appwidget/AppWidgetHost;)Landroid/util/Pair;

    move-result-object v1

    .line 529
    .local v1, "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-eqz v1, :cond_0

    .line 531
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSearchBarAppWidgetId(Landroid/content/Context;I)V

    .line 535
    .end local v0    # "host":Landroid/appwidget/AppWidgetHost;
    .end local v1    # "widgetInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 790
    sput-object p1, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 791
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->showRelativeAffiliatedTask(Z)V

    .line 455
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->showRelativeAffiliatedTask(Z)V

    .line 460
    return-void
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents;->showRecentsInternal(Z)V

    .line 284
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method showRecentsInternal(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 22
    .param p1, "showNextTask"    # Z

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getFocusedStack()I

    move-result v5

    .line 376
    .local v5, "focusedStackId":I
    const/4 v4, 0x0

    .line 377
    .local v4, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    .line 378
    .local v9, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v11

    .line 379
    .local v11, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 381
    if-gez v5, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {v11, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack(I)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 388
    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v18

    if-eqz v18, :cond_0

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    .line 392
    .local v12, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v12, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 397
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    .line 398
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v16, 0x0

    .line 399
    .local v16, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v8, 0x0

    .line 400
    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 401
    .local v14, "taskCount":I
    const/4 v10, 0x0

    .line 402
    .local v10, "numAffiliatedTasks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v14, :cond_3

    .line 403
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 404
    .local v13, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 405
    iget-object v6, v13, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 407
    .local v6, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_5

    .line 408
    invoke-virtual {v6, v13}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v17

    .line 409
    .local v17, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05005b

    const v20, 0x7f05005a

    invoke-static/range {v18 .. v20}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v8

    .line 418
    :goto_3
    if-eqz v17, :cond_2

    .line 419
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v16

    .line 421
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v10

    .line 427
    .end local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_3
    if-nez v16, :cond_8

    .line 428
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_0

    .line 429
    if-eqz p1, :cond_7

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f050059

    invoke-static/range {v19 .. v20}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 384
    .end local v7    # "i":I
    .end local v8    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v10    # "numAffiliatedTasks":I
    .end local v12    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v14    # "taskCount":I
    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    check-cast v4, Lcom/android/systemui/recents/model/TaskStack;

    .restart local v4    # "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    goto/16 :goto_1

    .line 413
    .restart local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v7    # "i":I
    .restart local v8    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v10    # "numAffiliatedTasks":I
    .restart local v12    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "taskCount":I
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    invoke-virtual {v6, v13}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v17

    .line 414
    .restart local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f05005e

    const v20, 0x7f05005d

    invoke-static/range {v18 .. v20}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v8

    goto :goto_3

    .line 402
    .end local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 434
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f05005c

    invoke-static/range {v19 .. v20}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 443
    :cond_8
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 447
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method public start()V
    .locals 10
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 224
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    if-nez v0, :cond_0

    .line 225
    sput-object p0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 234
    new-instance v0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/Recents;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    new-instance v0, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    .line 242
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    const-string v0, "action_screen_pinning_request"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 250
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 252
    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout(Z)V

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 257
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v8

    .line 258
    .local v8, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 259
    new-instance v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 260
    .local v6, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v0

    iput v0, v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 261
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v0

    iput v0, v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 262
    iput-boolean v9, v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 263
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, v8, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 264
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V
    .locals 5
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "fromHome"    # Z
    .param p4, "fromSearchHome"    # Z
    .param p5, "fromThumbnail"    # Z
    .param p6, "vr"    # Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 764
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 765
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    .line 766
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p5, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 767
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iput v1, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 768
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 769
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    iput-boolean v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 770
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    .line 771
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v4, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v4, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    .line 772
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 779
    if-eqz p2, :cond_3

    .line 780
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 784
    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 785
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    move v1, v2

    .line 764
    goto :goto_0

    .line 767
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 782
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2
.end method

.method startRecentsActivity()V
    .locals 3

    .prologue
    .line 565
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 566
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 567
    .local v0, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 568
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 570
    :cond_1
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 27
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 667
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v21

    .line 668
    .local v21, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v4, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    .line 670
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_0

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 677
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v4, :cond_1

    .line 678
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 679
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v25

    .line 680
    .local v25, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/model/TaskStack;

    .line 681
    .local v24, "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 684
    .local v10, "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 685
    .local v6, "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 757
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :goto_0
    return-void

    .line 690
    .end local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .end local v24    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v25    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_1
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 691
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v25

    .line 692
    .restart local v25    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/model/TaskStack;

    .line 695
    .restart local v24    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 698
    .restart local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_6

    const/16 v18, 0x1

    .line 699
    .local v18, "hasRecentTasks":Z
    :goto_1
    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    if-eqz v18, :cond_7

    const/16 v26, 0x1

    .line 701
    .local v26, "useThumbnailTransition":Z
    :goto_2
    if-eqz v26, :cond_2

    .line 703
    new-instance v20, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct/range {v20 .. v20}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 704
    .local v20, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, v20

    iput v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 705
    const/4 v4, 0x0

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 706
    const/4 v4, 0x1

    move-object/from16 v0, v20

    iput-boolean v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 712
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    if-eqz v6, :cond_8

    .line 713
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 721
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v20    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    :cond_2
    :goto_3
    if-nez v26, :cond_5

    .line 724
    if-eqz v18, :cond_a

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v19

    .line 728
    .local v19, "homeActivityPackage":Ljava/lang/String;
    const/16 v22, 0x0

    .line 729
    .local v22, "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    const/16 v23, 0x0

    .line 730
    .local v23, "searchWidgetPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    .line 736
    :goto_4
    if-eqz v22, :cond_3

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    .line 737
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    .line 740
    :cond_3
    const/4 v8, 0x0

    .line 741
    .local v8, "fromSearchHome":Z
    if-eqz v19, :cond_4

    if-eqz v23, :cond_4

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 743
    const/4 v8, 0x1

    .line 746
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/Recents;->getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 747
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 756
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v8    # "fromSearchHome":Z
    .end local v19    # "homeActivityPackage":Ljava/lang/String;
    .end local v22    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v23    # "searchWidgetPackage":Ljava/lang/String;
    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    goto/16 :goto_0

    .line 698
    .end local v18    # "hasRecentTasks":Z
    .end local v26    # "useThumbnailTransition":Z
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 699
    .restart local v18    # "hasRecentTasks":Z
    :cond_7
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 717
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    .restart local v20    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v26    # "useThumbnailTransition":Z
    :cond_8
    const/16 v26, 0x0

    goto :goto_3

    .line 734
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v20    # "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v19    # "homeActivityPackage":Ljava/lang/String;
    .restart local v22    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v23    # "searchWidgetPackage":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    goto :goto_4

    .line 751
    .end local v19    # "homeActivityPackage":Ljava/lang/String;
    .end local v22    # "searchWidget":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v23    # "searchWidgetPackage":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 752
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v6

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    goto :goto_5
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 3
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentsInternal()V

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 333
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method toggleRecentsActivity()V
    .locals 8

    .prologue
    .line 542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 560
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 549
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 550
    .local v1, "isTopTaskHome":Ljava/util/concurrent/atomic/AtomicBoolean;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v4, "action_toggle_recents_activity"

    invoke-static {v3, v4}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 553
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    goto :goto_0

    .line 558
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method

.method toggleRecentsInternal()V
    .locals 2

    .prologue
    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.class public Lcom/android/systemui/recents/misc/SystemServicesProxy;
.super Ljava/lang/Object;
.source "SystemServicesProxy.java"


# static fields
.field static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAccm:Landroid/view/accessibility/AccessibilityManager;

.field mAm:Landroid/app/ActivityManager;

.field mAssistComponent:Landroid/content/ComponentName;

.field mAwm:Landroid/appwidget/AppWidgetManager;

.field mBgProtectionCanvas:Landroid/graphics/Canvas;

.field mBgProtectionPaint:Landroid/graphics/Paint;

.field mDisplay:Landroid/view/Display;

.field mDummyThumbnailHeight:I

.field mDummyThumbnailWidth:I

.field mIam:Landroid/app/IActivityManager;

.field mIpm:Landroid/content/pm/IPackageManager;

.field mPm:Landroid/content/pm/PackageManager;

.field mRecentsPackage:Ljava/lang/String;

.field mSm:Landroid/app/SearchManager;

.field mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 106
    sget-object v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    .line 112
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    .line 113
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    .line 114
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    .line 116
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    .line 117
    const-string v4, "search"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mSm:Landroid/app/SearchManager;

    .line 118
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    .line 119
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDisplay:Landroid/view/Display;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mRecentsPackage:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    .line 125
    .local v3, "wId":I
    const v1, 0x1050001

    .line 126
    .local v1, "hId":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailWidth:I

    .line 127
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mDummyThumbnailHeight:I

    .line 130
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 132
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    .line 136
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mSm:Landroid/app/SearchManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "assist":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    .line 146
    :cond_0
    return-void
.end method

.method private getRunningTasks(I)Ljava/util/List;
    .locals 1
    .param p1, "numTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "activityManager"    # Landroid/app/ActivityManager;
    .param p1, "taskId"    # I

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v1

    .line 355
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 369
    :cond_0
    :goto_0
    return-object v2

    .line 357
    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 358
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, v1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 359
    .local v0, "descriptor":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v3, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 363
    :cond_2
    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public bindSearchAppWidget(Landroid/appwidget/AppWidgetHost;)Landroid/util/Pair;
    .locals 6
    .param p1, "host"    # Landroid/appwidget/AppWidgetHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/appwidget/AppWidgetHost;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 517
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    if-nez v4, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-object v3

    .line 518
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 524
    .local v2, "searchWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 528
    .local v1, "searchWidgetId":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v0, "opts":Landroid/os/Bundle;
    const-string v4, "appWidgetCategory"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v1, v5, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 532
    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 535
    :cond_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 454
    :goto_0
    return-object v1

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 454
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_0

    .line 408
    :goto_0
    return-object v1

    .line 405
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIpm:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x80

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllStackInfos()Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v6, :cond_1

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 293
    :cond_0
    :goto_0
    return-object v5

    .line 282
    :cond_1
    :try_start_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 284
    .local v5, "stacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/ActivityManager$StackInfo;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v3

    .line 285
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 286
    .local v4, "stackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 287
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$StackInfo;

    .line 288
    .local v2, "info":Landroid/app/ActivityManager$StackInfo;
    iget v6, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 291
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v4    # "stackCount":I
    .end local v5    # "stacks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 293
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1
    .param p1, "appWidgetId"    # I

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getBadgedIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "userId"    # I

    .prologue
    .line 461
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 464
    :cond_0
    return-object p1
.end method

.method public getFocusedStack()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 299
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v2, :cond_0

    .line 305
    :goto_0
    return v1

    .line 302
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getHomeActivityPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 469
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-object v3

    .line 472
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v1, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 474
    .local v0, "defaultHomeActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 477
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 478
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 479
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRecentTasks(IIZ)Ljava/util/List;
    .locals 11
    .param p1, "numLatestTasks"    # I
    .param p2, "userId"    # I
    .param p3, "isTopTaskHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v10, 0x800000

    const/4 v7, 0x0

    .line 151
    iget-object v8, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v8, :cond_0

    const/4 v7, 0x0

    .line 218
    :goto_0
    return-object v7

    .line 185
    :cond_0
    const/16 v3, 0xa

    .line 186
    .local v3, "minNumTasksToQuery":I
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 187
    .local v4, "numTasksToQuery":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    const/16 v9, 0xf

    invoke-virtual {v8, v4, v9, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v6

    .line 194
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v6, :cond_1

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 198
    :cond_1
    const/4 v1, 0x1

    .line 199
    .local v1, "isFirstValidTask":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 209
    .local v5, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    and-int/2addr v8, v10

    if-ne v8, v10, :cond_3

    const/4 v0, 0x1

    .line 211
    .local v0, "isExcluded":Z
    :goto_2
    if-eqz v0, :cond_4

    if-nez p3, :cond_2

    if-nez v1, :cond_4

    .line 212
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .end local v0    # "isExcluded":Z
    :cond_3
    move v0, v7

    .line 209
    goto :goto_2

    .line 215
    .restart local v0    # "isExcluded":Z
    :cond_4
    const/4 v1, 0x0

    .line 216
    goto :goto_1

    .line 218
    .end local v0    # "isExcluded":Z
    .end local v5    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 586
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 579
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getTaskThumbnail(I)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "taskId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    move-object v6, v7

    .line 347
    :cond_0
    :goto_0
    return-object v6

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getThumbnail(Landroid/app/ActivityManager;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 334
    .local v6, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 335
    invoke-virtual {v6, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 339
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mBgProtectionCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 344
    const-string v0, "SystemServicesProxy"

    const-string v1, "Invalid screenshot detected from getTaskThumbnail()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    .prologue
    .line 229
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 230
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 233
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWindowRect()Landroid/graphics/Rect;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 593
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 594
    .local v1, "windowRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    if-nez v2, :cond_0

    .line 599
    :goto_0
    return-object v1

    .line 596
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 597
    .local v0, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 598
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public isForegroundUserOwner()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInHomeStack(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->isInHomeStack(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Z
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeTopMost"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    const/4 v1, 0x0

    .line 239
    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 243
    .local v0, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    :cond_0
    const/4 v1, 0x1

    .line 255
    .end local v0    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return v1

    .line 251
    .restart local v0    # "topActivity":Landroid/content/ComponentName;
    :cond_2
    if-eqz p2, :cond_1

    .line 252
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 561
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAccm:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveTaskToFront(ILandroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v2, 0x1

    .line 374
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 377
    :cond_0
    if-eqz p2, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .prologue
    .line 646
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 653
    :goto_0
    return-void

    .line 649
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_0
.end method

.method public resizeTask(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resolveSearchAppWidget()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 499
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    if-nez v4, :cond_0

    move-object v1, v3

    .line 510
    :goto_0
    return-object v1

    .line 500
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    if-nez v4, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 503
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders(I)Ljava/util/List;

    move-result-object v2

    .line 505
    .local v2, "widgets":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 506
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAssistComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    move-object v1, v3

    .line 510
    goto :goto_0
.end method

.method public startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I
    .param p3, "taskName"    # Ljava/lang/String;
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 621
    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-eqz v3, :cond_1

    .line 623
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez p4, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4, p2, v3}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    .line 630
    :goto_1
    return v1

    .line 623
    :cond_0
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f0c0106

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 630
    goto :goto_1
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    .locals 2
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    if-nez v1, :cond_0

    .line 642
    :goto_0
    return-void

    .line 638
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIam:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unbindSearchAppWidget(Landroid/appwidget/AppWidgetHost;I)V
    .locals 1
    .param p1, "host"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mAwm:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

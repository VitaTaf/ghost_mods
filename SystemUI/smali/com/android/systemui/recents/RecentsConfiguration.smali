.class public Lcom/android/systemui/recents/RecentsConfiguration;
.super Ljava/lang/Object;
.source "RecentsConfiguration.java"


# static fields
.field static sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

.field static sPrevConfigurationHashCode:I


# instance fields
.field public altTabKeyDelay:I

.field public debugModeEnabled:Z

.field public developerOptionsEnabled:Z

.field public dismissAllButtonSizePx:I

.field public displayRect:Landroid/graphics/Rect;

.field public fakeShadows:Z

.field public fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field public fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public filteringCurrentViewsAnimDuration:I

.field public filteringNewViewsAnimDuration:I

.field hasTransposedNavBar:Z

.field hasTransposedSearchBar:Z

.field isLandscape:Z

.field public launchedFromAppWithThumbnail:Z

.field public launchedFromHome:Z

.field public launchedFromSearchHome:Z

.field public launchedHasConfigurationChanged:Z

.field public launchedNumVisibleTasks:I

.field public launchedNumVisibleThumbnails:I

.field public launchedReuseTaskStackViews:Z

.field public launchedToTaskId:I

.field public launchedWithAltTab:Z

.field public launchedWithNoRecentTasks:Z

.field public linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field public lockToAppEnabled:Z

.field public maxNumTasksToLoad:I

.field public multiStackEnabled:Z

.field public navBarScrimEnterDuration:I

.field public quintOutInterpolator:Landroid/view/animation/Interpolator;

.field searchBarAppWidgetId:I

.field public searchBarSpaceHeightPx:I

.field public svelteLevel:I

.field public systemInsets:Landroid/graphics/Rect;

.field public taskBarDismissDozeDelaySeconds:I

.field public taskBarHeight:I

.field public taskBarViewAffiliationColorMinAlpha:F

.field public taskBarViewDarkTextColor:I

.field public taskBarViewDefaultBackgroundColor:I

.field public taskBarViewHighlightColor:I

.field public taskBarViewLightTextColor:I

.field public taskStackMaxDim:I

.field public taskStackOverscrollPct:F

.field public taskStackScrollDuration:I

.field public taskStackTopPaddingPx:I

.field public taskStackWidthPaddingPct:F

.field public taskViewAffiliateGroupEnterOffsetPx:I

.field public taskViewEnterFromAppDuration:I

.field public taskViewEnterFromHomeDuration:I

.field public taskViewEnterFromHomeStaggerDelay:I

.field public taskViewExitToAppDuration:I

.field public taskViewExitToHomeDuration:I

.field public taskViewHighlightPx:I

.field public taskViewRemoveAnimDuration:I

.field public taskViewRemoveAnimTranslationXPx:I

.field public taskViewRoundedCornerRadiusPx:I

.field public taskViewThumbnailAlpha:F

.field public taskViewTranslationZMaxPx:I

.field public taskViewTranslationZMinPx:I

.field public transitionEnterFromAppDelay:I

.field public transitionEnterFromHomeDelay:I

.field public useHardwareLayers:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 149
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 151
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 153
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    const v0, 0x10c0005

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->quintOutInterpolator:Landroid/view/animation/Interpolator;

    .line 157
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v0
.end method

.method public static reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    .line 161
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    .line 165
    .local v0, "configHashCode":I
    sget v1, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    if-eq v1, v0, :cond_1

    .line 166
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/RecentsConfiguration;->update(Landroid/content/Context;)V

    .line 167
    sput v0, Lcom/android/systemui/recents/RecentsConfiguration;->sPrevConfigurationHashCode:I

    .line 169
    :cond_1
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v1, p0, p1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    .line 170
    sget-object v1, Lcom/android/systemui/recents/RecentsConfiguration;->sInstance:Lcom/android/systemui/recents/RecentsConfiguration;

    return-object v1
.end method


# virtual methods
.method public getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 343
    .local v0, "searchBarBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 344
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_0

    .line 346
    sub-int v1, p1, p4

    invoke-virtual {p5, v2, p3, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, v2, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public getSearchBarBounds(IIILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowWidth"    # I
    .param p2, "windowHeight"    # I
    .param p3, "topInset"    # I
    .param p4, "searchBarSpaceBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 360
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 361
    .local v0, "searchBarSize":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasSearchBarAppWidget()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 365
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    if-eqz v1, :cond_1

    .line 367
    invoke-virtual {p4, v2, p3, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_1
    add-int v1, p3, v0

    invoke-virtual {p4, v2, p3, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public hasNavBarScrim()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSearchBarAppWidget()Z
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatusBarScrim()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldAnimateNavBarScrim()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAnimateStatusBarScrim()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    return v0
.end method

.method update(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 181
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 182
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 185
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-object v5, Lcom/android/systemui/recents/Constants$Values$App;->Key_DebugModeEnabled:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    .line 186
    iget-boolean v5, p0, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v5, :cond_0

    .line 187
    sput-boolean v3, Lcom/android/systemui/recents/misc/Console;->Enabled:Z

    .line 191
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    .line 191
    const v3, 0x7f09000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedSearchBar:Z

    .line 192
    const v3, 0x7f09000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    .line 196
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    .line 200
    const v3, 0x7f0a0018

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    .line 205
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->maxNumTasksToLoad:I

    .line 208
    const v3, 0x7f0d0062

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarSpaceHeightPx:I

    .line 209
    sget-object v3, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 211
    const v3, 0x7f0a0022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    .line 213
    const v3, 0x7f0d0063

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackWidthPaddingPct:F

    .line 214
    const v3, 0x7f0d0064

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackOverscrollPct:F

    .line 215
    const v3, 0x7f0a0023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackMaxDim:I

    .line 216
    const v3, 0x7f0d0065

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackTopPaddingPx:I

    .line 217
    const v3, 0x7f0d0066

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->dismissAllButtonSizePx:I

    .line 220
    const v3, 0x7f0a0019

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromAppDelay:I

    .line 222
    const v3, 0x7f0a001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->transitionEnterFromHomeDelay:I

    .line 226
    const v3, 0x7f0a001a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    .line 228
    const v3, 0x7f0a001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeDuration:I

    .line 230
    const v3, 0x7f0a001e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromHomeStaggerDelay:I

    .line 232
    const v3, 0x7f0a001b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToAppDuration:I

    .line 234
    const v3, 0x7f0a001f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewExitToHomeDuration:I

    .line 236
    const v3, 0x7f0a0021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimDuration:I

    .line 238
    const v3, 0x7f0d005d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRemoveAnimTranslationXPx:I

    .line 240
    const v3, 0x7f0d005a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    .line 242
    const v3, 0x7f0d005e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    .line 243
    const v3, 0x7f0d005b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMinPx:I

    .line 244
    const v3, 0x7f0d005c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewTranslationZMaxPx:I

    .line 245
    const v3, 0x7f0d005f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewAffiliateGroupEnterOffsetPx:I

    .line 247
    const v3, 0x7f0d0060

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    .line 250
    const v3, 0x7f08001b

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    .line 252
    const v3, 0x7f08001c

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    .line 254
    const v3, 0x7f08001d

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    .line 256
    const v3, 0x7f080020

    invoke-virtual {v1, v3, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    .line 258
    const v3, 0x7f0d0067

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 262
    const v3, 0x7f0d0061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarHeight:I

    .line 263
    const v3, 0x7f0a0016

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    .line 267
    const v3, 0x7f0a0020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->navBarScrimEnterDuration:I

    .line 271
    const v3, 0x7f090002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->useHardwareLayers:Z

    .line 272
    const v3, 0x7f0a0024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->altTabKeyDelay:I

    .line 273
    const v3, 0x7f090003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    .line 274
    const v3, 0x7f0a0025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    .line 275
    return-void

    :cond_1
    move v3, v4

    .line 190
    goto/16 :goto_0
.end method

.method public updateOnConfigurationChange()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 306
    return-void
.end method

.method updateOnReinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    const-string v0, "development_settings_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getGlobalSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->developerOptionsEnabled:Z

    .line 295
    const-string v0, "lock_to_app_enabled"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsConfiguration;->lockToAppEnabled:Z

    .line 298
    const-string v0, "true"

    const-string v1, "persist.sys.debug.multi_window"

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    .line 299
    return-void

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0

    :cond_1
    move v1, v2

    .line 295
    goto :goto_1
.end method

.method public updateSearchBarAppWidgetId(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I

    .prologue
    .line 284
    iput p2, p0, Lcom/android/systemui/recents/RecentsConfiguration;->searchBarAppWidgetId:I

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/Constants$Values$App;->Key_SearchAppWidgetId:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void
.end method

.method public updateSystemInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 280
    return-void
.end method

.class public Lcom/android/systemui/recents/RecentsAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "RecentsAppWidgetHostView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviousOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private updateLastInflationOrientation()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->mPreviousOrientation:I

    .line 45
    return-void
.end method


# virtual methods
.method public isReinflateRequired()Z
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 54
    .local v0, "orientation":I
    iget v1, p0, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    .line 55
    const/4 v1, 0x1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->updateLastInflationOrientation()V

    .line 37
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 38
    return-void
.end method

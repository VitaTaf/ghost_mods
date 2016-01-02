.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

.field mSearchBar:Landroid/view/View;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTaskStackViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    new-instance v0, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    .line 93
    return-void
.end method


# virtual methods
.method public dismissFocusedTask()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    .line 364
    .local v0, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 367
    :cond_0
    return-void
.end method

.method public focusNextTask(Z)V
    .locals 3
    .param p1, "forward"    # Z

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    .line 355
    .local v0, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)V

    .line 358
    :cond_0
    return-void
.end method

.method getTaskStackViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    return-object v0
.end method

.method public hasSearchBar()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchFocusedTask()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v9

    .line 157
    .local v9, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 158
    .local v8, "stackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 159
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 160
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 162
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    .line 163
    .local v11, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 164
    .local v10, "taskViewCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_2

    .line 165
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 166
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 167
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 169
    const/4 v5, 0x1

    .line 173
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "j":I
    .end local v10    # "taskViewCount":I
    .end local v11    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_0
    return v5

    .line 164
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "j":I
    .restart local v10    # "taskViewCount":I
    .restart local v11    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v9

    .line 180
    .local v9, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 181
    .local v8, "stackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_0

    .line 182
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 183
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 184
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 187
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 189
    .local v10, "taskCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_2

    .line 190
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 192
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object v0, p0

    .line 193
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    .line 194
    const/4 v5, 0x1

    .line 199
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "j":I
    .end local v10    # "taskCount":I
    .end local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_0
    return v5

    .line 189
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v7    # "j":I
    .restart local v10    # "taskCount":I
    .restart local v11    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 181
    .end local v7    # "j":I
    .end local v10    # "taskCount":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onAllTaskViewsDismissed(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 545
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 546
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    .end local v0    # "i":I
    .end local v1    # "taskCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 551
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 337
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 311
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 312
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v1, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 315
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 321
    .end local v1    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v4

    .line 322
    .local v4, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 323
    .local v2, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 324
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 325
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 326
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v3, p2, p3, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 269
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 270
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 273
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 275
    .local v7, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 281
    .end local v7    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 282
    .local v5, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v10

    .line 288
    .local v10, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    invoke-virtual {v0, v10, v5}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->computeStackRects(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v11

    .line 290
    .local v11, "stackViewsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 291
    .local v8, "stackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 292
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    .line 293
    .local v9, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 297
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 298
    invoke-virtual {v9, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 291
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 302
    .end local v9    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 303
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 4
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 605
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 606
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 607
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 608
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onRecentsHidden()V
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 557
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 558
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 559
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 560
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/model/Task;)V

    .line 597
    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 520
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 521
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 523
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 527
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 24
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v7, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked()V

    .line 398
    :cond_0
    new-instance v23, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 400
    .local v23, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v5, 0x0

    .line 401
    .local v5, "offsetX":I
    const/4 v6, 0x0

    .line 402
    .local v6, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v22

    .line 403
    .local v22, "stackScroll":F
    if-nez p2, :cond_4

    .line 407
    move-object/from16 v3, p1

    .line 408
    .local v3, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    .line 409
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->left:I

    .line 410
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 417
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 419
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v20, 0x0

    .line 420
    .local v20, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_3

    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_3

    .line 423
    if-eqz p2, :cond_5

    .line 425
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 429
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v21

    .line 430
    .local v21, "scale":F
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v19, v0

    .line 431
    .local v19, "fromHeaderWidth":I
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v21

    float-to-int v0, v7

    move/from16 v18, v0

    .line 432
    .local v18, "fromHeaderHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 437
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 438
    .local v17, "c":Landroid/graphics/Canvas;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 439
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 440
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    .end local v17    # "c":Landroid/graphics/Canvas;
    .end local v18    # "fromHeaderHeight":I
    .end local v19    # "fromHeaderWidth":I
    .end local v21    # "scale":F
    :goto_1
    const/4 v10, 0x0

    .line 447
    .local v10, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    if-eqz p5, :cond_2

    .line 448
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$1;

    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    .line 464
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v7, :cond_6

    .line 465
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f050055

    const v9, 0x7f050056

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-static {v7, v8, v9, v12, v10}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v20

    .line 476
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    :goto_2
    move-object/from16 v15, v20

    .line 477
    .local v15, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v11, Lcom/android/systemui/recents/views/RecentsView$2;

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    move/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V

    .line 502
    .local v11, "launchRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_7

    .line 503
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 515
    :goto_3
    return-void

    .line 412
    .end local v3    # "sourceView":Landroid/view/View;
    .end local v11    # "launchRunnable":Ljava/lang/Runnable;
    .end local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v15    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 413
    .restart local v3    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v23

    goto/16 :goto_0

    .line 444
    .restart local v14    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .restart local v20    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4    # "b":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 470
    .restart local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_6
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-static/range {v3 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v20

    goto :goto_2

    .line 505
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v10    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .restart local v11    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v15    # "launchOpts":Landroid/app/ActivityOptions;
    :cond_7
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 508
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    goto :goto_3

    .line 511
    :cond_8
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/recents/views/TaskStackView;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V

    .line 512
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_3
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 534
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 535
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 538
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 539
    return-void
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 344
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 345
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 346
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 347
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 98
    return-void
.end method

.method public setSearchBar(Landroid/view/View;)V
    .locals 2
    .param p1, "searchBar"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 243
    :cond_0
    if-eqz p1, :cond_1

    .line 244
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 248
    :cond_1
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 262
    :cond_0
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 110
    .local v1, "numStacks":I
    const/4 v2, 0x0

    .line 111
    .local v2, "numTaskStacksToKeep":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 115
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 120
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskStackView;

    .line 122
    .local v5, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 123
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v5    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 128
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 130
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    .line 131
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 132
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 133
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v6, :cond_4

    .line 138
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 139
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 140
    .restart local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 138
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 145
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 146
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 206
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 210
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 211
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 212
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 215
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 221
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 224
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 226
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 231
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 232
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 371
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 375
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    .line 377
    .local v2, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 379
    const/4 v3, 0x1

    .line 375
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v2    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v3    # "stacksUnfiltered":Z
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method

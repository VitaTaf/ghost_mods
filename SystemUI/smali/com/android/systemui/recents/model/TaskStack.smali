.class public Lcom/android/systemui/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# instance fields
.field mAffinitiesGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method public createAffiliatedGroupings(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 16
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 438
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 439
    .local v13, "tasksMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 440
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 441
    .local v10, "taskCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_2

    .line 442
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/Task;

    .line 444
    .local v9, "t":Lcom/android/systemui/recents/model/Task;
    iget v14, v9, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    if-lez v14, :cond_0

    iget v1, v9, Lcom/android/systemui/recents/model/Task;->taskAffiliation:I

    .line 446
    .local v1, "affiliation":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->getGroupWithAffiliation(I)Lcom/android/systemui/recents/model/TaskGrouping;

    move-result-object v5

    .line 452
    .local v5, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    :goto_2
    invoke-virtual {v5, v9}, Lcom/android/systemui/recents/model/TaskGrouping;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 453
    iget-object v14, v9, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "affiliation":I
    .end local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    :cond_0
    const/high16 v14, 0x10000

    iget-object v15, v9, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v15, v15, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    add-int v1, v14, v15

    goto :goto_1

    .line 449
    .restart local v1    # "affiliation":I
    :cond_1
    new-instance v5, Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-direct {v5, v1}, Lcom/android/systemui/recents/model/TaskGrouping;-><init>(I)V

    .line 450
    .restart local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/model/TaskStack;->addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    goto :goto_2

    .line 456
    .end local v1    # "affiliation":I
    .end local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v9    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewAffiliationColorMinAlpha:F

    .line 457
    .local v8, "minAlpha":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 458
    .local v11, "taskGroupCount":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_5

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/TaskGrouping;

    .line 460
    .restart local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v10

    .line 462
    const/4 v14, 0x1

    if-gt v10, v14, :cond_4

    .line 458
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 464
    :cond_4
    iget-object v14, v5, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    iget v2, v14, Lcom/android/systemui/recents/model/Task;->taskAffiliationColor:I

    .line 465
    .local v2, "affiliationColor":I
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v8

    int-to-float v15, v10

    div-float v4, v14, v15

    .line 466
    .local v4, "alphaStep":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 467
    .local v3, "alpha":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_4
    if-ge v7, v10, :cond_3

    .line 468
    iget-object v14, v5, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/model/Task;

    .line 469
    .restart local v9    # "t":Lcom/android/systemui/recents/model/Task;
    const/4 v14, -0x1

    invoke-static {v2, v14, v3}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v14

    iput v14, v9, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 471
    sub-float/2addr v3, v4

    .line 467
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 475
    .end local v2    # "affiliationColor":I
    .end local v3    # "alpha":F
    .end local v4    # "alphaStep":F
    .end local v5    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v7    # "j":I
    .end local v9    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_5
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/recents/model/Task;
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 304
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 305
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 306
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 307
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 308
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_0

    .line 312
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :goto_1
    return-object v1

    .line 306
    .restart local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFrontMostTask()Lcom/android/systemui/recents/model/Task;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    goto :goto_0
.end method

.method public getGroupWithAffiliation(I)Lcom/android/systemui/recents/model/TaskGrouping;
    .locals 2
    .param p1, "affiliation"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/TaskGrouping;

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v2, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 280
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 281
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 282
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v2
.end method

.method public getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public hasFilteredTasks()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->hasFilter()Z

    move-result v0

    return v0
.end method

.method public indexOfTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 219
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 223
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 224
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 229
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 231
    .local v1, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/model/Task;->lockToTaskEnabled:Z

    if-eqz v2, :cond_1

    .line 232
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v2, p0, p1, v1}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V

    .line 239
    .end local v0    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v1    # "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->reset()V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 199
    return-void
.end method

.method public setTasks(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 244
    .local v5, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 245
    .local v4, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 246
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    .line 248
    .local v3, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 250
    iget-object v0, v3, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 251
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 252
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 256
    :cond_0
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/systemui/recents/model/Task;->lockToThisTask:Z

    .line 257
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v6, :cond_1

    .line 259
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    const/4 v7, 0x0

    invoke-interface {v6, p0, v3, v7}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V

    .line 245
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v3    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v6, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 263
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    .line 264
    .restart local v3    # "t":Lcom/android/systemui/recents/model/Task;
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v6, :cond_3

    .line 265
    iget-object v6, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v6, p0, v3}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    goto :goto_1

    .line 268
    .end local v3    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 479
    const-string v1, "Tasks:\n"

    .line 480
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 481
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    goto :goto_0

    .line 483
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-object v1
.end method

.method public unfilterTasks()V
    .locals 2

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v0, "oldStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->removeFilter()V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v1, p0, v0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackUnfiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V

    .line 343
    :cond_0
    return-void
.end method

.class public Lcom/android/nfc/ForegroundUtils;
.super Landroid/app/IProcessObserver$Stub;
.source "ForegroundUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ForegroundUtils$1;,
        Lcom/android/nfc/ForegroundUtils$Callback;,
        Lcom/android/nfc/ForegroundUtils$Singleton;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBackgroundCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/ForegroundUtils$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mForegroundUidPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 31
    const-string v1, "ForegroundUtils"

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->TAG:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    .line 40
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    .line 48
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mIActivityManager:Landroid/app/IActivityManager;

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ForegroundUtils"

    const-string v2, "ForegroundUtils: could not get IActivityManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/nfc/ForegroundUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/ForegroundUtils$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/nfc/ForegroundUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/ForegroundUtils;
    .locals 1

    .prologue
    .line 62
    # getter for: Lcom/android/nfc/ForegroundUtils$Singleton;->INSTANCE:Lcom/android/nfc/ForegroundUtils;
    invoke-static {}, Lcom/android/nfc/ForegroundUtils$Singleton;->access$100()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    return-object v0
.end method

.method private handleUidToBackground(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 120
    .local v3, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    iget-object v6, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 121
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 122
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    if-eqz v1, :cond_0

    .line 123
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .local v4, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 127
    .end local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    if-eqz v3, :cond_1

    .line 130
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/ForegroundUtils$Callback;

    .line 131
    .local v0, "callback":Lcom/android/nfc/ForegroundUtils$Callback;
    invoke-interface {v0, p1}, Lcom/android/nfc/ForegroundUtils$Callback;->onUidToBackground(I)V

    goto :goto_0

    .line 127
    .end local v0    # "callback":Lcom/android/nfc/ForegroundUtils$Callback;
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 134
    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :cond_1
    return-void

    .line 127
    .end local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    goto :goto_1
.end method

.method private isInForegroundLocked(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getForegroundUids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    monitor-exit v3

    .line 111
    return-object v1

    .line 110
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isInForeground(I)Z
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForegroundLocked(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "hasForegroundActivities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "uidToBackground":Z
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 143
    .local v0, "foregroundPids":Landroid/util/SparseBooleanArray;
    if-eqz p3, :cond_1

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 148
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 150
    const/4 v1, 0x1

    .line 154
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-direct {p0, p2}, Lcom/android/nfc/ForegroundUtils;->handleUidToBackground(I)V

    .line 176
    :cond_0
    return-void

    .line 146
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 154
    .end local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 152
    .restart local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/nfc/ForegroundUtils;->onForegroundActivitiesChanged(IIZ)V

    .line 184
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    return-void
.end method

.method public registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z
    .locals 4
    .param p1, "callback"    # Lcom/android/nfc/ForegroundUtils$Callback;
    .param p2, "uid"    # I

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/ForegroundUtils;->isInForegroundLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    monitor-exit v2

    .line 86
    :goto_0
    return v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    .line 87
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

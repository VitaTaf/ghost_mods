.class Lcom/android/nfc/NfcUnlockManager;
.super Ljava/lang/Object;
.source "NfcUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcUnlockManager$1;,
        Lcom/android/nfc/NfcUnlockManager$Singleton;,
        Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcUnlockManager"


# instance fields
.field private mLockscreenPollMask:I

.field private final mUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcUnlockManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/NfcUnlockManager$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcUnlockManager;
    .locals 1

    .prologue
    .line 32
    # getter for: Lcom/android/nfc/NfcUnlockManager$Singleton;->INSTANCE:Lcom/android/nfc/NfcUnlockManager;
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager$Singleton;->access$000()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    return-object v0
.end method

.method private recomputePollMask()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "pollMask":I
    iget-object v3, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 82
    .local v2, "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget v3, v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mPollMask:I

    or-int/2addr v1, v3

    .line 83
    goto :goto_0

    .line 84
    .end local v2    # "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    :cond_0
    return v1
.end method


# virtual methods
.method declared-synchronized addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I
    .locals 4
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "pollMask"    # I

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    monitor-exit p0

    return v0

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;-><init>(Landroid/nfc/INfcUnlockHandler;ILcom/android/nfc/NfcUnlockManager$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLockscreenPollMask()I
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnlockHandler()Z
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized isLockscreenPollingEnabled()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeUnlockHandler(Landroid/os/IBinder;)I
    .locals 1
    .param p1, "unlockHandler"    # Landroid/os/IBinder;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 57
    :cond_0
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized tryUnlock(Landroid/nfc/Tag;)Z
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 62
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 65
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 66
    .local v2, "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget-object v4, v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mUnlockHandler:Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v4, p1}, Landroid/nfc/INfcUnlockHandler;->onUnlockAttempted(Landroid/nfc/Tag;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const/4 v4, 0x1

    .line 76
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    :goto_1
    monitor-exit p0

    return v4

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "NfcUnlockManager"

    const-string v5, "failed to communicate with unlock handler, removing"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 72
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 76
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

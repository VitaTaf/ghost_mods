.class public Lcom/motorola/datacollection/DataCollectionRegistry;
.super Ljava/lang/Object;
.source "DataCollectionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;,
        Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    }
.end annotation


# static fields
.field private static final ACTION_NEW_LOG:I = 0x0

.field private static final MAX_BUFFER_SIZE:I = 0x1400

.field private static final TAG:Ljava/lang/String; = "DataCollectionRegistry"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotifier:Landroid/os/HandlerThread;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/datacollection/DataCollectionRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRegistered:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->sb:Ljava/lang/StringBuffer;

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataCollection Notifier"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mNotifier:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mNotifier:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/motorola/datacollection/DataCollectionRegistry$1;

    iget-object v1, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mNotifier:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/motorola/datacollection/DataCollectionRegistry$1;-><init>(Lcom/motorola/datacollection/DataCollectionRegistry;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/datacollection/DataCollectionRegistry;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/datacollection/DataCollectionRegistry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/motorola/datacollection/DataCollectionRegistry;->handleNotifyEventLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/datacollection/DataCollectionRegistry;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/datacollection/DataCollectionRegistry;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/motorola/datacollection/DataCollectionRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method private handleNotifyEventLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v4, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 142
    :try_start_0
    iget-object v3, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 143
    iget-object v3, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .local v2, "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :try_start_1
    iget-object v3, v2, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->callback:Lcom/motorola/datacollection/IDataCollectionListener;

    invoke-interface {v3, p1}, Lcom/motorola/datacollection/IDataCollectionListener;->onEventLog(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, v2, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v3}, Lcom/motorola/datacollection/DataCollectionRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_1

    .line 150
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 118
    iget-object v4, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v4

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 120
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 121
    iget-object v3, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/datacollection/DataCollectionRegistry$Record;

    .line 122
    .local v1, "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    iget-object v3, v1, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v3, p1, :cond_0

    .line 123
    iget-object v3, v1, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    iget-object v5, v1, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->dw:Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 124
    iget-object v3, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    monitor-exit v4

    .line 129
    .end local v1    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :goto_1
    return-void

    .line 120
    .restart local v1    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :cond_1
    monitor-exit v4

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "recordCount":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public listen(Lcom/motorola/datacollection/IDataCollectionListener;Z)V
    .locals 11
    .param p1, "callback"    # Lcom/motorola/datacollection/IDataCollectionListener;
    .param p2, "flag"    # Z

    .prologue
    .line 84
    if-eqz p2, :cond_2

    .line 85
    iget-object v8, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v8

    .line 87
    const/4 v5, 0x0

    .line 89
    .local v5, "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :try_start_0
    invoke-interface {p1}, Lcom/motorola/datacollection/IDataCollectionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 90
    .local v1, "b":Landroid/os/IBinder;
    iget-object v7, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 91
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    move-object v6, v5

    .end local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    .local v6, "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :goto_0
    if-ge v4, v0, :cond_1

    .line 92
    :try_start_1
    iget-object v7, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .end local v6    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    .restart local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :try_start_2
    iget-object v7, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v1, v7, :cond_0

    .line 111
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "i":I
    .end local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :goto_2
    return-void

    .line 91
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    .end local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    .restart local v6    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    goto :goto_0

    .line 97
    :cond_1
    :try_start_3
    new-instance v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/motorola/datacollection/DataCollectionRegistry$Record;-><init>(Lcom/motorola/datacollection/DataCollectionRegistry$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 98
    .end local v6    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    .restart local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :try_start_4
    iput-object v1, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    .line 99
    iput-object p1, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->callback:Lcom/motorola/datacollection/IDataCollectionListener;

    .line 100
    iget-object v7, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRegistered:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :try_start_5
    new-instance v2, Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;

    iget-object v7, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {v2, p0, v7}, Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;-><init>(Lcom/motorola/datacollection/DataCollectionRegistry;Landroid/os/IBinder;)V

    .line 104
    .local v2, "dw":Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;
    iput-object v2, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->dw:Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;

    .line 105
    iget-object v7, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    iget-object v9, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->dw:Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 106
    iget-object v7, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->callback:Lcom/motorola/datacollection/IDataCollectionListener;

    iget-object v9, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/motorola/datacollection/IDataCollectionListener;->onOldLogs(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 107
    .end local v2    # "dw":Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;
    :catch_0
    move-exception v3

    .line 108
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_6
    iget-object v7, v5, Lcom/motorola/datacollection/DataCollectionRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v7}, Lcom/motorola/datacollection/DataCollectionRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_1

    .line 111
    .end local v0    # "N":I
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v3    # "ex":Landroid/os/RemoteException;
    .end local v4    # "i":I
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .line 113
    .end local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :cond_2
    invoke-interface {p1}, Lcom/motorola/datacollection/IDataCollectionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/motorola/datacollection/DataCollectionRegistry;->remove(Landroid/os/IBinder;)V

    goto :goto_2

    .line 111
    .restart local v0    # "N":I
    .restart local v1    # "b":Landroid/os/IBinder;
    .restart local v4    # "i":I
    .restart local v6    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    .restart local v5    # "r":Lcom/motorola/datacollection/DataCollectionRegistry$Record;
    goto :goto_3
.end method

.method public notifyEventLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-boolean v2, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mRegistered:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x1400

    if-ge v2, v3, :cond_0

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 134
    .local v0, "now":J
    iget-object v2, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->sb:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    .end local v0    # "now":J
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/motorola/datacollection/DataCollectionRegistry;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

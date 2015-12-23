.class Lcom/motorola/datacollection/DataCollectionListener$1;
.super Lcom/motorola/datacollection/IDataCollectionListener$Stub;
.source "DataCollectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/datacollection/DataCollectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/datacollection/DataCollectionListener;


# direct methods
.method constructor <init>(Lcom/motorola/datacollection/DataCollectionListener;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/motorola/datacollection/DataCollectionListener$1;->this$0:Lcom/motorola/datacollection/DataCollectionListener;

    invoke-direct {p0}, Lcom/motorola/datacollection/IDataCollectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/motorola/datacollection/DataCollectionListener$1;->this$0:Lcom/motorola/datacollection/DataCollectionListener;

    iget-object v0, v0, Lcom/motorola/datacollection/DataCollectionListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 42
    return-void
.end method

.method public onOldLogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/motorola/datacollection/DataCollectionListener$1;->this$0:Lcom/motorola/datacollection/DataCollectionListener;

    iget-object v0, v0, Lcom/motorola/datacollection/DataCollectionListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 46
    return-void
.end method

.class Lcom/motorola/datacollection/DataCollectionListener$2;
.super Landroid/os/Handler;
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
    .line 49
    iput-object p1, p0, Lcom/motorola/datacollection/DataCollectionListener$2;->this$0:Lcom/motorola/datacollection/DataCollectionListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/datacollection/DataCollectionListener$2;->this$0:Lcom/motorola/datacollection/DataCollectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/datacollection/DataCollectionListener;->onEventLog(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/datacollection/DataCollectionListener$2;->this$0:Lcom/motorola/datacollection/DataCollectionListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/motorola/datacollection/DataCollectionListener;->onOldLogs(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

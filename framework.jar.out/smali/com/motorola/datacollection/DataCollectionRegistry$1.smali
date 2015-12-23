.class Lcom/motorola/datacollection/DataCollectionRegistry$1;
.super Landroid/os/Handler;
.source "DataCollectionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/datacollection/DataCollectionRegistry;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/datacollection/DataCollectionRegistry;


# direct methods
.method constructor <init>(Lcom/motorola/datacollection/DataCollectionRegistry;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/datacollection/DataCollectionRegistry$1;->this$0:Lcom/motorola/datacollection/DataCollectionRegistry;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/datacollection/DataCollectionRegistry$1;->this$0:Lcom/motorola/datacollection/DataCollectionRegistry;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/motorola/datacollection/DataCollectionRegistry;->handleNotifyEventLog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/motorola/datacollection/DataCollectionRegistry;->access$000(Lcom/motorola/datacollection/DataCollectionRegistry;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

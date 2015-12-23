.class Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;
.super Ljava/lang/Object;
.source "DataCollectionRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/datacollection/DataCollectionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathWatcher"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/motorola/datacollection/DataCollectionRegistry;


# direct methods
.method constructor <init>(Lcom/motorola/datacollection/DataCollectionRegistry;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;->this$0:Lcom/motorola/datacollection/DataCollectionRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;->mBinder:Landroid/os/IBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;->this$0:Lcom/motorola/datacollection/DataCollectionRegistry;

    iget-object v1, p0, Lcom/motorola/datacollection/DataCollectionRegistry$DeathWatcher;->mBinder:Landroid/os/IBinder;

    # invokes: Lcom/motorola/datacollection/DataCollectionRegistry;->remove(Landroid/os/IBinder;)V
    invoke-static {v0, v1}, Lcom/motorola/datacollection/DataCollectionRegistry;->access$100(Lcom/motorola/datacollection/DataCollectionRegistry;Landroid/os/IBinder;)V

    .line 79
    return-void
.end method

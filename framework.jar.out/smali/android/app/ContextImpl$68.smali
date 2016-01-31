.class final Landroid/app/ContextImpl$68;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const-string/jumbo v2, "moto_pers_data_block"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    move-result-object v1

    .local v1, "motoPersDataBlockService":Lcom/motorola/persistentdata/IMotoPersDataBlockService;
    if-eqz v1, :cond_0

    new-instance v2, Lcom/motorola/persistentdata/MotoPersDataBlockManager;

    invoke-direct {v2, v1}, Lcom/motorola/persistentdata/MotoPersDataBlockManager;-><init>(Lcom/motorola/persistentdata/IMotoPersDataBlockService;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

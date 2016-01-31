.class final Landroid/app/ContextImpl$54;
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
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11200b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .local v1, "sensorHubExists":Z
    if-eqz v1, :cond_0

    const-string/jumbo v4, "modality"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-object v3

    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_1
    invoke-static {v0}, Lcom/motorola/slpc/IModalityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/slpc/IModalityService;

    move-result-object v2

    .local v2, "service":Lcom/motorola/slpc/IModalityService;
    new-instance v3, Lcom/motorola/slpc/ModalityManager;

    iget-object v4, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p1, v2, v4}, Lcom/motorola/slpc/ModalityManager;-><init>(Landroid/content/Context;Lcom/motorola/slpc/IModalityService;Landroid/os/Looper;)V

    goto :goto_0
.end method

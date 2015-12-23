.class Lcom/motorola/slpc/IModalityService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IModalityService.java"

# interfaces
.implements Lcom/motorola/slpc/IModalityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/slpc/IModalityService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 294
    return-void
.end method


# virtual methods
.method public addAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;III)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/IAccumulatedMovementListener;
    .param p2, "time"    # I
    .param p3, "distance"    # I
    .param p4, "holdoff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/slpc/IAccumulatedMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 573
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 577
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 581
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 584
    return v2

    .line 572
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addModalityListener(Lcom/motorola/slpc/IModalityListener;IJJ)Z
    .locals 7
    .param p1, "listener"    # Lcom/motorola/slpc/IModalityListener;
    .param p2, "modalities"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/slpc/IModalityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 361
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 369
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    return v2

    .line 360
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addMovementListener(Lcom/motorola/slpc/IMovementListener;JJ)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/IMovementListener;
    .param p2, "startDuration"    # J
    .param p4, "endDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 533
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 537
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/slpc/IMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 538
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 539
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 540
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 545
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    return v2

    .line 537
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addOrientationListener(Lcom/motorola/slpc/IOrientationListener;IJJ)Z
    .locals 7
    .param p1, "listener"    # Lcom/motorola/slpc/IOrientationListener;
    .param p2, "orientations"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/slpc/IOrientationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 420
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 422
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 423
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 428
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    return v2

    .line 419
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addStatusListener(Lcom/motorola/slpc/IStatusListener;)Z
    .locals 7
    .param p1, "listener"    # Lcom/motorola/slpc/IStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v4, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 311
    iget-object v4, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 316
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    return v2

    .line 310
    .end local v2    # "_result":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 313
    goto :goto_1

    .line 316
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addStowedListener(Lcom/motorola/slpc/IStowedListener;IJJ)Z
    .locals 7
    .param p1, "listener"    # Lcom/motorola/slpc/IStowedListener;
    .param p2, "stowedStates"    # I
    .param p3, "startDuration"    # J
    .param p5, "endDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 477
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/slpc/IStowedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 481
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 482
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 487
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    return v2

    .line 478
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 487
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addVehicleListener(Lcom/motorola/slpc/IVehicleListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/IVehicleListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 643
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 644
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/motorola/slpc/IVehicleListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 645
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 650
    .local v2, "_result":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    return v2

    .line 644
    .end local v2    # "_result":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getAccumulatedDistance(Lcom/motorola/slpc/IAccumulatedMovementListener;)I
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/IAccumulatedMovementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 626
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IAccumulatedMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 627
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 632
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 635
    return v2

    .line 626
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAccumulatedTime(Lcom/motorola/slpc/IAccumulatedMovementListener;)I
    .locals 6
    .param p1, "listener"    # Lcom/motorola/slpc/IAccumulatedMovementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 607
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 608
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IAccumulatedMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 609
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 611
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 614
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 617
    return v2

    .line 608
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "com.motorola.slpc.IModalityService"

    return-object v0
.end method

.method public getModality()Lcom/motorola/slpc/Transition;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 399
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    sget-object v3, Lcom/motorola/slpc/Transition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/slpc/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .local v2, "_result":Lcom/motorola/slpc/Transition;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    return-object v2

    .line 403
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/motorola/slpc/Transition;
    goto :goto_0

    .line 407
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getOrientation()Lcom/motorola/slpc/Transition;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    sget-object v3, Lcom/motorola/slpc/Transition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/slpc/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    .local v2, "_result":Lcom/motorola/slpc/Transition;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 469
    return-object v2

    .line 462
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/motorola/slpc/Transition;
    goto :goto_0

    .line 466
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getStatus()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 348
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    return v2

    .line 348
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getStowed()Lcom/motorola/slpc/Transition;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    iget-object v3, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    sget-object v3, Lcom/motorola/slpc/Transition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/slpc/Transition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .local v2, "_result":Lcom/motorola/slpc/Transition;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    return-object v2

    .line 521
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/motorola/slpc/Transition;
    goto :goto_0

    .line 525
    .end local v2    # "_result":Lcom/motorola/slpc/Transition;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public removeAccumulatedMovementListener(Lcom/motorola/slpc/IAccumulatedMovementListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IAccumulatedMovementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 591
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 592
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IAccumulatedMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 593
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 594
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 600
    return-void

    .line 592
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeModalityListener(Lcom/motorola/slpc/IModalityListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IModalityListener;
    .param p2, "modalities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IModalityListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    return-void

    .line 380
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeMovementListener(Lcom/motorola/slpc/IMovementListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IMovementListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 556
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IMovementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 557
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    return-void

    .line 556
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeOrientationListener(Lcom/motorola/slpc/IOrientationListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IOrientationListener;
    .param p2, "orientations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 439
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IOrientationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 440
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    return-void

    .line 439
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeStatusListener(Lcom/motorola/slpc/IStatusListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 326
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 328
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-void

    .line 327
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeStowedListener(Lcom/motorola/slpc/IStowedListener;I)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IStowedListener;
    .param p2, "stowedStates"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IStowedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 499
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    return-void

    .line 498
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 504
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeVehicleListener(Lcom/motorola/slpc/IVehicleListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/motorola/slpc/IVehicleListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 660
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.motorola.slpc.IModalityService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/motorola/slpc/IVehicleListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 662
    iget-object v2, p0, Lcom/motorola/slpc/IModalityService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 669
    return-void

    .line 661
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.class public interface abstract Lcom/motorola/slpc/IVehicleListener;
.super Ljava/lang/Object;
.source "IVehicleListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IVehicleListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEndVehicle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartVehicle()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public interface abstract Landroid/app/IPartialDisplayService;
.super Ljava/lang/Object;
.source "IPartialDisplayService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IPartialDisplayService$Stub;
    }
.end annotation


# virtual methods
.method public abstract fbWillBeResumed(Landroid/os/IRemoteCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract fbWillBeSuspended(Landroid/os/IRemoteCallback;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isPartialDisplayActivated()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyPowerKeyWakeup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

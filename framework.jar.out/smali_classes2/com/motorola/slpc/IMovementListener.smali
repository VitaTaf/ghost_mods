.class public interface abstract Lcom/motorola/slpc/IMovementListener;
.super Ljava/lang/Object;
.source "IMovementListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IMovementListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEndMovement()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStartMovement()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

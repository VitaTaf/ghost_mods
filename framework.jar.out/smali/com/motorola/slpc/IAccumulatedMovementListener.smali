.class public interface abstract Lcom/motorola/slpc/IAccumulatedMovementListener;
.super Ljava/lang/Object;
.source "IAccumulatedMovementListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IAccumulatedMovementListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAccumulatedMovement()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

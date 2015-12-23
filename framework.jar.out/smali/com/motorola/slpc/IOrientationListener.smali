.class public interface abstract Lcom/motorola/slpc/IOrientationListener;
.super Ljava/lang/Object;
.source "IOrientationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IOrientationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onOrientationChange(Lcom/motorola/slpc/Transition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

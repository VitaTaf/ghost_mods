.class public interface abstract Lcom/motorola/slpc/IStatusListener;
.super Ljava/lang/Object;
.source "IStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStatusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

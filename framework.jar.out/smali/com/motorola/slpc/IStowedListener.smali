.class public interface abstract Lcom/motorola/slpc/IStowedListener;
.super Ljava/lang/Object;
.source "IStowedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IStowedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStowedChange(Lcom/motorola/slpc/Transition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

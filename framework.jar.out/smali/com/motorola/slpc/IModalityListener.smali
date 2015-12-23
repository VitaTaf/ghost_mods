.class public interface abstract Lcom/motorola/slpc/IModalityListener;
.super Ljava/lang/Object;
.source "IModalityListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/slpc/IModalityListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onModalityChange(Lcom/motorola/slpc/Transition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

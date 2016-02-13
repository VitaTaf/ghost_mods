.class public interface abstract Lcom/motorola/datacollection/IDataCollectionListener;
.super Ljava/lang/Object;
.source "IDataCollectionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/datacollection/IDataCollectionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEventLog(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onOldLogs(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

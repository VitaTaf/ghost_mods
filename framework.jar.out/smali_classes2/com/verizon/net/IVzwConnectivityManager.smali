.class public interface abstract Lcom/verizon/net/IVzwConnectivityManager;
.super Ljava/lang/Object;
.source "IVzwConnectivityManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/net/IVzwConnectivityManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAPNUsageRxBytes(Ljava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAPNUsageTxBytes(Ljava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNetworkInterface(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

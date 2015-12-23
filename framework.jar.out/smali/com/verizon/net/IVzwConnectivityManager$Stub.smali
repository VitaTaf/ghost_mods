.class public abstract Lcom/verizon/net/IVzwConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IVzwConnectivityManager.java"

# interfaces
.implements Lcom/verizon/net/IVzwConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/net/IVzwConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/net/IVzwConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.verizon.net.IVzwConnectivityManager"

.field static final TRANSACTION_getAPNUsageRxBytes:I = 0x2

.field static final TRANSACTION_getAPNUsageTxBytes:I = 0x3

.field static final TRANSACTION_getNetworkInterface:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.verizon.net.IVzwConnectivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/verizon/net/IVzwConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/verizon/net/IVzwConnectivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "com.verizon.net.IVzwConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/verizon/net/IVzwConnectivityManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/verizon/net/IVzwConnectivityManager;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/verizon/net/IVzwConnectivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/verizon/net/IVzwConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v5, "com.verizon.net.IVzwConnectivityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "com.verizon.net.IVzwConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/verizon/net/IVzwConnectivityManager$Stub;->getNetworkInterface(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v5, "com.verizon.net.IVzwConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/verizon/net/IVzwConnectivityManager$Stub;->getAPNUsageRxBytes(Ljava/lang/String;I)J

    move-result-wide v2

    .line 67
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :sswitch_3
    const-string v5, "com.verizon.net.IVzwConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/verizon/net/IVzwConnectivityManager$Stub;->getAPNUsageTxBytes(Ljava/lang/String;I)J

    move-result-wide v2

    .line 79
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

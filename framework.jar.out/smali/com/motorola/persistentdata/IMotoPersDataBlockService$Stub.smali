.class public abstract Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;
.super Landroid/os/Binder;
.source "IMotoPersDataBlockService.java"

# interfaces
.implements Lcom/motorola/persistentdata/IMotoPersDataBlockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/persistentdata/IMotoPersDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.persistentdata.IMotoPersDataBlockService"

.field static final TRANSACTION_getMaximumDataBlockSize:I = 0x3

.field static final TRANSACTION_read:I = 0x2

.field static final TRANSACTION_write:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.motorola.persistentdata.IMotoPersDataBlockService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/persistentdata/IMotoPersDataBlockService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.motorola.persistentdata.IMotoPersDataBlockService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/motorola/persistentdata/IMotoPersDataBlockService;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
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

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 48
    :sswitch_0
    const-string v5, "com.motorola.persistentdata.IMotoPersDataBlockService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "com.motorola.persistentdata.IMotoPersDataBlockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 63
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;->write(ILandroid/os/ParcelFileDescriptor;)I

    move-result v2

    .line 64
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 61
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "_result":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :sswitch_2
    const-string v5, "com.motorola.persistentdata.IMotoPersDataBlockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;->read(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 74
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 80
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v5, "com.motorola.persistentdata.IMotoPersDataBlockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/motorola/persistentdata/IMotoPersDataBlockService$Stub;->getMaximumDataBlockSize(I)J

    move-result-wide v2

    .line 90
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

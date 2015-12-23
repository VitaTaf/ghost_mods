.class public abstract Landroid/app/IPartialDisplayService$Stub;
.super Landroid/os/Binder;
.source "IPartialDisplayService.java"

# interfaces
.implements Landroid/app/IPartialDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IPartialDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IPartialDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IPartialDisplayService"

.field static final TRANSACTION_fbWillBeResumed:I = 0x1

.field static final TRANSACTION_fbWillBeSuspended:I = 0x2

.field static final TRANSACTION_isPartialDisplayActivated:I = 0x3

.field static final TRANSACTION_notifyPowerKeyWakeup:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.IPartialDisplayService"

    invoke-virtual {p0, p0, v0}, Landroid/app/IPartialDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IPartialDisplayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.app.IPartialDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IPartialDisplayService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IPartialDisplayService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/app/IPartialDisplayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IPartialDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v3, "android.app.IPartialDisplayService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.app.IPartialDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IPartialDisplayService$Stub;->fbWillBeResumed(Landroid/os/IRemoteCallback;I)V

    goto :goto_0

    .line 58
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_arg1":I
    :sswitch_2
    const-string v3, "android.app.IPartialDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 62
    .restart local v0    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 63
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/app/IPartialDisplayService$Stub;->fbWillBeSuspended(Landroid/os/IRemoteCallback;I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string v3, "android.app.IPartialDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/IPartialDisplayService$Stub;->isPartialDisplayActivated()Z

    move-result v2

    .line 70
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 76
    .end local v2    # "_result":Z
    :sswitch_4
    const-string v3, "android.app.IPartialDisplayService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/IPartialDisplayService$Stub;->notifyPowerKeyWakeup()V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

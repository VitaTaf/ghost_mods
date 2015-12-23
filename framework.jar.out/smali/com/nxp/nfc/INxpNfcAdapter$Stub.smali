.class public abstract Lcom/nxp/nfc/INxpNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INxpNfcAdapter.java"

# interfaces
.implements Lcom/nxp/nfc/INxpNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nxp/nfc/INxpNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nxp.nfc.INxpNfcAdapter"

.field static final TRANSACTION_changeDefaultRoute:I = 0x2

.field static final TRANSACTION_deselectSecureElement:I = 0x6

.field static final TRANSACTION_doConfigureDesfireRoute:I = 0x8

.field static final TRANSACTION_getNfcSecureElementInterface:I = 0x1

.field static final TRANSACTION_getSecureElementList:I = 0x4

.field static final TRANSACTION_getSelectedSecureElement:I = 0x7

.field static final TRANSACTION_selectSecureElement:I = 0x5

.field static final TRANSACTION_storeSePreference:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nxp/nfc/INxpNfcAdapter;
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
    const-string v1, "com.nxp.nfc.INxpNfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nxp/nfc/INxpNfcAdapter;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/nxp/nfc/INxpNfcAdapter;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
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
    const/4 v3, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getNfcSecureElementInterface()Lcom/nxp/nfc/INfcSecureElement;

    move-result-object v1

    .line 53
    .local v1, "_result":Lcom/nxp/nfc/INfcSecureElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/nxp/nfc/INfcSecureElement;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 59
    .end local v1    # "_result":Lcom/nxp/nfc/INfcSecureElement;
    :sswitch_2
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->changeDefaultRoute(I)Z

    move-result v1

    .line 63
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v1, :cond_1

    move v2, v3

    :goto_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 69
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :sswitch_3
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->storeSePreference(I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSecureElementList()[I

    move-result-object v1

    .line 80
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 86
    .end local v1    # "_result":[I
    :sswitch_5
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->selectSecureElement(I)I

    move-result v1

    .line 90
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :sswitch_6
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->deselectSecureElement()I

    move-result v1

    .line 98
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v1    # "_result":I
    :sswitch_7
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->getSelectedSecureElement()I

    move-result v1

    .line 106
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v1    # "_result":I
    :sswitch_8
    const-string v2, "com.nxp.nfc.INxpNfcAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/nxp/nfc/INxpNfcAdapter$Stub;->doConfigureDesfireRoute(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

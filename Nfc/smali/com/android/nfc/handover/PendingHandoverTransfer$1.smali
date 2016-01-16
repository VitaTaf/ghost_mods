.class final Lcom/android/nfc/handover/PendingHandoverTransfer$1;
.super Ljava/lang/Object;
.source "PendingHandoverTransfer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/PendingHandoverTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/handover/PendingHandoverTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .locals 16
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    const/4 v3, 0x1

    .line 72
    .local v3, "incoming":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 73
    .local v14, "deviceType":I
    const/4 v4, 0x0

    .line 74
    .local v4, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v10, 0x0

    .line 75
    .local v10, "remoteMac":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v14, v1, :cond_2

    .line 76
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 80
    .restart local v4    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    const/4 v5, 0x1

    .line 81
    .local v5, "remoteActivating":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 82
    .local v15, "numUris":I
    const/4 v6, 0x0

    .line 83
    .local v6, "uris":[Landroid/net/Uri;
    if-lez v15, :cond_0

    .line 84
    new-array v6, v15, [Landroid/net/Uri;

    .line 85
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 87
    :cond_0
    const/4 v1, 0x1

    if-ne v14, v1, :cond_4

    .line 88
    new-instance v1, Lcom/android/nfc/handover/PendingHandoverTransfer;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/handover/PendingHandoverTransfer$1;)V

    .line 91
    :goto_3
    return-object v1

    .line 71
    .end local v3    # "incoming":Z
    .end local v4    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "remoteActivating":Z
    .end local v6    # "uris":[Landroid/net/Uri;
    .end local v10    # "remoteMac":Ljava/lang/String;
    .end local v14    # "deviceType":I
    .end local v15    # "numUris":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 78
    .restart local v3    # "incoming":Z
    .restart local v4    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "remoteMac":Ljava/lang/String;
    .restart local v14    # "deviceType":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 80
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 91
    .restart local v5    # "remoteActivating":Z
    .restart local v6    # "uris":[Landroid/net/Uri;
    .restart local v15    # "numUris":I
    :cond_4
    new-instance v7, Lcom/android/nfc/handover/PendingHandoverTransfer;

    const/4 v13, 0x0

    move v8, v2

    move v9, v3

    move v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLjava/lang/String;Z[Landroid/net/Uri;Lcom/android/nfc/handover/PendingHandoverTransfer$1;)V

    move-object v1, v7

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PendingHandoverTransfer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/handover/PendingHandoverTransfer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 97
    new-array v0, p1, [Lcom/android/nfc/handover/PendingHandoverTransfer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PendingHandoverTransfer$1;->newArray(I)[Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v0

    return-object v0
.end method

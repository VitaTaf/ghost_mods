.class public Lcom/android/nfc/handover/PendingHandoverTransfer;
.super Ljava/lang/Object;
.source "PendingHandoverTransfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/nfc/handover/PendingHandoverTransfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public deviceType:I

.field public id:I

.field public incoming:Z

.field public remoteActivating:Z

.field public remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public remoteMacAddress:Ljava/lang/String;

.field public uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer$1;

    invoke-direct {v0}, Lcom/android/nfc/handover/PendingHandoverTransfer$1;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "incoming"    # Z
    .param p3, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "remoteActivating"    # Z
    .param p5, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    .line 37
    iput-boolean p2, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    .line 38
    iput-object p3, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 39
    iput-boolean p4, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    .line 40
    iput-object p5, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/handover/PendingHandoverTransfer$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "x3"    # Z
    .param p5, "x4"    # [Landroid/net/Uri;
    .param p6, "x5"    # Lcom/android/nfc/handover/PendingHandoverTransfer$1;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(IZLjava/lang/String;Z[Landroid/net/Uri;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "incoming"    # Z
    .param p3, "remoteMacAddress"    # Ljava/lang/String;
    .param p4, "remoteActivating"    # Z
    .param p5, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    .line 48
    iput-boolean p2, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    .line 49
    iput-object p3, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteMacAddress:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    .line 51
    iput-object p5, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(IZLjava/lang/String;Z[Landroid/net/Uri;Lcom/android/nfc/handover/PendingHandoverTransfer$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # [Landroid/net/Uri;
    .param p6, "x5"    # Lcom/android/nfc/handover/PendingHandoverTransfer$1;

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLjava/lang/String;Z[Landroid/net/Uri;)V

    return-void
.end method

.method public static final forBluetoothDevice(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .locals 6
    .param p0, "id"    # I
    .param p1, "incoming"    # Z
    .param p2, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "remoteActivating"    # Z
    .param p4, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 59
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-object v0
.end method

.method public static final forWifiDevice(IZLjava/lang/String;Z[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .locals 6
    .param p0, "id"    # I
    .param p1, "incoming"    # Z
    .param p2, "macAddress"    # Ljava/lang/String;
    .param p3, "remoteActivating"    # Z
    .param p4, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 64
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLjava/lang/String;Z[Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-boolean v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    if-ne v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    :goto_1
    iget-boolean v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 121
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 109
    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 116
    goto :goto_2

    :cond_4
    move v0, v2

    .line 117
    goto :goto_3
.end method

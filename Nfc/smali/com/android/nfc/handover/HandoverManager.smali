.class public Lcom/android/nfc/handover/HandoverManager;
.super Ljava/lang/Object;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverManager$MessageHandler;,
        Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    }
.end annotation


# static fields
.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field private static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field private static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field private static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field private static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field private static final DBG:Z = false

.field static final MSG_HANDOVER_COMPLETE:I = 0x0

.field static final MSG_HEADSET_CONNECTED:I = 0x1

.field static final MSG_HEADSET_NOT_CONNECTED:I = 0x2

.field private static final RTD_COLLISION_RESOLUTION:[B

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final TYPE_BLE_OOB:[B

.field private static final TYPE_BT_OOB:[B

.field private static final TYPE_NOKIA:[B

.field protected static final hexArray:[C


# instance fields
.field private mBinding:Z

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothHeadsetPending:Z

.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mHandler:Lcom/android/nfc/handover/HandoverManager$MessageHandler;

.field private mHandoverTransferId:I

.field private mLocalBluetoothAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMessenger:Landroid/os/Messenger;

.field private mPendingServiceMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPendingTransfers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/handover/PendingHandoverTransfer;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "application/vnd.bluetooth.ep.oob"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    .line 57
    const-string v0, "application/vnd.bluetooth.le.oob"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_BLE_OOB:[B

    .line 60
    const-string v0, "nokia.com:bt"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_NOKIA:[B

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->RTD_COLLISION_RESOLUTION:[B

    .line 733
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->hexArray:[C

    return-void

    .line 62
    nop

    :array_0
    .array-data 1
        0x63t
        0x72t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Lcom/android/nfc/handover/HandoverManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/HandoverManager$MessageHandler;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mHandler:Lcom/android/nfc/handover/HandoverManager$MessageHandler;

    .line 85
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mHandler:Lcom/android/nfc/handover/HandoverManager$MessageHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    .line 95
    iput-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    .line 96
    iput-boolean v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    .line 142
    new-instance v1, Lcom/android/nfc/handover/HandoverManager$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/HandoverManager$1;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    .line 205
    new-instance v1, Lcom/android/nfc/handover/HandoverManager$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/HandoverManager$2;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    .line 195
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 196
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/HandoverManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/handover/HandoverManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/nfc/handover/HandoverManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/nfc/handover/HandoverManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/HandoverManager;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/HandoverManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 722
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 725
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 727
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_0
    return-object v1
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 735
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    .line 736
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 737
    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    .line 738
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/nfc/handover/HandoverManager;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 739
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/nfc/handover/HandoverManager;->hexArray:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 741
    .end local v2    # "v":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .locals 5

    .prologue
    .line 247
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 248
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 249
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->RTD_COLLISION_RESOLUTION:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 709
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 710
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 713
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 714
    aget-byte v2, v0, v1

    .line 715
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 716
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "temp":B
    :cond_0
    return-object v0
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .locals 9
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    .prologue
    const/4 v5, 0x0

    .line 380
    const/4 v2, 0x0

    .line 381
    .local v2, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_3

    .line 390
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x1

    .line 391
    .local v0, "bluetoothActivating":Z
    :goto_0
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 392
    :try_start_0
    iget-boolean v7, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    if-nez v7, :cond_1

    monitor-exit v6

    .line 415
    .end local v0    # "bluetoothActivating":Z
    :goto_1
    return-object v5

    .line 390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    .restart local v0    # "bluetoothActivating":Z
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 395
    .local v1, "msg":Landroid/os/Message;
    iget-object v7, p1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverManager;->registerBluetoothInTransferLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v3

    .line 397
    .local v3, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v4, "transferData":Landroid/os/Bundle;
    const-string v7, "transfer"

    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 402
    iget v7, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverManager;->removeTransferLocked(I)V

    .line 403
    monitor-exit v6

    goto :goto_1

    .line 405
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .end local v4    # "transferData":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v3    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .restart local v4    # "transferData":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    iget-object v5, p1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v2

    .end local v0    # "bluetoothActivating":Z
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .end local v4    # "transferData":Landroid/os/Bundle;
    :cond_3
    move-object v5, v2

    .line 415
    goto :goto_1
.end method


# virtual methods
.method bindServiceIfNeededLocked()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 220
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    if-nez v1, :cond_0

    .line 221
    const-string v1, "NfcHandover"

    const-string v2, "Binding to handover service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/nfc/handover/HandoverService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 225
    .local v0, "bindSuccess":Z
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    .line 229
    .end local v0    # "bindSuccess":Z
    :cond_0
    return v0
.end method

.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 253
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 254
    .local v0, "payload":[B
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 256
    aput-byte v3, v0, v3

    .line 257
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 258
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 259
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_0
    move v1, v3

    .line 254
    goto :goto_0
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "activating"    # Z

    .prologue
    .line 307
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 263
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 268
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 269
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 271
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 277
    .local v0, "addressBytes":[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 278
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    new-array v4, v7, [B

    const/16 v5, 0x62

    aput-byte v5, v4, v6

    invoke-direct {v2, v8, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    .line 278
    .end local v0    # "addressBytes":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 301
    :goto_0
    return-object v1

    .line 298
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v0, v1

    .line 301
    .local v0, "dataRecords":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_0
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 328
    new-array v0, v8, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v0, v6

    .line 332
    .local v0, "messages":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverManager;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 334
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 336
    .local v2, "nestedPayload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 337
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 338
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v4, v5, [B

    .line 341
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 342
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 343
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v7, 0x0

    invoke-direct {v5, v8, v6, v7, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v5, 0x0

    .line 313
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v4, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 314
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 316
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 317
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 318
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 321
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 323
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .locals 9
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "handoverResponse"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 469
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/nfc/handover/HandoverManager;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v0

    .line 472
    .local v0, "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v4, :cond_0

    .line 474
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 475
    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v4, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 476
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/handover/HandoverManager;->registerBluetoothOutTransferLocked(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v2

    .line 477
    .local v2, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 478
    .local v3, "transferData":Landroid/os/Bundle;
    const-string v4, "transfer"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 479
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 482
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    .line 483
    monitor-exit v5

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .end local v3    # "transferData":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .locals 17
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .prologue
    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    .line 516
    .local v12, "payload":[B
    if-eqz v12, :cond_0

    array-length v14, v12

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1

    :cond_0
    const/4 v14, 0x0

    .line 544
    :goto_0
    return v14

    .line 518
    :cond_1
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [B

    .line 519
    .local v13, "payloadNdef":[B
    const/4 v14, 0x1

    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v12, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 522
    :try_start_0
    new-instance v11, Landroid/nfc/NdefMessage;

    invoke-direct {v11, v13}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .local v11, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .local v3, "arr$":[Landroid/nfc/NdefRecord;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v2, v3, v9

    .line 528
    .local v2, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 529
    .local v1, "acPayload":[B
    if-eqz v1, :cond_4

    .line 530
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 531
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit8 v7, v14, 0x3

    .line 532
    .local v7, "cps":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v6, v14, 0xff

    .line 533
    .local v6, "carrierRefLength":I
    move-object/from16 v0, p2

    array-length v14, v0

    if-eq v6, v14, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    .line 523
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    .end local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "msg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v8

    .line 524
    .local v8, "e":Landroid/nfc/FormatException;
    const/4 v14, 0x0

    goto :goto_0

    .line 535
    .end local v8    # "e":Landroid/nfc/FormatException;
    .restart local v1    # "acPayload":[B
    .restart local v2    # "alt":Landroid/nfc/NdefRecord;
    .restart local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "carrierRefLength":I
    .restart local v7    # "cps":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "msg":Landroid/nfc/NdefMessage;
    :cond_2
    new-array v5, v6, [B

    .line 536
    .local v5, "carrierRefId":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 537
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 539
    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 527
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "carrierRefId":[B
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 544
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    :cond_5
    const/4 v14, 0x1

    goto :goto_0
.end method

.method public isHandoverSupported()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 664
    new-instance v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;-><init>()V

    .line 665
    .local v4, "result":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 666
    const/4 v7, 0x2

    iput v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->transport:I

    .line 670
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-lez v7, :cond_1

    .line 672
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 673
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 674
    .local v6, "type":I
    sparse-switch v6, :sswitch_data_0

    .line 695
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 699
    .end local v2    # "len":I
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 700
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "NfcHandover"

    const-string v8, "BT OOB: invalid BT address"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-boolean v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v7, :cond_2

    iget-object v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string v7, ""

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 705
    :cond_2
    :goto_2
    return-object v4

    .line 676
    .restart local v2    # "len":I
    .restart local v6    # "type":I
    :sswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 677
    .local v0, "address":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 678
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 679
    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 701
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v6    # "type":I
    :catch_1
    move-exception v1

    .line 702
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v7, "NfcHandover"

    const-string v8, "BT OOB: payload shorter than expected"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 682
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v2    # "len":I
    .restart local v6    # "type":I
    :sswitch_1
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 683
    .local v5, "role":B
    if-ne v5, v9, :cond_0

    .line 685
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    goto :goto_2

    .line 690
    .end local v5    # "role":B
    :sswitch_2
    add-int/lit8 v7, v2, -0x1

    new-array v3, v7, [B

    .line 691
    .local v3, "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 692
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v7, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
    .end sparse-switch
.end method

.method parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 571
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 572
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 573
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 576
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    .line 596
    :goto_0
    return-object v3

    .line 581
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverManager;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverManager;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 586
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 592
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 593
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverManager;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    goto :goto_0

    .line 596
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x2

    .line 551
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 552
    .local v4, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 554
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v1

    .line 555
    .local v1, "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/handover/HandoverManager;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->carrierActivating:Z

    .line 567
    .end local v1    # "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_0
    :goto_1
    return-object v1

    .line 561
    .restart local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v7, :cond_2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->TYPE_BLE_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v1

    goto :goto_1

    .line 551
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 567
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .locals 8
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 624
    new-instance v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;-><init>()V

    .line 625
    .local v4, "result":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 628
    const/4 v6, 0x2

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 629
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 630
    .local v0, "address":[B
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 631
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    .line 635
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 636
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 637
    .local v5, "type":I
    packed-switch v5, :pswitch_data_0

    .line 650
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 654
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "NfcHandover"

    const-string v7, "BT OOB: invalid BT address"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_1
    iget-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 660
    :cond_2
    return-object v4

    .line 639
    .restart local v0    # "address":[B
    .restart local v2    # "len":I
    .restart local v5    # "type":I
    :pswitch_0
    add-int/lit8 v6, v2, -0x1

    :try_start_1
    new-array v3, v6, [B

    .line 640
    .local v3, "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 641
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 656
    .end local v0    # "address":[B
    .end local v2    # "len":I
    .end local v3    # "nameBytes":[B
    .end local v5    # "type":I
    :catch_1
    move-exception v1

    .line 657
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v6, "NfcHandover"

    const-string v7, "BT OOB: payload shorter than expected"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 644
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "address":[B
    .restart local v2    # "len":I
    .restart local v5    # "type":I
    :pswitch_1
    :try_start_2
    iget-object v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 645
    add-int/lit8 v6, v2, -0x1

    new-array v3, v6, [B

    .line 646
    .restart local v3    # "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 647
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .locals 7
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 600
    new-instance v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;-><init>()V

    .line 601
    .local v4, "result":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 604
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 605
    const/4 v5, 0x6

    new-array v0, v5, [B

    .line 606
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 607
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 608
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 609
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 610
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 611
    .local v3, "nameLength":I
    new-array v2, v3, [B

    .line 612
    .local v2, "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 613
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    .end local v0    # "address":[B
    .end local v2    # "nameBytes":[B
    .end local v3    # "nameLength":I
    :goto_0
    iget-boolean v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, ""

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 620
    :cond_0
    return-object v4

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: invalid BT address"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 616
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 617
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: payload shorter than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerBluetoothInTransferLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .locals 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 488
    iget v1, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/nfc/handover/PendingHandoverTransfer;->forBluetoothDevice(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v0

    .line 490
    .local v0, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    return-object v0
.end method

.method registerBluetoothOutTransferLocked(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .locals 5
    .param p1, "data"    # Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 497
    iget v1, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->carrierActivating:Z

    invoke-static {v1, v2, v3, v4, p2}, Lcom/android/nfc/handover/PendingHandoverTransfer;->forBluetoothDevice(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v0

    .line 499
    .local v0, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-object v0
.end method

.method removeTransferLocked(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    return-void
.end method

.method public sendOrQueueMessageLocked(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    if-nez v2, :cond_2

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->bindServiceIfNeededLocked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    const-string v2, "NfcHandover"

    const-string v3, "Could not start service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    return v1

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 429
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcHandover"

    const-string v3, "Could not connect to handover service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    .line 286
    monitor-exit v1

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryHandover(Landroid/nfc/NdefMessage;)Z
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 439
    if-nez p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v3

    .line 440
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v0

    .line 445
    .local v0, "handover":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v0, :cond_0

    .line 446
    iget-boolean v5, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 448
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 449
    :try_start_0
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    if-nez v6, :cond_3

    monitor-exit v5

    goto :goto_0

    .line 463
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 451
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_4

    .line 453
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 456
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 457
    .local v2, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 458
    .local v1, "headsetData":Landroid/os/Bundle;
    const-string v3, "device"

    iget-object v4, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 459
    const-string v3, "headsetname"

    iget-object v4, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v3, "transporttype"

    iget v4, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->transport:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 462
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    move-result v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 9
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x0

    .line 352
    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v6

    .line 353
    :cond_1
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v7, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 358
    .local v3, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 362
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 368
    .local v1, "bluetoothData":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 369
    .local v2, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 370
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 371
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v1

    .line 368
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 376
    .end local v2    # "dataRecord":Landroid/nfc/NdefRecord;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/HandoverManager;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v6

    goto :goto_0
.end method

.method unbindServiceIfNeededLocked(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    const-string v0, "NfcHandover"

    const-string v1, "Unbinding from service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 238
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    .line 239
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    .line 241
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 243
    :cond_1
    return-void
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 511
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 512
    return-void
.end method

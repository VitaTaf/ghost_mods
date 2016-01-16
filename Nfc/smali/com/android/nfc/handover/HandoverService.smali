.class public Lcom/android/nfc/handover/HandoverService;
.super Landroid/app/Service;
.source "HandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
.implements Lcom/android/nfc/handover/HandoverTransfer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverService$MessageHandler;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

.field public static final ACTION_HANDOVER_STARTED:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_STARTED"

.field public static final ACTION_TRANSFER_DONE:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_DONE"

.field public static final ACTION_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

.field static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final DIRECTION_INCOMING:I = 0x0

.field public static final DIRECTION_OUTGOING:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.ADDRESS"

.field public static final EXTRA_HANDOVER_DEVICE_TYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.HANDOVER_DEVICE_TYPE"

.field public static final EXTRA_INCOMING:Ljava/lang/String; = "com.android.nfc.handover.extra.INCOMING"

.field public static final EXTRA_OBJECT_COUNT:Ljava/lang/String; = "android.nfc.handover.intent.extra.OBJECT_COUNT"

.field static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field public static final EXTRA_TRANSFER_DIRECTION:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

.field public static final EXTRA_TRANSFER_ID:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_ID"

.field public static final EXTRA_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

.field public static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

.field public static final EXTRA_TRANSFER_STATUS:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_STATUS"

.field public static final EXTRA_TRANSFER_URI:Ljava/lang/String; = "android.nfc.handover.intent.extra.TRANSFER_URI"

.field public static final HANDOVER_STATUS_PERMISSION:Ljava/lang/String; = "android.permission.NFC_HANDOVER_STATUS"

.field public static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field public static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field static final MSG_DEREGISTER_CLIENT:I = 0x1

.field static final MSG_PAUSE_POLLING:I = 0x5

.field static final MSG_PERIPHERAL_HANDOVER:I = 0x4

.field static final MSG_REGISTER_CLIENT:I = 0x0

.field static final MSG_START_INCOMING_TRANSFER:I = 0x2

.field static final MSG_START_OUTGOING_TRANSFER:I = 0x3

.field public static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final TAG:Ljava/lang/String; = "HandoverService"


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothTransfers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/nfc/handover/HandoverTransfer;",
            ">;"
        }
    .end annotation
.end field

.field mClient:Landroid/os/Messenger;

.field mHandler:Landroid/os/Handler;

.field final mHandoverStatusReceiver:Landroid/content/BroadcastReceiver;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field final mPendingOutTransfers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/nfc/handover/BluetoothOppHandover;",
            ">;"
        }
    .end annotation
.end field

.field mSoundPool:Landroid/media/SoundPool;

.field mSuccessSound:I

.field private mWifiTransfer:Lcom/android/nfc/handover/HandoverTransfer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 172
    new-instance v0, Lcom/android/nfc/handover/HandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverService$1;-><init>(Lcom/android/nfc/handover/HandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandoverStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 193
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    .line 195
    new-instance v0, Lcom/android/nfc/handover/HandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/HandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mMessenger:Landroid/os/Messenger;

    .line 197
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/HandoverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/HandoverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HandoverService;->handleCancelTransfer(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/HandoverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HandoverService;->handleTransferEvent(Landroid/content/Intent;I)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 460
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 462
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 464
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->startPendingTransfers()V

    .line 477
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 474
    iput-boolean v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 475
    iput-boolean v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_0
.end method

.method private handleCancelTransfer(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    const/4 v5, -0x1

    .line 443
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "sourceAddress":Ljava/lang/String;
    const-string v4, "com.android.nfc.handover.extra.INCOMING"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 446
    .local v0, "direction":I
    if-ne v0, v5, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 451
    .local v1, "incoming":Z
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/nfc/handover/HandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v3

    .line 453
    .local v3, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v3, :cond_0

    .line 454
    const-string v4, "HandoverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancelling transfer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v3}, Lcom/android/nfc/handover/HandoverTransfer;->cancel()V

    goto :goto_0

    .line 450
    .end local v1    # "incoming":Z
    .end local v3    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleTransferEvent(Landroid/content/Intent;I)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "deviceType"    # I

    .prologue
    .line 386
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "action":Ljava/lang/String;
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 388
    .local v4, "direction":I
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_ID"

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 389
    .local v6, "id":I
    const-string v14, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 391
    const/4 v4, 0x0

    .line 393
    :cond_0
    const-string v14, "android.nfc.handover.intent.extra.ADDRESS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "sourceAddress":Ljava/lang/String;
    const/4 v14, -0x1

    if-eq v4, v14, :cond_1

    if-nez v10, :cond_2

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    if-nez v4, :cond_3

    const/4 v7, 0x1

    .line 398
    .local v7, "incoming":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7}, Lcom/android/nfc/handover/HandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v11

    .line 400
    .local v11, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-nez v11, :cond_4

    .line 403
    const/4 v14, -0x1

    if-eq v6, v14, :cond_1

    .line 404
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_1

    .line 405
    const-string v14, "HandoverService"

    const-string v15, "Didn\'t find transfer, stopping"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v2, "cancelIntent":Landroid/content/Intent;
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v2, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/HandoverService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    .end local v2    # "cancelIntent":Landroid/content/Intent;
    .end local v7    # "incoming":Z
    .end local v11    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 415
    .restart local v7    # "incoming":Z
    .restart local v11    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_4
    invoke-virtual {v11, v6}, Lcom/android/nfc/handover/HandoverTransfer;->setBluetoothTransferId(I)V

    .line 417
    const-string v14, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 418
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_STATUS"

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 420
    .local v5, "handoverStatus":I
    if-nez v5, :cond_6

    .line 421
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 422
    .local v13, "uriString":Ljava/lang/String;
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_MIME_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 423
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 424
    .local v12, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_5

    .line 425
    new-instance v14, Ljava/io/File;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 427
    :cond_5
    const/4 v14, 0x1

    invoke-virtual {v11, v14, v12, v8}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v12    # "uri":Landroid/net/Uri;
    .end local v13    # "uriString":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v5    # "handoverStatus":I
    :cond_7
    const-string v14, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 432
    const-string v14, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v9

    .line 433
    .local v9, "progress":F
    invoke-virtual {v11, v9}, Lcom/android/nfc/handover/HandoverTransfer;->updateFileProgress(F)V

    goto/16 :goto_0

    .line 434
    .end local v9    # "progress":F
    :cond_8
    const-string v14, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 435
    const-string v14, "android.nfc.handover.intent.extra.OBJECT_COUNT"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 436
    .local v3, "count":I
    if-lez v3, :cond_1

    .line 437
    invoke-virtual {v11, v3}, Lcom/android/nfc/handover/HandoverTransfer;->setObjectCount(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method createHandoverTransfer(Lcom/android/nfc/handover/PendingHandoverTransfer;)V
    .locals 5
    .param p1, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    .line 329
    iget v2, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 330
    iget-object v2, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "macAddress":Ljava/lang/String;
    iget-boolean v2, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/nfc/handover/HandoverService;->maybeCreateHandoverTransfer(Ljava/lang/String;ZLcom/android/nfc/handover/PendingHandoverTransfer;)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v1

    .line 338
    .local v1, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 341
    .end local v0    # "macAddress":Ljava/lang/String;
    .end local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    const-string v2, "HandoverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid device type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] received."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method disableBluetoothIfNeeded()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    goto :goto_0
.end method

.method doIncomingTransfer(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 259
    .local v0, "msgData":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 260
    const-string v2, "transfer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/PendingHandoverTransfer;

    .line 261
    .local v1, "pendingTransfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    iget v2, v1, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->enableBluetooth()Z

    move-result v2

    if-nez v2, :cond_0

    .line 263
    const-string v2, "HandoverService"

    const-string v3, "Error enabling Bluetooth."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget v2, v1, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverService;->createHandoverTransfer(Lcom/android/nfc/handover/PendingHandoverTransfer;)V

    goto :goto_0
.end method

.method doOutgoingTransfer(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 229
    .local v1, "msgData":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 230
    const-string v3, "transfer"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/handover/PendingHandoverTransfer;

    .line 231
    .local v2, "pendingTransfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverService;->createHandoverTransfer(Lcom/android/nfc/handover/PendingHandoverTransfer;)V

    .line 233
    iget v3, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 236
    new-instance v0, Lcom/android/nfc/handover/BluetoothOppHandover;

    iget-object v3, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    iget-boolean v5, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/nfc/handover/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Z)V

    .line 239
    .local v0, "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothOppHandover;->start()V

    .line 254
    .end local v0    # "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local v0    # "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->enableBluetooth()Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    const-string v3, "HandoverService"

    const-string v4, "Error enabling Bluetooth."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v3, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    goto :goto_0

    .line 248
    :cond_2
    const-string v3, "HandoverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Queueing out transfer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method doPeripheralHandover(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 273
    .local v6, "msgData":Landroid/os/Bundle;
    const-string v0, "device"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 274
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v0, "headsetname"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "name":Ljava/lang/String;
    const-string v0, "transporttype"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 276
    .local v4, "transport":I
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v0, :cond_1

    .line 277
    const-string v0, "HandoverService"

    const-string v1, "Ignoring pairing request, existing handover in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 283
    const/4 v0, 0x2

    if-ne v4, v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->resumePolling()V

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->enableBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "HandoverService"

    const-string v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    goto :goto_0
.end method

.method enableBluetooth()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 309
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 311
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    .line 313
    :cond_0
    return v0
.end method

.method findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;
    .locals 3
    .param p1, "macAddress"    # Ljava/lang/String;
    .param p2, "incoming"    # Z

    .prologue
    .line 369
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 370
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/HandoverTransfer;

    .line 372
    .local v1, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    .end local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method maybeCreateHandoverTransfer(Ljava/lang/String;ZLcom/android/nfc/handover/PendingHandoverTransfer;)Lcom/android/nfc/handover/HandoverTransfer;
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    .line 346
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 348
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/HandoverTransfer;

    .line 350
    .local v1, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 364
    :goto_1
    return-object v2

    .line 356
    :cond_0
    iget v2, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    .line 357
    const/4 v2, 0x0

    goto :goto_1

    .line 360
    .end local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_1
    new-instance v1, Lcom/android/nfc/handover/HandoverTransfer;

    invoke-direct {v1, p0, p0, p3}, Lcom/android/nfc/handover/HandoverTransfer;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V

    .restart local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    goto :goto_0
.end method

.method notifyClientTransferComplete(I)V
    .locals 3
    .param p1, "transferId"    # I

    .prologue
    .line 480
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 481
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 482
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 485
    .restart local v0    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .locals 7
    .param p1, "connected"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 536
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v1, v4, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 537
    .local v1, "transport":I
    iput-object v6, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 538
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    .line 545
    if-ne v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 546
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 552
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 555
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    if-eqz v4, :cond_3

    .line 556
    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    if-eqz v2, :cond_4

    :goto_0
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->disableBluetoothIfNeeded()V

    .line 567
    return-void

    .line 559
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 203
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 205
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 206
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/nfc/handover/HandoverService;->mSuccessSound:I

    .line 207
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.handover.intent.action.TRANSFER_DONE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.nfc.handover.intent.action.HANDOVER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mHandoverStatusReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.NFC_HANDOVER_STATUS"

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/nfc/handover/HandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 215
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandoverStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    return-void
.end method

.method public onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;Z)V
    .locals 10
    .param p1, "transfer"    # Lcom/android/nfc/handover/HandoverTransfer;
    .param p2, "success"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 503
    monitor-enter p0

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mWifiTransfer:Lcom/android/nfc/handover/HandoverTransfer;

    if-ne v0, p1, :cond_0

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mWifiTransfer:Lcom/android/nfc/handover/HandoverTransfer;

    .line 507
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mWifiTransfer:Lcom/android/nfc/handover/HandoverTransfer;

    if-nez v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 511
    .local v8, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 513
    .local v7, "hashPair":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/handover/HandoverTransfer;

    .line 514
    .local v9, "transferEntry":Lcom/android/nfc/handover/HandoverTransfer;
    if-ne v9, p1, :cond_1

    .line 515
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 507
    .end local v7    # "hashPair":Ljava/util/Map$Entry;
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v9    # "transferEntry":Lcom/android/nfc/handover/HandoverTransfer;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 521
    :cond_2
    invoke-virtual {p1}, Lcom/android/nfc/handover/HandoverTransfer;->getTransferId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    .line 524
    if-eqz p2, :cond_3

    .line 525
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/handover/HandoverService;->mSuccessSound:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 530
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->disableBluetoothIfNeeded()V

    .line 531
    return-void

    .line 527
    :cond_3
    const-string v0, "HandoverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer failed, final state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method startPendingTransfers()V
    .locals 2

    .prologue
    .line 302
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/BluetoothOppHandover;

    .line 304
    .local v0, "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothOppHandover;->start()V

    goto :goto_0

    .line 306
    .end local v0    # "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    :cond_0
    return-void
.end method

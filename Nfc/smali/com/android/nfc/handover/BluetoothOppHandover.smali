.class public Lcom/android/nfc/handover/BluetoothOppHandover;
.super Ljava/lang/Object;
.source "BluetoothOppHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND"

.field static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

.field static final DBG:Z = true

.field static final MSG_START_SEND:I = 0x0

.field static final REMOTE_BT_ENABLE_DELAY_MS:I = 0x1388

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoothOppHandover"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCreateTime:Ljava/lang/Long;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field final mRemoteActivating:Z

.field mState:I

.field final mUris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "remoteActivating"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 66
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    .line 67
    iput-boolean p4, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mRemoteActivating:Z

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mState:I

    .line 72
    return-void
.end method


# virtual methods
.method complete()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mState:I

    .line 97
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->sendIntent()V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method sendIntent()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 100
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "com.android.bluetooth"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v8, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    aget-object v9, v9, v11

    invoke-static {v8, v9}, Lcom/android/nfc/handover/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    iget-object v9, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 110
    .local v6, "uri":Landroid/net/Uri;
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    const-string v9, "com.android.bluetooth"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v6, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v8, "BluetoothOppHandover"

    const-string v9, "Failed to transfer permission to Bluetooth process."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v8, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    array-length v8, v8

    if-ne v8, v12, :cond_1

    .line 117
    const-string v8, "android.nfc.handover.intent.action.HANDOVER_SEND"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v8, "android.intent.extra.STREAM"

    iget-object v9, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    aget-object v9, v9, v11

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    :goto_2
    const-string v8, "BluetoothOppHandover"

    const-string v9, "Handing off outging transfer to BT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v8, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->complete()V

    .line 128
    return-void

    .line 120
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .local v7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v8, "android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public start()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1388

    .line 79
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mRemoteActivating:Z

    if-eqz v1, :cond_1

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 81
    .local v0, "timeElapsed":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v6, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :goto_0
    return-void

    .line 87
    .restart local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->sendIntent()V

    goto :goto_0

    .line 91
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->sendIntent()V

    goto :goto_0
.end method

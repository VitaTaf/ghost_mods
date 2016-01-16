.class public Lcom/android/nfc/handover/HandoverTransfer;
.super Ljava/lang/Object;
.source "HandoverTransfer.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverTransfer$Callback;
    }
.end annotation


# static fields
.field static final ALIVE_CHECK_MS:I = 0x4e20

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final DBG:Ljava/lang/Boolean;

.field static final DEVICE_TYPE_BLUETOOTH:I = 0x1

.field public static final DEVICE_TYPE_WIFI:I = 0x2

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HandoverTransfer"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDeviceType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field final mRemoteMac:Ljava/lang/String;

.field final mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/HandoverTransfer$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    .line 136
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 137
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteMacAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteMac:Ljava/lang/String;

    .line 138
    iget-boolean v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    .line 139
    iget v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    .line 141
    iget v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->deviceType:I

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mDeviceType:I

    .line 143
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mLastUpdate:Ljava/lang/Long;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 146
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    .line 152
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->buildCancelIntent(Z)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    .line 153
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 154
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 155
    iput v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 156
    iget-object v0, p3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mOutgoingUris:[Landroid/net/Uri;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    .line 158
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 159
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mStartTime:Ljava/lang/Long;

    .line 163
    return-void

    :cond_0
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 266
    return-void
.end method


# virtual methods
.method buildCancelIntent(Z)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "incoming"    # Z

    .prologue
    const/4 v3, 0x1

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mDeviceType:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v4, "com.android.nfc.handover.extra.INCOMING"

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 481
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 474
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteMac:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v2, v3

    .line 476
    goto :goto_1
.end method

.method buildViewIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 459
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    .line 469
    :goto_0
    return-object v3

    .line 461
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 465
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 467
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 465
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method cancel()V
    .locals 5

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 258
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 247
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 251
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 253
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->sendBluetoothCancelIntentAndUpdateState()V

    goto :goto_0

    .line 255
    :cond_3
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method checkMediaStorage(Ljava/io/File;)Z
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return v0

    .line 451
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    const-string v1, "HandoverTransfer"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 199
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 200
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 201
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 203
    if-nez p3, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/handover/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 206
    :cond_2
    if-eqz p3, :cond_4

    .line 207
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-ne v0, v1, :cond_8

    .line 218
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    goto :goto_0

    .line 210
    :cond_4
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "HandoverTransfer"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_5
    const-string v0, "HandoverTransfer"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :cond_6
    const-string v0, "HandoverTransfer"

    const-string v1, "Updating state!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v0, :cond_7

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_2

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v1, "yyyy-MM-dd"

    .line 508
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 509
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 512
    .local v0, "count":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 515
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    :cond_0
    return-object v2
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 487
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 488
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_0

    .line 489
    const-string v3, ""

    .line 490
    move-object v4, p2

    .line 495
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 497
    .local v0, "count":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 498
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 492
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 493
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 502
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_1
    return-object v2
.end method

.method public getTransferId()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 417
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    .line 419
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    :goto_0
    move v0, v1

    .line 430
    :goto_1
    return v0

    .line 422
    :cond_0
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v2, :cond_1

    const/4 v0, 0x5

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0

    .line 425
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_4

    .line 427
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer timed out for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 430
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 231
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :cond_0
    return v0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    if-eqz p2, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_1
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 439
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 441
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_2
    monitor-exit p0

    return-void

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processFiles()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    .line 356
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "beam"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, "beamPath":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->checkMediaStorage(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 360
    :cond_0
    const-string v8, "HandoverTransfer"

    const-string v9, "Media storage not valid or no uris received."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 410
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "beam"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverTransfer;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_2

    .line 368
    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to create multiple path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0

    .line 374
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 375
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 376
    .local v7, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 378
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v6, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/handover/HandoverTransfer;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 382
    .local v2, "dstFile":Ljava/io/File;
    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Renaming from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 384
    sget-object v8, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to rename from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 388
    :cond_4
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v8, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "HandoverTransfer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did successful rename from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 399
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "srcFile":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_6
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 400
    .restart local v5    # "mimeType":Ljava/lang/String;
    const-string v8, "image/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "video/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "audio/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 402
    :cond_7
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    .line 403
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 404
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0

    .line 407
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    :cond_8
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 187
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    if-ne v0, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 188
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBluetoothTransferId:I

    .line 189
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setObjectCount(I)V
    .locals 0
    .param p1, "objectCount"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 240
    return-void
.end method

.method public updateFileProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 181
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 183
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_0
.end method

.method updateNotification()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const v7, 0x1080089

    const v6, 0x1080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 269
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v2, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060059

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 272
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 273
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 275
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_4

    .line 276
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f070008

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "beamString":Ljava/lang/String;
    :goto_0
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v8, v11, :cond_0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 282
    :cond_0
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 283
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v6, :cond_5

    const v6, 0x1080081

    :goto_1
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 285
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 286
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 287
    const v6, 0x7f020001

    iget-object v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v8, 0x7f07000d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v7, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 289
    const/4 v3, 0x0

    .line 290
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-lez v6, :cond_1

    .line 291
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 292
    .local v4, "progressUnit":F
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    mul-float/2addr v7, v4

    add-float v3, v6, v7

    .line 294
    .end local v4    # "progressUnit":F
    :cond_1
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-lez v6, :cond_6

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_6

    .line 295
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v2, v12, v6, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 330
    .end local v3    # "progress":F
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 331
    :cond_3
    return-void

    .line 278
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f070009

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_0

    .line 283
    :cond_5
    const v6, 0x1080088

    goto :goto_1

    .line 297
    .restart local v3    # "progress":F
    :cond_6
    invoke-virtual {v2, v12, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 299
    .end local v3    # "progress":F
    :cond_7
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_9

    .line 300
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 301
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_8

    :goto_3
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 303
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 304
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 306
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v6, :cond_2

    .line 307
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 308
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v5

    .line 309
    .local v5, "viewIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v10, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 312
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_2

    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "viewIntent":Landroid/content/Intent;
    :cond_8
    move v6, v7

    .line 301
    goto :goto_3

    .line 314
    :cond_9
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_b

    .line 315
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 316
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_a

    :goto_4
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 318
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 319
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_a
    move v6, v7

    .line 316
    goto :goto_4

    .line 320
    :cond_b
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_c

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_3

    .line 321
    :cond_c
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 322
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_d

    :goto_5
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 324
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 325
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_d
    move v6, v7

    .line 322
    goto :goto_5
.end method

.method updateStateAndNotification(I)V
    .locals 5
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 334
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mLastUpdate:Ljava/lang/Long;

    .line 337
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 345
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    if-nez v1, :cond_2

    .line 347
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    .line 349
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-ne v2, v4, :cond_3

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/android/nfc/handover/HandoverTransfer$Callback;->onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;Z)V

    .line 351
    :cond_2
    return-void

    .line 349
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 166
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 170
    return-void
.end method

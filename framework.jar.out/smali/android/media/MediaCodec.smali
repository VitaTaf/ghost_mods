.class public final Landroid/media/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$1;,
        Landroid/media/MediaCodec$MediaImage;,
        Landroid/media/MediaCodec$Callback;,
        Landroid/media/MediaCodec$BufferMap;,
        Landroid/media/MediaCodec$CryptoInfo;,
        Landroid/media/MediaCodec$CryptoException;,
        Landroid/media/MediaCodec$CodecException;,
        Landroid/media/MediaCodec$EventHandler;,
        Landroid/media/MediaCodec$BufferInfo;
    }
.end annotation


# static fields
.field public static final BUFFER_FLAG_CODEC_CONFIG:I = 0x2

.field public static final BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final BUFFER_FLAG_SYNC_FRAME:I = 0x1

.field private static final CB_ERROR:I = 0x3

.field private static final CB_INPUT_AVAILABLE:I = 0x1

.field private static final CB_OUTPUT_AVAILABLE:I = 0x2

.field private static final CB_OUTPUT_FORMAT_CHANGE:I = 0x4

.field public static final CONFIGURE_FLAG_ENCODE:I = 0x1

.field public static final CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field private static final EVENT_CALLBACK:I = 0x1

.field private static final EVENT_SET_CALLBACK:I = 0x2

.field public static final INFO_OUTPUT_BUFFERS_CHANGED:I = -0x3

.field public static final INFO_OUTPUT_FORMAT_CHANGED:I = -0x2

.field public static final INFO_TRY_AGAIN_LATER:I = -0x1

.field public static final PARAMETER_KEY_REQUEST_SYNC_FRAME:Ljava/lang/String; = "request-sync"

.field public static final PARAMETER_KEY_SUSPEND:Ljava/lang/String; = "drop-input-frames"

.field public static final PARAMETER_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video-bitrate"

.field private static final TAG:Ljava/lang/String; = "MediaCodec"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mBufferLock:Ljava/lang/Object;

.field private mCachedInputBuffers:[Ljava/nio/ByteBuffer;

.field private mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCallback:Landroid/media/MediaCodec$Callback;

.field private final mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private mEventHandler:Landroid/media/MediaCodec$EventHandler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1699
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1700
    invoke-static {}, Landroid/media/MediaCodec;->native_init()V

    .line 1701
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsType"    # Z
    .param p3, "encoder"    # Z

    .prologue
    const/4 v2, 0x0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    new-instance v1, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v1, v2}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$1;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 1266
    new-instance v1, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v1, v2}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$1;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 482
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 483
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 489
    :goto_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    .line 491
    const-string v1, "MediaCodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encoder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_setup(Ljava/lang/String;ZZ)V

    .line 494
    return-void

    .line 484
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_0

    .line 487
    :cond_1
    iput-object v2, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCodec;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaCodec;
    .param p1, "x1"    # Landroid/media/MediaCodec$Callback;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCodec;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCodec;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaCodec;
    .param p1, "x1"    # [Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Landroid/media/MediaCodec;

    .prologue
    .line 242
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaCodec;
    .param p1, "x1"    # [Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method private final cacheBuffers(Z)V
    .locals 2
    .param p1, "input"    # Z

    .prologue
    .line 1350
    const/4 v0, 0x0

    .line 1352
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getBuffers(Z)[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1353
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    if-eqz p1, :cond_0

    .line 1358
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    .line 1362
    :goto_1
    return-void

    .line 1360
    :cond_0
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 1354
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 475
    new-instance v0, Landroid/media/MediaCodec;

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 461
    new-instance v0, Landroid/media/MediaCodec;

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private final freeAllTrackedBuffers()V
    .locals 2

    .prologue
    .line 1339
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1340
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 1341
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 1344
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 1345
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 1346
    monitor-exit v1

    .line 1347
    return-void

    .line 1346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final freeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1324
    if-eqz p1, :cond_0

    .line 1326
    invoke-static {p1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 1328
    :cond_0
    return-void
.end method

.method private final freeByteBuffers([Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 1331
    if-eqz p1, :cond_0

    .line 1332
    move-object v0, p1

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1333
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 1332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1336
    .end local v0    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method private final native getBuffer(ZI)Ljava/nio/ByteBuffer;
.end method

.method private final native getBuffers(Z)[Ljava/nio/ByteBuffer;
.end method

.method private final native getFormatNative(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native getImage(ZI)Landroid/media/Image;
.end method

.method private final native getOutputFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .prologue
    .line 1271
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 1272
    aget-object v0, p1, p2

    .line 1273
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 1274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 1277
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 1314
    if-eqz p1, :cond_1

    .line 1315
    move-object v0, p1

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1316
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 1317
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 1315
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1321
    .end local v0    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    return-void
.end method

.method private final native native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
.end method

.method private final native native_dequeueInputBuffer(J)I
.end method

.method private final native native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_queueInputBuffer(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private final native native_reset()V
.end method

.method private final native native_setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method private final native native_setup(Ljava/lang/String;ZZ)V
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private postEventFromNative(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1667
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_0

    .line 1668
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1669
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1671
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private final native releaseOutputBuffer(IZZJ)V
.end method

.method private final revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .prologue
    .line 1292
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1293
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    :try_start_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 1294
    aget-object v0, p1, p2

    .line 1295
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 1296
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 1299
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    monitor-exit v2

    .line 1300
    return-void

    .line 1299
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final native setParameters([Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private final validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .prologue
    .line 1281
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 1282
    aget-object v0, p1, p2

    .line 1283
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 1284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 1285
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1288
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .prologue
    .line 1304
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 1305
    aget-object v0, p1, p2

    .line 1306
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 1307
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 1308
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1311
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 12
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I

    .prologue
    .line 555
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v8

    .line 557
    .local v8, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 558
    .local v1, "keys":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 560
    .local v2, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 561
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 562
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    .line 564
    const/4 v9, 0x0

    .line 565
    .local v9, "i":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 566
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "audio-session-id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const/4 v11, 0x0

    .line 569
    .local v11, "sessionId":I
    :try_start_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 574
    const-string v0, "audio-hw-sync"

    aput-object v0, v1, v9

    .line 575
    invoke-static {v11}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    .line 580
    .end local v11    # "sessionId":I
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 581
    goto :goto_0

    .line 571
    .restart local v11    # "sessionId":I
    :catch_0
    move-exception v6

    .line 572
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Wrong Session ID Parameter!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "sessionId":I
    :cond_0
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v9

    .line 578
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v9

    goto :goto_1

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v9    # "i":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    .line 584
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 585
    return-void
.end method

.method public final native createInputSurface()Landroid/view/Surface;
.end method

.method public final dequeueInputBuffer(J)I
    .locals 3
    .param p1, "timeoutUs"    # J

    .prologue
    .line 990
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_dequeueInputBuffer(J)I

    move-result v0

    .line 991
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 992
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 993
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 994
    monitor-exit v2

    .line 996
    :cond_0
    return v0

    .line 994
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 4
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "timeoutUs"    # J

    .prologue
    .line 1040
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    .line 1041
    .local v0, "res":I
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1042
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 1043
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    .line 1047
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1048
    return v0

    .line 1044
    :cond_1
    if-ltz v0, :cond_0

    .line 1045
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0, p1}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    .line 1047
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_finalize()V

    .line 499
    return-void
.end method

.method public final flush()V
    .locals 2

    .prologue
    .line 663
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 664
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 665
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 666
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 667
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 668
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_flush()V

    .line 670
    return-void

    .line 668
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCodecInfo()Landroid/media/MediaCodecInfo;
    .locals 1

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecList;->getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1435
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1436
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1437
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 1438
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 1439
    monitor-exit v2

    .line 1440
    return-object v0

    .line 1439
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1385
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getInputFormat()Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 1176
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getInputImage(I)Landroid/media/Image;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1463
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v0

    .line 1464
    .local v0, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1465
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 1466
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 1467
    monitor-exit v2

    .line 1468
    return-object v0

    .line 1467
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1491
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1492
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1493
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 1494
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 1495
    monitor-exit v2

    .line 1496
    return-object v0

    .line 1495
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutputBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1413
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getOutputFormat()Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 1162
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getOutputFormat(I)Landroid/media/MediaFormat;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1189
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getOutputFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getOutputImage(I)Landroid/media/Image;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1518
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v0

    .line 1519
    .local v0, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1520
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 1521
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 1522
    monitor-exit v2

    .line 1523
    return-object v0

    .line 1522
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 834
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 835
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 836
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 844
    return-void

    .line 836
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 842
    throw v0

    .line 840
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 959
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 960
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 961
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    return-void

    .line 961
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 967
    throw v0

    .line 965
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 525
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_release()V

    .line 526
    return-void
.end method

.method public final releaseOutputBuffer(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "renderTimestampNs"    # J

    .prologue
    const/4 v2, 0x1

    .line 1129
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1130
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 1131
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 1132
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v4, p2

    .line 1133
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    .line 1135
    return-void

    .line 1132
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final releaseOutputBuffer(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "render"    # Z

    .prologue
    .line 1072
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1073
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 1074
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 1075
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1076
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    .line 1077
    return-void

    .line 1075
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final reset()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 513
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_reset()V

    .line 514
    return-void
.end method

.method public setCallback(Landroid/media/MediaCodec$Callback;)V
    .locals 4
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;

    .prologue
    const/4 v3, 0x0

    .line 1614
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_0

    .line 1616
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1617
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1622
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 1624
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 1580
    if-nez p1, :cond_0

    .line 1595
    :goto_0
    return-void

    .line 1584
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1585
    .local v3, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    .line 1587
    .local v4, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 1588
    .local v0, "i":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1589
    .local v2, "key":Ljava/lang/String;
    aput-object v2, v3, v0

    .line 1590
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1591
    add-int/lit8 v0, v0, 0x1

    .line 1592
    goto :goto_1

    .line 1594
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodec;->setParameters([Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final native setVideoScalingMode(I)V
.end method

.method public final native signalEndOfInputStream()V
.end method

.method public final start()V
    .locals 2

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_start()V

    .line 620
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 621
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    .line 623
    monitor-exit v1

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 635
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_stop()V

    .line 636
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 638
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 642
    :cond_0
    return-void
.end method

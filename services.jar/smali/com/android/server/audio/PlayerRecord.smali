.class Lcom/android/server/audio/PlayerRecord;
.super Ljava/lang/Object;
.source "PlayerRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;,
        Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;,
        Lcom/android/server/audio/PlayerRecord$RccPlaybackState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field public static sController:Lcom/android/server/audio/MediaFocusControl;

.field private static sLastRccId:I


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private mCallingUid:I

.field private final mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field private mRcClient:Landroid/media/IRemoteControlClient;

.field private mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

.field private mRccId:I

.field private final mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/PlayerRecord;->sLastRccId:I

    return-void
.end method

.method protected constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "eventReceiver"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, -0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    .line 225
    iput-object p1, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    .line 226
    iput-object p2, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    .line 227
    iput-object p3, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    .line 228
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 230
    sget v1, Lcom/android/server/audio/PlayerRecord;->sLastRccId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/audio/PlayerRecord;->sLastRccId:I

    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    .line 231
    new-instance v1, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    const/4 v2, 0x1

    const-wide/16 v4, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;-><init>(IJF)V

    iput-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    .line 236
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->resetPlaybackInfo()V

    .line 237
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected static setMediaFocusControl(Lcom/android/server/audio/MediaFocusControl;)V
    .locals 0
    .param p0, "mfc"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    .line 219
    sput-object p0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    .line 220
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lcom/android/server/audio/PlayerRecord;->sController:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntentAsync(Landroid/app/PendingIntent;)V

    .line 354
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    .line 345
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    .line 349
    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "registrationInfo"    # Z

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  pi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- ercvr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- vol handling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- vol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- volMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -- volObs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->destroy()V

    .line 359
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 360
    return-void
.end method

.method protected getMediaButtonIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method protected getMediaButtonReceiver()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getRcc()Landroid/media/IRemoteControlClient;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method protected getRccId()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/android/server/audio/PlayerRecord;->mRccId:I

    return v0
.end method

.method protected hasMatchingMediaButtonIntent(Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 271
    :goto_0
    return v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPlaybackActive()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    iget v0, v0, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->mState:I

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl;->isPlaystateActive(I)Z

    move-result v0

    return v0
.end method

.method protected resetControllerInfoForNoRcc()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    .line 315
    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 316
    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    .line 317
    return-void
.end method

.method protected resetControllerInfoForRcc(Landroid/media/IRemoteControlClient;Ljava/lang/String;I)V
    .locals 6
    .param p1, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 285
    iget-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->unlinkToRcClientDeath()V

    .line 290
    :cond_0
    iput-object p1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 291
    iput-object p2, p0, Lcom/android/server/audio/PlayerRecord;->mCallingPackageName:Ljava/lang/String;

    .line 292
    iput p3, p0, Lcom/android/server/audio/PlayerRecord;->mCallingUid:I

    .line 293
    if-nez p1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/server/audio/PlayerRecord;->resetPlaybackInfo()V

    .line 309
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 298
    .local v0, "b":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    iget-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;-><init>(Lcom/android/server/audio/PlayerRecord;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 301
    .local v2, "rcdh":Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_1
    iput-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/PlayerRecord;->mRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_1
.end method

.method public resetPlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackType:I

    .line 321
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolume:I

    .line 322
    iput v1, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeMax:I

    .line 323
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackVolumeHandling:I

    .line 324
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackStream:I

    .line 325
    iget-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mPlaybackState:Lcom/android/server/audio/PlayerRecord$RccPlaybackState;

    invoke-virtual {v0}, Lcom/android/server/audio/PlayerRecord$RccPlaybackState;->reset()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/PlayerRecord;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 327
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .locals 4

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    # getter for: Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->access$000(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    # getter for: Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;->access$000(Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/PlayerRecord;->mRcClientDeathHandler:Lcom/android/server/audio/PlayerRecord$RcClientDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Error in unlinkToRcClientDeath()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

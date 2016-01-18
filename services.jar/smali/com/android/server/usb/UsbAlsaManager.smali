.class public Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;,
        Lcom/android/server/usb/UsbAlsaManager$AudioDevice;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlsaDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlsaObserver:Landroid/os/FileObserver;

.field private final mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbAlsaManager$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    .line 118
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    const-string v1, "/dev/snd/"

    const/16 v2, 0x300

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    .line 133
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileRemoved(Ljava/lang/String;)V

    return-void
.end method

.method private alsaFileAdded(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v7, 0x0

    .line 192
    .local v7, "type":I
    const/4 v2, -0x1

    .local v2, "card":I
    const/4 v4, -0x1

    .line 194
    .local v4, "device":I
    const-string v8, "pcmC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 195
    const-string v8, "p"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 196
    const/4 v7, 0x1

    .line 204
    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    .line 206
    const/16 v8, 0x43

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 207
    .local v1, "c_index":I
    const/16 v8, 0x44

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 208
    .local v3, "d_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 209
    .local v6, "end":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 211
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 213
    :cond_2
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 219
    iget-object v9, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v9

    .line 220
    :try_start_1
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 221
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    invoke-direct {v0, p0, v7, v2, v4}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .line 222
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding ALSA device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 226
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v1    # "c_index":I
    .end local v3    # "d_index":I
    .end local v6    # "end":I
    :cond_4
    :goto_1
    return-void

    .line 197
    :cond_5
    const-string v8, "c"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    const/4 v7, 0x2

    goto :goto_0

    .line 200
    :cond_6
    const-string v8, "midiC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    const/4 v7, 0x3

    goto :goto_0

    .line 215
    :catch_0
    move-exception v5

    .line 216
    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse ALSA file name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 226
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "c_index":I
    .restart local v3    # "d_index":I
    .restart local v6    # "end":I
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8
.end method

.method private alsaFileRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .line 233
    .local v0, "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v0, :cond_0

    .line 234
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALSA device removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    monitor-exit v2

    .line 237
    return-void

    .line 236
    .end local v0    # "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendDeviceNotification(Lcom/android/server/usb/UsbAlsaManager$AudioDevice;Z)V
    .locals 3
    .param p1, "audioDevice"    # Lcom/android/server/usb/UsbAlsaManager$AudioDevice;
    .param p2, "enabled"    # Z

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    const-string v2, "state"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "card"

    iget v2, p1, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mCard:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v1, "device"

    iget v2, p1, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mDevice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v1, "hasPlayback"

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mHasPlayback:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    const-string v1, "hasCapture"

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mHasCapture:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    const-string v1, "hasMIDI"

    iget-boolean v2, p1, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mHasMIDI:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 161
    return-void

    .line 154
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .locals 18
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "type"    # I

    .prologue
    .line 164
    new-instance v6, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .line 167
    .local v6, "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    const/16 v5, 0x9c4

    .line 169
    .local v5, "kWaitTime":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v12

    .line 170
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x9c4

    add-long v8, v14, v16

    .line 172
    .local v8, "timeout":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    monitor-exit v12

    .line 187
    .end local v6    # "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :goto_0
    return-object v6

    .line 175
    .restart local v6    # "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    sub-long v10, v8, v14

    .line 176
    .local v10, "waitTime":J
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_2

    .line 178
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gtz v7, :cond_0

    .line 184
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "waitForAlsaDevice failed for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v6, 0x0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string v13, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "timeout":J
    .end local v10    # "waitTime":J
    :catchall_0
    move-exception v7

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7
.end method


# virtual methods
.method deviceAdded(Landroid/hardware/usb/UsbDevice;)V
    .locals 17
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 245
    const/4 v13, 0x0

    .line 248
    .local v13, "isAudioDevice":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v12

    .line 249
    .local v12, "interfaceCount":I
    const/4 v15, 0x0

    .local v15, "ntrfaceIndex":I
    :goto_0
    if-nez v13, :cond_1

    if-ge v15, v12, :cond_1

    .line 251
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v14

    .line 252
    .local v14, "ntrface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v14}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_0

    .line 253
    const/4 v13, 0x1

    .line 250
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 256
    .end local v14    # "ntrface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-nez v13, :cond_3

    .line 310
    :cond_2
    :goto_1
    return-void

    .line 264
    :cond_3
    new-instance v9, Landroid/alsa/AlsaCardsParser;

    invoke-direct {v9}, Landroid/alsa/AlsaCardsParser;-><init>()V

    .line 265
    .local v9, "cardsParser":Landroid/alsa/AlsaCardsParser;
    invoke-virtual {v9}, Landroid/alsa/AlsaCardsParser;->scan()V

    .line 269
    new-instance v10, Landroid/alsa/AlsaDevicesParser;

    invoke-direct {v10}, Landroid/alsa/AlsaDevicesParser;-><init>()V

    .line 270
    .local v10, "devicesParser":Landroid/alsa/AlsaDevicesParser;
    invoke-virtual {v10}, Landroid/alsa/AlsaDevicesParser;->scan()V

    .line 275
    invoke-virtual {v9}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 276
    .local v3, "card":I
    const/4 v4, 0x0

    .line 278
    .local v4, "device":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual {v9}, Landroid/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 279
    invoke-virtual {v9, v11}, Landroid/alsa/AlsaCardsParser;->getCardRecordAt(I)Landroid/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v2

    iget-object v8, v2, Landroid/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    .line 280
    .local v8, "cardName":Ljava/lang/String;
    const-string v2, "USB-Audio"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    move v3, v11

    .line 278
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 284
    .end local v8    # "cardName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v10, v3}, Landroid/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    move-result v5

    .line 285
    .local v5, "hasPlayback":Z
    invoke-virtual {v10, v3}, Landroid/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    move-result v6

    .line 286
    .local v6, "hasCapture":Z
    invoke-virtual {v10, v3}, Landroid/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    move-result v7

    .line 289
    .local v7, "hasMidi":Z
    if-eqz v5, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 295
    :cond_6
    if-eqz v6, :cond_7

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 307
    :cond_7
    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;IIZZZ)V

    .line 308
    .local v1, "audioDevice":Lcom/android/server/usb/UsbAlsaManager$AudioDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager;->sendDeviceNotification(Lcom/android/server/usb/UsbAlsaManager$AudioDevice;Z)V

    goto :goto_1
.end method

.method deviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 317
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;

    .line 318
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAlsaManager$AudioDevice;
    if-eqz v0, :cond_1

    .line 319
    iget-boolean v1, v0, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mHasPlayback:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/usb/UsbAlsaManager$AudioDevice;->mHasPlayback:Z

    if-eqz v1, :cond_1

    .line 320
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->sendDeviceNotification(Lcom/android/server/usb/UsbAlsaManager$AudioDevice;Z)V

    .line 323
    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 326
    const-string v2, "  USB AudioDevices:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 328
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 140
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/snd/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 141
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 142
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

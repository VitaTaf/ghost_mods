.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;
    }
.end annotation


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x80

.field static final DEFAULT_LLCP_RWSIZE:I = 0x1

.field static final DRIVER_NAME:Ljava/lang/String; = "nxp"

.field private static final EE_WIPE_APDUS:[[B

.field private static final FIRMWARE_MODTIME_DEFAULT:J = -0x1L

.field private static final HCE_APPLET_NOT_SELECTED:I = 0x3

.field private static final HCE_APPLET_SELECTED:I = 0x2

.field private static final HCE_APPLET_SELECTING:I = 0x1

.field public static final INTERNAL_TARGET_DESELECTED_ACTION:Ljava/lang/String; = "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

.field private static final NFC_CONTROLLER_FIRMWARE_FILE_NAME:Ljava/lang/String; = "/system/lib/libpn544_fw.so"

.field static final PREF:Ljava/lang/String; = "NxpDeviceHost"

.field private static final PREF_FIRMWARE_MODTIME:Ljava/lang/String; = "firmware_modtime"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"

.field private static final presentCheckCmd:[B


# instance fields
.field private mAppletSelectStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private mNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x5

    .line 76
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->presentCheckCmd:[B

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    .line 92
    const-string v0, "nfc_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    return-void

    .line 76
    :array_0
    .array-data 1
        0x0t
        -0x50t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 79
    nop

    :array_1
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x20t
        0x10t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x80t
        -0x1et
        0x1t
        0x3t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x30t
        0x30t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x80t
        -0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 106
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 107
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 108
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/dhimpl/NativeNfcManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doReceiveData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;
    .param p1, "x1"    # [B

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->notifyHostEmuData([B)V

    return-void
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDownload()Z
.end method

.method private native doDump()Ljava/lang/String;
.end method

.method private native doEnableDiscovery(IZZZ)V
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doReceiveData()[B
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSendRawFrame([B)Z
.end method

.method private native doSetFilterTag(I)V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetScreenState(Z)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private notifyConnectivityListeners()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onConnectivityEvent()V

    .line 523
    return-void
.end method

.method private notifyHostEmuActivated()V
    .locals 2

    .prologue
    .line 559
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 560
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated()V

    .line 561
    return-void
.end method

.method private notifyHostEmuData([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 564
    sget-object v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->presentCheckCmd:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    if-eq v1, v3, :cond_0

    .line 565
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 566
    .local v0, "errorRsp":[B
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->sendRawFrame([B)Z

    .line 573
    .end local v0    # "errorRsp":[B
    :goto_0
    return-void

    .line 568
    :cond_0
    array-length v1, p1

    if-le v1, v3, :cond_1

    aget-byte v1, p1, v4

    const/16 v2, 0xa4

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 569
    iput v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData([B)V

    goto :goto_0

    .line 565
    nop

    :array_0
    .array-data 1
        0x6dt
        0x0t
    .end array-data
.end method

.method private notifyHostEmuDeactivated()V
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 577
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated()V

    .line 578
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 529
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 536
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 501
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 540
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 544
    return-void
.end method

.method private notifySeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeApduReceived([B)V

    .line 548
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeEmvCardRemoval()V

    .line 552
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeMifareAccess([B)V

    .line 556
    return-void
.end method

.method private notifyTargetDeselected()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDeselected()V

    .line 508
    return-void
.end method

.method private notifyTransactionListeners([B[B)V
    .locals 2
    .param p1, "aid"    # [B
    .param p2, "data"    # [B

    .prologue
    .line 514
    const-string v0, "NativeNfcManager"

    const-string v1, "NativeNfcManager-notifyTransactionListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationAidSelected([B[B)V

    .line 516
    return-void
.end method


# virtual methods
.method public SetFilterTag(I)Z
    .locals 1
    .param p1, "Enable"    # I

    .prologue
    .line 458
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetFilterTag(I)V

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public SetScreenState(Z)Z
    .locals 1
    .param p1, "Enable"    # Z

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetScreenState(Z)V

    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .prologue
    const/4 v0, 0x1

    .line 388
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkFirmware()V
    .locals 12

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "nbRetry":I
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v8, "/system/lib/libpn544_fw.so"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .local v0, "firmwareFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 138
    .local v2, "modtime":J
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v9, "NxpDeviceHost"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 139
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "firmware_modtime"

    const-wide/16 v10, -0x1

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 140
    .local v6, "prev_fw_modtime":J
    const-string v8, "NativeNfcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prev modtime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v8, "NativeNfcManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new modtime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    .line 159
    .end local v0    # "firmwareFile":Ljava/io/File;
    .end local v2    # "modtime":J
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "prev_fw_modtime":J
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v4

    .line 132
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v8, "NativeNfcManager"

    const-string v9, "path to firmware file was null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .restart local v0    # "firmwareFile":Ljava/io/File;
    .restart local v2    # "modtime":J
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "prev_fw_modtime":J
    :cond_1
    const-string v8, "NativeNfcManager"

    const-string v9, "Download Failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 147
    :cond_2
    const/4 v8, 0x5

    if-ge v1, v8, :cond_0

    .line 148
    const-string v8, "NativeNfcManager"

    const-string v9, "Perform Download"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 150
    const-string v8, "NativeNfcManager"

    const-string v9, "Download Success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "firmware_modtime"

    invoke-interface {v8, v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public native clearRouting()V
.end method

.method public commitRouting()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v1

    .line 291
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v1, :cond_0

    .line 292
    return-object v1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 297
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    packed-switch v0, :pswitch_data_0

    .line 304
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 302
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 299
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v1

    .line 315
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v1, :cond_0

    .line 316
    return-object v1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 321
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    packed-switch v0, :pswitch_data_0

    .line 328
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 326
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 323
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 5
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v1

    .line 339
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_0

    .line 340
    return-object v1

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 345
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    packed-switch v0, :pswitch_data_0

    .line 352
    :pswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 350
    :pswitch_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 347
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deinitialize()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NxpDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "se_wired"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v2

    return v2
.end method

.method public native disableDiscovery()V
.end method

.method public native disableRoutingToHost()V
.end method

.method public disableScreenOffSuspend()Z
    .locals 2

    .prologue
    .line 440
    const-string v0, "NativeNfcManager"

    const-string v1, "Snooze mode is not supported on NXP NFCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort()V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doConfigureDesfireRoute(I)V
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doGetHWVersionInfo()I
.end method

.method public native doGetLastError()I
.end method

.method public native doGetSecureElementList()[I
.end method

.method public native doSWPSelfTest()I
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 3
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZ)V

    .line 262
    return-void
.end method

.method public native enableRoutingToHost()V
.end method

.method public enableScreenOffSuspend()Z
    .locals 2

    .prologue
    .line 433
    const-string v0, "NativeNfcManager"

    const-string v1, "Snooze mode is not supported on NXP NFCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .prologue
    .line 477
    const/16 v0, 0x80

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetHWVersionInfo()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "technology"    # I

    .prologue
    const/16 v0, 0xfd

    .line 394
    packed-switch p1, :pswitch_data_0

    .line 413
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 409
    :pswitch_2
    const v0, 0x1000a

    goto :goto_0

    .line 411
    :pswitch_3
    const/16 v0, 0xfc

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "nxp"

    return-object v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public getWipeApdus()[[B
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    return-object v0
.end method

.method public initialize()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 165
    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v10, "NxpDeviceHost"

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 166
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "se_wired"

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 170
    const-wide/16 v10, 0x2ee0

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 171
    const-string v9, "se_wired"

    const/4 v10, 0x0

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 179
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/lib/libpn544_fw.so"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .local v1, "firmwareFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 186
    .local v2, "modtime":J
    const-string v8, "firmware_modtime"

    const-wide/16 v10, -0x1

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 188
    .local v6, "prev_fw_modtime":J
    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    .line 189
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "firmware_modtime"

    invoke-interface {v8, v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 191
    :cond_1
    const/4 v8, 0x1

    .line 194
    .end local v1    # "firmwareFile":Ljava/io/File;
    .end local v2    # "modtime":J
    .end local v6    # "prev_fw_modtime":J
    :cond_2
    :goto_1
    return v8

    .line 180
    :catch_0
    move-exception v4

    .line 181
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v9, "NativeNfcManager"

    const-string v10, "path to firmware file was null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method public native initializeNativeStructure()Z
.end method

.method public resetTimeouts()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 368
    return-void
.end method

.method public native routeAid([BII)Z
.end method

.method public sendRawFrame([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x2

    .line 217
    const-string v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAppletSelectStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 219
    array-length v1, p1

    if-le v1, v4, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p1, v1

    const/16 v2, -0x70

    if-ne v1, v2, :cond_2

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_2

    .line 220
    iput v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    .line 226
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSendRawFrame([B)Z

    move-result v0

    .line 227
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 228
    new-instance v1, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$HceReceiverTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    :cond_1
    return v0

    .line 222
    .end local v0    # "result":Z
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mAppletSelectStatus:I

    goto :goto_0
.end method

.method public native setDefaultAidRoute(I)Z
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 422
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 428
    return-void
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public swpTest()I
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSWPSelfTest()I

    move-result v0

    return v0
.end method

.method public unrouteAid([B)Z
    .locals 1
    .param p1, "aid"    # [B

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

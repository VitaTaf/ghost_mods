.class public Lcom/android/nfc/dhimpl/NativeP2pDevice;
.super Ljava/lang/Object;
.source "NativeP2pDevice.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$NfcDepEndpoint;


# instance fields
.field private mGeneralBytes:[B

.field private mHandle:I

.field private mMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native doConnect()Z
.end method

.method private native doDisconnect()Z
.end method

.method private native doReceive()[B
.end method

.method private native doSend([B)Z
.end method


# virtual methods
.method public connect()Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doConnect()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doDisconnect()Z

    move-result v0

    return v0
.end method

.method public native doTransceive([B)[B
.end method

.method public getGeneralBytes()[B
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mGeneralBytes:[B

    return-object v0
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mHandle:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeP2pDevice;->mMode:I

    return v0
.end method

.method public receive()[B
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doReceive()[B

    move-result-object v0

    return-object v0
.end method

.method public send([B)Z
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doSend([B)Z

    move-result v0

    return v0
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeP2pDevice;->doTransceive([B)[B

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.super Ljava/lang/Object;
.source "NativeLlcpConnectionlessSocket.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;


# instance fields
.field private mHandle:I

.field private mLinkMiu:I

.field private mSap:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doClose()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 77
    :cond_0
    return-void
.end method

.method public native doClose()Z
.end method

.method public native doReceiveFrom(I)Lcom/android/nfc/LlcpPacket;
.end method

.method public native doSendTo(I[B)Z
.end method

.method public getHandle()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mHandle:I

    return v0
.end method

.method public getLinkMiu()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mLinkMiu:I

    return v0
.end method

.method public getSap()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mSap:I

    return v0
.end method

.method public receive()Lcom/android/nfc/LlcpPacket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->mLinkMiu:I

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doReceiveFrom(I)Lcom/android/nfc/LlcpPacket;

    move-result-object v0

    .line 62
    .local v0, "packet":Lcom/android/nfc/LlcpPacket;
    if-nez v0, :cond_0

    .line 63
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 65
    :cond_0
    return-object v0
.end method

.method public send(I[B)V
    .locals 1
    .param p1, "sap"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;->doSendTo(I[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.class public Lcom/android/nfc/LlcpException;
.super Ljava/lang/Exception;
.source "LlcpException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 37
    invoke-static {p1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

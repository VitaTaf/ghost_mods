.class public Lcom/android/nfc/NfcDiscoveryParameters$Builder;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDiscoveryParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParameters:Lcom/android/nfc/NfcDiscoveryParameters;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcDiscoveryParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/nfc/NfcDiscoveryParameters$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # getter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z
    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->access$200(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # getter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z
    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->access$100(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t enable LPTD and reader mode simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    return-object v0
.end method

.method public setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # setter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableHostRouting:Z
    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$302(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 55
    return-object p0
.end method

.method public setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # setter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z
    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$102(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 40
    return-object p0
.end method

.method public setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # setter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableReaderMode:Z
    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$202(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v1, 0x0

    # setter for: Lcom/android/nfc/NfcDiscoveryParameters;->mEnableLowPowerDiscovery:Z
    invoke-static {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$102(Lcom/android/nfc/NfcDiscoveryParameters;Z)Z

    .line 50
    :cond_0
    return-object p0
.end method

.method public setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "techMask"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    # setter for: Lcom/android/nfc/NfcDiscoveryParameters;->mTechMask:I
    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->access$002(Lcom/android/nfc/NfcDiscoveryParameters;I)I

    .line 35
    return-object p0
.end method

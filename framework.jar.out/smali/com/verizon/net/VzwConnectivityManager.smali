.class public Lcom/verizon/net/VzwConnectivityManager;
.super Ljava/lang/Object;
.source "VzwConnectivityManager.java"


# instance fields
.field private mService:Lcom/verizon/net/IVzwConnectivityManager;


# direct methods
.method public constructor <init>(Lcom/verizon/net/IVzwConnectivityManager;)V
    .locals 0
    .param p1, "service"    # Lcom/verizon/net/IVzwConnectivityManager;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/verizon/net/VzwConnectivityManager;->mService:Lcom/verizon/net/IVzwConnectivityManager;

    .line 39
    return-void
.end method


# virtual methods
.method public getAPNUsageRxBytes(Ljava/lang/String;I)J
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/verizon/net/VzwConnectivityManager;->mService:Lcom/verizon/net/IVzwConnectivityManager;

    invoke-interface {v1, p1, p2}, Lcom/verizon/net/IVzwConnectivityManager;->getAPNUsageRxBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 57
    :goto_0
    return-wide v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getAPNUsageTxBytes(Ljava/lang/String;I)J
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/verizon/net/VzwConnectivityManager;->mService:Lcom/verizon/net/IVzwConnectivityManager;

    invoke-interface {v1, p1, p2}, Lcom/verizon/net/IVzwConnectivityManager;->getAPNUsageTxBytes(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 65
    :goto_0
    return-wide v2

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getNetworkInterface(I)Ljava/lang/String;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/verizon/net/VzwConnectivityManager;->mService:Lcom/verizon/net/IVzwConnectivityManager;

    invoke-interface {v1, p1}, Lcom/verizon/net/IVzwConnectivityManager;->getNetworkInterface(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

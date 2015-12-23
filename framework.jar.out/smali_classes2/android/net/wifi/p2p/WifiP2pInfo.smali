.class public Landroid/net/wifi/p2p/WifiP2pInfo;
.super Ljava/lang/Object;
.source "WifiP2pInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public groupFormed:Z

.field public groupOwnerAddress:Ljava/net/InetAddress;

.field public isGroupOwner:Z

.field public mccMode:Z

.field public operatingChannel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    .line 76
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    .line 77
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    .line 78
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 79
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "groupFormed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " isGroupOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " operatingChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " groupOwnerAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " mccMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 87
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->operatingChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 95
    :goto_2
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pInfo;->mccMode:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0

    :cond_1
    move v0, v2

    .line 86
    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    :cond_3
    move v1, v2

    .line 95
    goto :goto_3
.end method

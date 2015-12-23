.class public Landroid/net/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkInfo$DetailedState;,
        Landroid/net/NetworkInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDetailedState:Landroid/net/NetworkInfo$DetailedState;

.field private mExtraInfo:Ljava/lang/String;

.field private mIsAvailable:Z

.field private mIsConnectedToProvisioningNetwork:Z

.field private mIsFailover:Z

.field private mIsRoaming:Z

.field private mNetworkType:I

.field private mReason:Ljava/lang/String;

.field private mState:Landroid/net/NetworkInfo$State;

.field private mSubtype:I

.field private mSubtypeName:Ljava/lang/String;

.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    .line 98
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v0, Landroid/net/NetworkInfo$1;

    invoke-direct {v0}, Landroid/net/NetworkInfo$1;-><init>()V

    sput-object v0, Landroid/net/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "subtype"    # I
    .param p3, "typeName"    # Ljava/lang/String;
    .param p4, "subtypeName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 138
    iput p2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 139
    iput-object p3, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 140
    iput-object p4, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 141
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 143
    iput-boolean v1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 144
    iput-boolean v1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 145
    iput-boolean v1, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/NetworkInfo;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    monitor-enter p1

    .line 152
    :try_start_0
    iget v0, p1, Landroid/net/NetworkInfo;->mNetworkType:I

    iput v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 153
    iget v0, p1, Landroid/net/NetworkInfo;->mSubtype:I

    iput v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 154
    iget-object v0, p1, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 157
    iget-object v0, p1, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 158
    iget-object v0, p1, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 159
    iget-object v0, p1, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 160
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsFailover:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    .line 161
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsRoaming:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 162
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsAvailable:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 163
    iget-boolean v0, p1, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    iput-boolean v0, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    .line 164
    monitor-exit p1

    .line 166
    :cond_0
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$002(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$302(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/NetworkInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    return p1
.end method

.method static synthetic access$602(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    return-object p1
.end method

.method public static fakeNetworkInfo(Landroid/net/NetworkInfo;ILjava/lang/String;)V
    .locals 0
    .param p0, "source"    # Landroid/net/NetworkInfo;
    .param p1, "type"    # I
    .param p2, "typeName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 174
    iput-object p2, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    monitor-exit p0

    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    .line 430
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Landroid/net/NetworkInfo$State;
    .locals 1

    .prologue
    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    monitor-exit p0

    return-object v0

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubtype()I
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget v0, p0, Landroid/net/NetworkInfo;->mSubtype:I

    monitor-exit p0

    return v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubtypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget v0, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    monitor-exit p0

    return v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 284
    monitor-enter p0

    .line 285
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    monitor-exit p0

    return v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnectedOrConnecting()Z
    .locals 2

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isConnectedToProvisioningNetwork()Z
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    monitor-exit p0

    return v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    monitor-exit p0

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRoaming()Z
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    iget-boolean v0, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    monitor-exit p0

    return v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "detailedState"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    .line 394
    sget-object v0, Landroid/net/NetworkInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    .line 395
    iput-object p2, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    .line 396
    iput-object p3, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 397
    monitor-exit p0

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iput-object p1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    .line 409
    monitor-exit p0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFailover(Z)V
    .locals 1
    .param p1, "isFailover"    # Z

    .prologue
    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    .line 323
    monitor-exit p0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsAvailable(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    .line 298
    monitor-exit p0

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsConnectedToProvisioningNetwork(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 357
    monitor-enter p0

    .line 358
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    .line 359
    monitor-exit p0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRoaming(Z)V
    .locals 1
    .param p1, "isRoaming"    # Z

    .prologue
    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iput-boolean p1, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    .line 343
    monitor-exit p0

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSubtype(ILjava/lang/String;)V
    .locals 1
    .param p1, "subtype"    # I
    .param p2, "subtypeName"    # Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iput p1, p0, Landroid/net/NetworkInfo;->mSubtype:I

    .line 219
    iput-object p2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    .line 220
    monitor-exit p0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iput p1, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    .line 199
    monitor-exit p0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "(unspecified)"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "(none)"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isConnectedToProvisioningNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 438
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    goto :goto_1

    .line 449
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    iget v2, p0, Landroid/net/NetworkInfo;->mNetworkType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v2, p0, Landroid/net/NetworkInfo;->mSubtype:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v2, p0, Landroid/net/NetworkInfo;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Landroid/net/NetworkInfo;->mSubtypeName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Landroid/net/NetworkInfo;->mState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Landroid/net/NetworkInfo;->mDetailedState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsFailover:Z

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsAvailable:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsRoaming:Z

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-boolean v2, p0, Landroid/net/NetworkInfo;->mIsConnectedToProvisioningNetwork:Z

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v0, p0, Landroid/net/NetworkInfo;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Landroid/net/NetworkInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    monitor-exit p0

    .line 479
    return-void

    :cond_0
    move v2, v1

    .line 472
    goto :goto_0

    :cond_1
    move v2, v1

    .line 473
    goto :goto_1

    :cond_2
    move v2, v1

    .line 474
    goto :goto_2

    :cond_3
    move v0, v1

    .line 475
    goto :goto_3

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

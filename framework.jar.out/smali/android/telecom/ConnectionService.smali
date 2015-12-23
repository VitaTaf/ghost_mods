.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 113
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 116
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 121
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 236
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 365
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 420
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    const-string v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 622
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/AudioState;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/telecom/AudioState;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic access$1500(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static synthetic access$2000(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/Conference;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static synthetic access$300(Landroid/telecom/ConnectionService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic access$302(Landroid/telecom/ConnectionService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic access$400(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/telecom/ConnectionRequest;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic access$500(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/telecom/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 4
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1091
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    const-string v1, "Re-adding an existing conference: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1093
    :cond_1
    if-eqz p1, :cond_0

    .line 1094
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1077
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1078
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1068
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    .local v0, "id":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1070
    return-object v0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 630
    const-string v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 632
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 625
    const-string v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    const-string v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 627
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 694
    const-string v4, "conference %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 698
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 699
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 700
    const-string v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 701
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 702
    const-string v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 738
    :goto_0
    return-void

    .line 709
    :cond_0
    const-string v4, "conference"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v2

    .line 710
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 711
    const-string v4, "addConnection"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 712
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 713
    const-string v4, "Connection1 or Conference1 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 718
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 720
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 723
    :cond_2
    const-string v4, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 730
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-eq v1, v4, :cond_4

    .line 732
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 735
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 24
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    .line 571
    const-string v3, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    if-eqz p5, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v21

    .line 578
    .local v21, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string v3, "createConnection, connection: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    if-nez v21, :cond_0

    .line 580
    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v21

    .line 584
    :cond_0
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 588
    :cond_1
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v20

    .line 589
    .local v20, "address":Landroid/net/Uri;
    if-nez v20, :cond_4

    const-string/jumbo v22, "null"

    .line 590
    .local v22, "number":Ljava/lang/String;
    :goto_1
    const-string v3, "createConnection, number: %s, state: %s, capabilities: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v22}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    const-string v3, "createConnection, calling handleCreateConnectionSuccessful %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v23, v0

    new-instance v3, Landroid/telecom/ParcelableConnection;

    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getState()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v8

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v10

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getVideoState()I

    move-result v12

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getVideoStateHistory()I

    move-result v13

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v17

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getUserData()Landroid/os/Bundle;

    move-result-object v19

    invoke-direct/range {v3 .. v19}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IIZZLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 617
    return-void

    .line 575
    .end local v20    # "address":Landroid/net/Uri;
    .end local v21    # "connection":Landroid/telecom/Connection;
    .end local v22    # "number":Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v21

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v21

    goto/16 :goto_0

    .line 589
    .restart local v20    # "address":Landroid/net/Uri;
    .restart local v21    # "connection":Landroid/telecom/Connection;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1

    .line 596
    .restart local v22    # "number":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v11

    goto :goto_2
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1141
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1142
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1145
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1146
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/IConferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1157
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/IConferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/IConferenceable;

    .line 1160
    .local v0, "c":Landroid/telecom/IConferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    if-eqz v5, :cond_1

    move-object v2, v0

    .line 1161
    check-cast v2, Landroid/telecom/Connection;

    .line 1162
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1163
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1165
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 1166
    check-cast v1, Landroid/telecom/Conference;

    .line 1167
    .local v1, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1168
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1172
    .end local v0    # "c":Landroid/telecom/IConferenceable;
    .end local v1    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1173
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 640
    const-string v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 641
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    const-string v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_0
.end method

.method private endAllConnections()V
    .locals 4

    .prologue
    .line 1185
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 1187
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1188
    invoke-virtual {v1}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 1191
    .end local v1    # "connection":Landroid/telecom/Connection;
    :cond_1
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1192
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1

    .line 1194
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_2
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1135
    :goto_0
    return-object v0

    .line 1134
    :cond_0
    const-string v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    goto :goto_0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1116
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1120
    :goto_0
    return-object v0

    .line 1119
    :cond_0
    const-string v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 1178
    new-instance v0, Landroid/telecom/ConnectionService$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 1180
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    .line 1124
    const-class v1, Landroid/telecom/ConnectionService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_0

    .line 1125
    new-instance v0, Landroid/telecom/ConnectionService$6;

    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 1127
    :cond_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 649
    const-string v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    const-string v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    goto :goto_0
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 756
    const-string/jumbo v1, "mergeConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 757
    const-string/jumbo v1, "mergeConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 758
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 761
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    .prologue
    .line 1054
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 1055
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1056
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1058
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1059
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    .prologue
    .line 777
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    goto :goto_0
.end method

.method private onAudioStateChanged(Ljava/lang/String;Landroid/telecom/AudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 667
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string/jumbo v0, "onAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setAudioState(Landroid/telecom/AudioState;)V

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    const-string/jumbo v0, "onAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setAudioState(Landroid/telecom/AudioState;)V

    goto :goto_0
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 772
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 774
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 676
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 635
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 637
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1105
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1108
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1109
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1113
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 741
    const-string/jumbo v2, "splitFromConference(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    const-string/jumbo v2, "splitFromConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 744
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 745
    const-string v2, "Connection missing in conference request %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 750
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 685
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    goto :goto_0
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 764
    const-string/jumbo v1, "swapConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 766
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 769
    :cond_0
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 658
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    goto :goto_0
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 11
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 876
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v10

    .line 877
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 878
    new-instance v5, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 879
    .local v5, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 880
    .local v0, "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 881
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 884
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_1
    new-instance v1, Landroid/telecom/ParcelableConference;

    invoke-virtual {p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telecom/Conference;->getState()I

    move-result v3

    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;J)V

    .line 890
    .local v1, "parcelableConference":Landroid/telecom/ParcelableConference;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v10, v1}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 893
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 894
    .restart local v0    # "connection":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 895
    .local v8, "connectionId":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 896
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v2, v8, v10}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 900
    .end local v0    # "connection":Landroid/telecom/Connection;
    .end local v1    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v5    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "connectionId":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 18
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v17

    .line 913
    .local v17, "id":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 914
    new-instance v16, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 916
    .local v16, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v16}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;)V

    .line 932
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 934
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v16    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 916
    .restart local v16    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v10

    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1045
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 1046
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 1051
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 864
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 865
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1040
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 828
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 847
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 943
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 550
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 1016
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 959
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 988
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1005
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1028
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1034
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 557
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1082
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1083
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1084
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1085
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.class public Landroid/net/NetworkFactory;
.super Landroid/os/Handler;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactory$NetworkRequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x83000

.field public static final CMD_CANCEL_REQUEST:I = 0x83001

.field public static final CMD_REQUEST_NETWORK:I = 0x83000

.field private static final CMD_SET_FILTER:I = 0x83003

.field private static final CMD_SET_SCORE:I = 0x83002

.field private static final DBG:Z = true

.field private static final VDBG:Z


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field private final mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkFactory$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "filter"    # Landroid/net/NetworkCapabilities;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;Z)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;
    .param p2, "bypassScoreCheck"    # Z

    .prologue
    const/4 v2, 0x1

    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "evalRequest"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-nez v0, :cond_3

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    iput-boolean v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-ne v0, v2, :cond_6

    iget v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    if-gt v0, v1, :cond_4

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "  releaseNetworkFor"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto :goto_0

    :cond_6
    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "  done"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private evalRequests()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    :cond_0
    return-void
.end method

.method private handleAddRequest(Landroid/net/NetworkRequest;II)V
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I
    .param p3, "transport"    # I

    .prologue
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .end local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    .restart local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget-object v2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    sget-boolean v1, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  my score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_0
    iget v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    iget-object v3, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v1, v2, p3, v3}, Landroid/net/NetworkFactory;->bypassScoreCheck(IIILandroid/net/NetworkRequest;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;Z)V

    return-void

    :cond_1
    sget-boolean v1, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for exisiting request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_2
    iput p2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    goto :goto_0
.end method

.method private handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    :cond_0
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetFilter netCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    return-void
.end method

.method private handleSetScore(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetScore old score:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new score:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    return-void
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public addNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    const v0, 0x83000

    new-instance v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected bypassScoreCheck(IIILandroid/net/NetworkRequest;)Z
    .locals 1
    .param p1, "newScore"    # I
    .param p2, "myScore"    # I
    .param p3, "transport"    # I
    .param p4, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Landroid/net/NetworkFactory;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetScore(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x83000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needNetworkFor request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    :cond_1
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const-string v0, "Registering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    sget-boolean v0, Landroid/net/NetworkFactory;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseNetworkFor request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/NetworkFactory;->mRefCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    :cond_1
    return-void
.end method

.method public removeNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const v0, 0x83001

    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    const v0, 0x83003

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setScoreFilter(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    const v0, 0x83002

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/NetworkFactory;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected startNetwork()V
    .locals 0

    .prologue
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    .prologue
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ScoreFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister()V
    .locals 2

    .prologue
    const-string v0, "Unregistering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

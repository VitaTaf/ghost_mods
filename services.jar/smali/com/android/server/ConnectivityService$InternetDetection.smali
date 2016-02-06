.class Lcom/android/server/ConnectivityService$InternetDetection;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternetDetection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;
    }
.end annotation


# instance fields
.field mExternalInternetDetectThread:[Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

.field private mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;I)V
    .locals 1
    .param p2, "totalNetworkNumber"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mRandom:Ljava/util/Random;

    monitor-enter p0

    :try_start_0
    new-array v0, p2, [Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    iput-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mExternalInternetDetectThread:[Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService$InternetDetection;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$InternetDetection;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$InternetDetection;->detect(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized detect(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "targetServer"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternetDetection.detect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),nai="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .local v0, "networkType":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mExternalInternetDetectThread:[Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const-string v1, "A detecting ongoing, ignore this detect request"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    :try_start_1
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor;->getServer()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mExternalInternetDetectThread:[Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    new-instance v2, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InternetDetectThread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;-><init>(Lcom/android/server/ConnectivityService$InternetDetection;Ljava/lang/String;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mExternalInternetDetectThread:[Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "networkType":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method declared-synchronized resetInfo(I)V
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mExternalInternetDetectThread:[Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sendInternetDetectRet(ILcom/android/server/ConnectivityService$DetectionResult;)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "result"    # Lcom/android/server/ConnectivityService$DetectionResult;

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendInternetDetectRet:type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.conn.INTERNET_DETECTION_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "retIntent":Landroid/content/Intent;
    const-string v3, "networkType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "detectResult"

    iget v4, p2, Lcom/android/server/ConnectivityService$DetectionResult;->result:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "redirectUrl"

    iget-object v4, p2, Lcom/android/server/ConnectivityService$DetectionResult;->location:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .local v0, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$InternetDetection;->resetInfo(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "ident":J
    .end local v2    # "retIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.class Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;
.super Ljava/lang/Thread;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$InternetDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternetDetectThread"
.end annotation


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710


# instance fields
.field private httpResponseCode:I

.field private location:Ljava/lang/String;

.field final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field final mTraget:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/ConnectivityService$InternetDetection;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$InternetDetection;Ljava/lang/String;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)V
    .locals 1
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "targetServer"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x257

    iput v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->httpResponseCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->location:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mTraget:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-void
.end method

.method private isCaptivePortal()I
    .locals 13

    .prologue
    const/4 v9, 0x0

    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v3, 0x257

    .local v3, "httpResponseCode":I
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v10, "http"

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mTraget:Ljava/lang/String;

    const-string v12, "/generate_204"

    invoke-direct {v8, v10, v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v8, "url":Ljava/net/URL;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v11, v11, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v10, v8}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "requestTimestamp":J
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, "responseTimestamp":J
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isCaptivePortal: ret="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " headers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->extractLocationFromHeaderFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->location:Ljava/lang/String;

    const/16 v10, 0xc8

    if-ne v3, v10, :cond_0

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Empty 200 response interpreted as 204 response."

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xcc

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v4    # "requestTimestamp":J
    .end local v6    # "responseTimestamp":J
    .end local v8    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return v3

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Probably not a portal: exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v10, 0x257

    if-ne v3, v10, :cond_2

    :cond_2
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v10
.end method


# virtual methods
.method extractLocationFromHeaderFields(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "location"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternetDetectThread:server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mTraget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->isCaptivePortal()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->httpResponseCode:I

    new-instance v0, Lcom/android/server/ConnectivityService$DetectionResult;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$DetectionResult;-><init>(Lcom/android/server/ConnectivityService;)V

    .local v0, "ret":Lcom/android/server/ConnectivityService$DetectionResult;
    iget v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->httpResponseCode:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/ConnectivityService$DetectionResult;->result:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->this$1:Lcom/android/server/ConnectivityService$InternetDetection;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ConnectivityService$InternetDetection;->sendInternetDetectRet(ILcom/android/server/ConnectivityService$DetectionResult;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->httpResponseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->httpResponseCode:I

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/ConnectivityService$DetectionResult;->result:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/ConnectivityService$DetectionResult;->location:Ljava/lang/String;

    goto :goto_0
.end method

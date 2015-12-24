.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "count":I
    const-string v7, "XTRA_SERVER_1"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "server1":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_2"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "server2":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_3"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 68
    :cond_0
    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 69
    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 72
    :cond_2
    const-string v7, "XTRA_USER_AGENT"

    invoke-virtual {p2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 74
    const-string v7, "Android"

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    .line 79
    :goto_0
    if-nez v1, :cond_4

    .line 80
    const-string v7, "GpsXtraDownloader"

    const-string v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 94
    :goto_1
    return-void

    .line 76
    :cond_3
    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mUserAgent:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_4
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 85
    const/4 v1, 0x0

    .line 86
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v7, v1

    .line 87
    :goto_2
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 88
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_5
    if-eqz v6, :cond_6

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 91
    :goto_3
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 92
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_1

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    :cond_7
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_2
.end method

.method private static loadUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "currentAgent"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v3, "persist.sprint.lbs.useragent"

    invoke-static {v3, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "userAgent":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    .end local p0    # "currentAgent":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 201
    .restart local p0    # "currentAgent":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "from":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "date":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isProxySet"    # Z
    .param p3, "proxyHost"    # Ljava/lang/String;
    .param p4, "proxyPort"    # I

    .prologue
    .line 125
    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "GpsXtraDownloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Downloading XTRA data from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    const/4 v3, 0x0

    .line 130
    .local v3, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v11, "Android"

    .line 131
    .local v11, "userAgent":Ljava/lang/String;
    const-string v12, "sprint"

    const-string v13, "ro.carrier"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 132
    invoke-static {v11}, Lcom/android/server/location/GpsXtraDownloader;->loadUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    :cond_1
    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 136
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 138
    .local v8, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p2, :cond_2

    .line 139
    new-instance v7, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 140
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    invoke-static {v12, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 143
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_2
    const-string v12, "Accept"

    const-string v13, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v12, "x-wap-profile"

    const-string v13, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v8, v12, v13}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 152
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 153
    .local v10, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    const/16 v13, 0xc8

    if-eq v12, v13, :cond_5

    .line 154
    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "GpsXtraDownloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "HTTP error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 155
    :cond_3
    const/4 v2, 0x0

    .line 185
    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 189
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    .end local v11    # "userAgent":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v2

    .line 158
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    .restart local v11    # "userAgent":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 159
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 160
    .local v2, "body":[B
    if-eqz v6, :cond_7

    .line 162
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    .line 163
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v2, v12, [B

    .line 164
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    .line 177
    :try_start_5
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 185
    :cond_7
    if-eqz v3, :cond_4

    .line 186
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_0

    .line 170
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 171
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    const-string v12, "GpsXtraDownloader"

    const-string v13, "Unexpected IOException."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 176
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v6, :cond_8

    .line 177
    :try_start_7
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_8
    throw v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 182
    .end local v2    # "body":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    .end local v11    # "userAgent":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 183
    .local v5, "e":Ljava/lang/Exception;
    :try_start_8
    sget-boolean v12, Lcom/android/server/location/GpsXtraDownloader;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string v12, "GpsXtraDownloader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 185
    :cond_9
    if-eqz v3, :cond_a

    .line 186
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 189
    :cond_a
    const/4 v2, 0x0

    goto :goto_0

    .line 168
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "body":[B
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    .restart local v11    # "userAgent":Ljava/lang/String;
    :catchall_1
    move-exception v12

    .line 169
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 172
    :goto_2
    :try_start_a
    throw v12

    .line 170
    :catch_2
    move-exception v5

    .line 171
    .local v5, "e":Ljava/io/IOException;
    const-string v13, "GpsXtraDownloader"

    const-string v14, "Unexpected IOException."

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 185
    .end local v2    # "body":[B
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    .end local v11    # "userAgent":Ljava/lang/String;
    :catchall_2
    move-exception v12

    if-eqz v3, :cond_b

    .line 186
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_b
    throw v12
.end method

.method downloadXtraData()[B
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "proxyHost":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 99
    .local v1, "proxyPort":I
    if-eqz v0, :cond_0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    const/4 v4, 0x1

    .line 100
    .local v4, "useProxy":Z
    :goto_0
    const/4 v2, 0x0

    .line 101
    .local v2, "result":[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 103
    .local v3, "startIndex":I
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 104
    const/4 v5, 0x0

    .line 120
    :goto_1
    return-object v5

    .end local v2    # "result":[B
    .end local v3    # "startIndex":I
    .end local v4    # "useProxy":Z
    :cond_0
    move v4, v5

    .line 99
    goto :goto_0

    .line 108
    .restart local v2    # "result":[B
    .restart local v3    # "startIndex":I
    .restart local v4    # "useProxy":Z
    :cond_1
    if-nez v2, :cond_3

    .line 109
    iget-object v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v6, v6, v7

    invoke-virtual {p0, v6, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 112
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 113
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v7, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v7, v7

    if-ne v6, v7, :cond_2

    .line 114
    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 117
    :cond_2
    iget v6, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v6, v3, :cond_1

    :cond_3
    move-object v5, v2

    .line 120
    goto :goto_1
.end method

.class public Lcom/motorola/android/internal/util/CBSLoader;
.super Ljava/lang/Object;
.source "CBSLoader.java"


# static fields
.field private static final CBS_CONFIG:Ljava/lang/String; = "com.motorola.extensions.cbs.config"

.field private static final DEFAULT_MOTO_PKG_REFERENCE:Ljava/lang/String; = "com.motorola.motosignature.app"

.field private static final DYNAMIC_CBS:Ljava/lang/String; = "com.motorola.extensions.intents.ACTION_CBS_LOADER"

.field private static final META_CARRIER:Ljava/lang/String; = "com.motorola.extensions.cbs.carrier"

.field private static final TAG:Ljava/lang/String; = "CBSLoader"

.field private static sInitialized:Z

.field private static sLoader:Lcom/motorola/android/internal/util/CBSLoader;

.field private static sReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mActivity:Landroid/content/pm/ActivityInfo;

.field private mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/android/internal/util/CBSLoader;->sInitialized:Z

    .line 63
    sput-object v1, Lcom/motorola/android/internal/util/CBSLoader;->sLoader:Lcom/motorola/android/internal/util/CBSLoader;

    .line 65
    sput-object v1, Lcom/motorola/android/internal/util/CBSLoader;->sReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainActivity"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/motorola/android/internal/util/CBSLoader;->mConfig:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/motorola/android/internal/util/CBSLoader;->mActivity:Landroid/content/pm/ActivityInfo;

    .line 70
    return-void
.end method

.method static synthetic access$000()Lcom/motorola/android/internal/util/CBSLoader;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/motorola/android/internal/util/CBSLoader;->sLoader:Lcom/motorola/android/internal/util/CBSLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/android/internal/util/CBSLoader;)Lcom/motorola/android/internal/util/CBSLoader;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/util/CBSLoader;

    .prologue
    .line 52
    sput-object p0, Lcom/motorola/android/internal/util/CBSLoader;->sLoader:Lcom/motorola/android/internal/util/CBSLoader;

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 52
    sput-boolean p0, Lcom/motorola/android/internal/util/CBSLoader;->sInitialized:Z

    return p0
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 296
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    :cond_1
    if-eq v0, v2, :cond_2

    .line 301
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/util/CBSLoader;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 73
    const-class v11, Lcom/motorola/android/internal/util/CBSLoader;

    monitor-enter v11

    .line 74
    :try_start_0
    sget-boolean v12, Lcom/motorola/android/internal/util/CBSLoader;->sInitialized:Z

    if-eqz v12, :cond_1

    .line 75
    sget-object v10, Lcom/motorola/android/internal/util/CBSLoader;->sLoader:Lcom/motorola/android/internal/util/CBSLoader;

    if-nez v10, :cond_0

    .line 76
    const-string v10, "CBSLoader"

    const-string/jumbo v12, "sLoader == null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    sget-object v5, Lcom/motorola/android/internal/util/CBSLoader;->sLoader:Lcom/motorola/android/internal/util/CBSLoader;

    monitor-exit v11

    .line 130
    :goto_0
    return-object v5

    .line 81
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.motorola.extensions.intents.ACTION_CBS_LOADER"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 84
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/motorola/android/internal/util/CBSLoader;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 85
    const-string v12, "CBSLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "not a system/moto packages : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v11

    move-object v5, v10

    goto :goto_0

    .line 89
    :cond_2
    const/4 v12, 0x1

    sput-boolean v12, Lcom/motorola/android/internal/util/CBSLoader;->sInitialized:Z

    .line 91
    const/16 v12, 0x80

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 94
    .local v9, "targetPkgName":Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/motorola/android/internal/util/CBSLoader;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 95
    const-string v12, "CBSLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "not a system/moto packages: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "targetPkgName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 99
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "activity":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "targetPkgName":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .local v6, "metaData":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 113
    .local v8, "targetContext":Landroid/content/Context;
    const/4 v12, 0x3

    :try_start_2
    invoke-virtual {p0, v9, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 114
    new-instance v5, Lcom/motorola/android/internal/util/CBSLoader;

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v5, v8, v12}, Lcom/motorola/android/internal/util/CBSLoader;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    .line 115
    .local v5, "loader":Lcom/motorola/android/internal/util/CBSLoader;
    invoke-static {p0}, Lcom/motorola/android/internal/util/CBSLoader;->registerReceiver(Landroid/content/Context;)V

    .line 117
    sget-object v12, Lcom/motorola/android/internal/util/CBSLoader;->sReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v12, :cond_4

    .line 118
    sput-object v5, Lcom/motorola/android/internal/util/CBSLoader;->sLoader:Lcom/motorola/android/internal/util/CBSLoader;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :goto_2
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 120
    :cond_4
    const/4 v12, 0x0

    :try_start_4
    sput-boolean v12, Lcom/motorola/android/internal/util/CBSLoader;->sInitialized:Z
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 123
    .end local v5    # "loader":Lcom/motorola/android/internal/util/CBSLoader;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    const-string v12, "CBSLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fail to find application "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v12, 0x0

    sput-boolean v12, Lcom/motorola/android/internal/util/CBSLoader;->sInitialized:Z

    goto :goto_1

    .line 128
    .end local v1    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v8    # "targetContext":Landroid/content/Context;
    .end local v9    # "targetPkgName":Ljava/lang/String;
    :cond_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v5, v10

    .line 130
    goto/16 :goto_0
.end method

.method private static isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 182
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_1

    .line 195
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    .line 186
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const-string v3, "com.motorola.motosignature.app"

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    move v1, v2

    .line 195
    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static final nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "type":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    :cond_1
    return-void
.end method

.method private static registerReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v2, Lcom/motorola/android/internal/util/CBSLoader;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Lcom/motorola/android/internal/util/CBSLoader$1;

    invoke-direct {v2}, Lcom/motorola/android/internal/util/CBSLoader$1;-><init>()V

    sput-object v2, Lcom/motorola/android/internal/util/CBSLoader;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    sget-object v2, Lcom/motorola/android/internal/util/CBSLoader;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 250
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v6, p0, Lcom/motorola/android/internal/util/CBSLoader;->mConfig:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 251
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/motorola/android/internal/util/CBSLoader;->mConfig:Ljava/util/HashMap;

    .line 253
    iget-object v6, p0, Lcom/motorola/android/internal/util/CBSLoader;->mActivity:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.motorola.extensions.cbs.config"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 255
    if-eqz v2, :cond_1

    .line 257
    :try_start_0
    const-string v6, "config"

    invoke-static {v2, v6}, Lcom/motorola/android/internal/util/CBSLoader;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/motorola/android/internal/util/CBSLoader;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 261
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 262
    .local v3, "tag":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 284
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 289
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/motorola/android/internal/util/CBSLoader;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6

    .line 265
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "name":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 268
    .local v4, "text":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 269
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 272
    :cond_3
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    iget-object v6, p0, Lcom/motorola/android/internal/util/CBSLoader;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string v6, "CBSLoader"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 279
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v6, "CBSLoader"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .line 281
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "CBSLoader"

    const-string v7, "loadMmsSettings caught "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "real_args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p3, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/util/CBSLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 221
    const-string v4, "CBSLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-object v3

    .line 225
    :cond_0
    const/4 v2, 0x0

    .line 227
    .local v2, "m":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 233
    const/4 v3, 0x0

    .line 235
    .local v3, "result":Ljava/lang/Object;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_0

    .line 228
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "CBSLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "CBSLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "invoked with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "CBSLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "invoked with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "CBSLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "invoked with exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 203
    iget-object v2, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "CBSLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v2, v0, v6

    .line 208
    .local v0, "clz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/internal/util/CBSLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    aget-object v2, v0, v6

    return-object v2

    .line 209
    :catch_0
    move-exception v2

    goto :goto_0
.end method

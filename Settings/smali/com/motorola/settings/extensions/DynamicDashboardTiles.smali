.class public Lcom/motorola/settings/extensions/DynamicDashboardTiles;
.super Ljava/lang/Object;
.source "DynamicDashboardTiles.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/motorola/settings/extensions/DynamicDashboardTiles;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/settings/extensions/DynamicDashboardTiles;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrOverrideTiles(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "screenIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "targetTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 74
    :cond_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 43
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 46
    const/16 v8, 0x80

    invoke-virtual {v5, p2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 52
    .local v1, "activity":Landroid/content/pm/ResolveInfo;
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 53
    .local v4, "metaData":Landroid/os/Bundle;
    if-eqz v4, :cond_2

    const-string v8, "com.motorola.extensions.header"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 57
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 59
    .local v7, "targetPkgName":Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/motorola/extensions/internal/SystemUtils;->isSystemOrMotoApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 63
    const/4 v6, 0x0

    .line 65
    .local v6, "targetContext":Landroid/content/Context;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 66
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v6, v8, p0, p1}, Lcom/motorola/settings/extensions/DynamicDashboardTiles;->inflateTiles(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/motorola/settings/extensions/DynamicDashboardTiles;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find the application "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v8, Lcom/motorola/settings/extensions/DynamicDashboardTiles;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error inflating dynamic header from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getDefaultIntent(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 4
    .param p0, "targetActivityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "in":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method private static inflateTiles(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "targetActivityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "hostContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p3, "targetTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v2, 0x0

    .line 89
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.motorola.extensions.header"

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 91
    new-instance v0, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;

    invoke-direct {v0, p0}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "dynamicTilesHandler":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;
    invoke-static {p1}, Lcom/motorola/settings/extensions/DynamicDashboardTiles;->getDefaultIntent(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->setIntent(Landroid/content/Intent;)V

    .line 94
    new-instance v3, Lcom/motorola/extensions/internal/GenericTagParser;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/motorola/extensions/internal/GenericTagParser;-><init>(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 96
    .local v3, "xmlParser":Lcom/motorola/extensions/internal/GenericTagParser;
    const-string v4, "dynamic-header"

    invoke-virtual {v3, v4, v0}, Lcom/motorola/extensions/internal/GenericTagParser;->parse(Ljava/lang/String;Lcom/motorola/extensions/internal/DynamicAttrHandler;)Lcom/motorola/extensions/internal/DynamicAttrHandler;

    .line 97
    invoke-virtual {v0, p2, p3}, Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;->inflate(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 109
    :cond_0
    return-void

    .line 99
    .end local v0    # "dynamicTilesHandler":Lcom/motorola/settings/extensions/DynamicTilesAttrHandler;
    .end local v3    # "xmlParser":Lcom/motorola/extensions/internal/GenericTagParser;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Landroid/view/InflateException;

    const-string v5, "Error inflating DynamicHeader XML"

    invoke-direct {v4, v5, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v4

    .line 102
    :catch_1
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroid/view/InflateException;

    const-string v5, "Error inflating DynamicHeader XML"

    invoke-direct {v4, v5, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

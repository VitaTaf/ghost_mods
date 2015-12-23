.class public Lcom/motorola/android/util/SystemUpdatesXMLParser;
.super Ljava/lang/Object;
.source "SystemUpdatesXMLParser.java"


# static fields
.field private static final LOGD:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_NEWCLASS:Ljava/lang/String; = "newclass"

.field private static final TAG_NEWPACKAGE:Ljava/lang/String; = "newpackage"

.field private static final TAG_OLDCLASS:Ljava/lang/String; = "oldclass"

.field private static final TAG_OLDPACKAGE:Ljava/lang/String; = "old"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_REMOVE:Ljava/lang/String; = "remove"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG_UPDATE:Ljava/lang/String; = "updates"

.field private static final TAG_WIDGET:Ljava/lang/String; = "widget"

.field private static final TAG_WIDGETHOST:Ljava/lang/String; = "widget_host"

.field private static final UPDATE_DIR:Ljava/lang/String; = "/system/etc/updates"

.field private static final WS_NULL:Ljava/lang/String;


# instance fields
.field private mNewCls:Ljava/lang/String;

.field private mNewPkg:Ljava/lang/String;

.field private mOldCls:Ljava/lang/String;

.field private mOldPkg:Ljava/lang/String;

.field public mShortcutMappingTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mUninstallList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWidgetHostMappingTable:Ljava/util/HashMap;
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

.field public mWidgetMappingTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private xmlFileFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const-class v0, Lcom/motorola/android/util/SystemUpdatesXMLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/motorola/android/util/SystemUpdatesXMLParser$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/util/SystemUpdatesXMLParser$1;-><init>(Lcom/motorola/android/util/SystemUpdatesXMLParser;)V

    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->xmlFileFilter:Ljava/io/FileFilter;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mShortcutMappingTable:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetMappingTable:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetHostMappingTable:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mUninstallList:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method private DumpMappingTable()V
    .locals 11

    .prologue
    .line 127
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mShortcutMappingTable:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mShortcutMappingTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 128
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mShortcutMappingTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 130
    .local v4, "key":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 131
    .local v5, "newCmp":Landroid/content/ComponentName;
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "new: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Landroid/content/ComponentName;
    .end local v5    # "newCmp":Landroid/content/ComponentName;
    :cond_0
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetMappingTable:Ljava/util/HashMap;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetMappingTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 137
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetMappingTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 139
    .restart local v4    # "key":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 140
    .restart local v5    # "newCmp":Landroid/content/ComponentName;
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "oldwidget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newwidget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/content/ComponentName;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Landroid/content/ComponentName;
    .end local v5    # "newCmp":Landroid/content/ComponentName;
    :cond_1
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetHostMappingTable:Ljava/util/HashMap;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetHostMappingTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 146
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetHostMappingTable:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 148
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "newPkg":Ljava/lang/String;
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "oldwidgethost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newwidgethost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 154
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "newPkg":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mUninstallList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 155
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 157
    .local v7, "pi":Ljava/lang/String;
    sget-object v8, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uninstalling package : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 159
    .end local v7    # "pi":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private GetPackageDetails(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "TAGS"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v1, 0x1

    .line 283
    .local v1, "success":Z
    :try_start_0
    sget-object v2, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v3, "newpackage"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    .line 284
    sget-object v2, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v3, "oldclass"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldCls:Ljava/lang/String;

    .line 285
    sget-object v2, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v3, "newclass"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewCls:Ljava/lang/String;

    .line 286
    sget-boolean v2, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v2, :cond_0

    .line 287
    sget-object v2, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting Package details failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private ReadAndParseXMLUpdateFile(Ljava/io/File;)V
    .locals 11
    .param p1, "xmlFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 199
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 200
    .local v1, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 202
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 203
    .local v3, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 204
    invoke-direct {p0}, Lcom/motorola/android/util/SystemUpdatesXMLParser;->clearXppData()V

    .line 206
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 207
    sget-boolean v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v4, :cond_0

    .line 208
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const/4 v4, 0x2

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "updates"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 214
    sget-boolean v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v4, :cond_1

    .line 215
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAG = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    const/4 v4, 0x2

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "package"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v5, "old"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    .line 220
    sget-boolean v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v4, :cond_2

    .line 221
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v10, :cond_4

    .line 226
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 230
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "nexTag":Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 232
    sget-boolean v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v4, :cond_3

    .line 233
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    const-string/jumbo v4, "shortcut"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 237
    invoke-direct {p0, v3, v2}, Lcom/motorola/android/util/SystemUpdatesXMLParser;->GetPackageDetails(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 239
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 240
    const/4 v4, 0x3

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "shortcut"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mShortcutMappingTable:Ljava/util/HashMap;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldCls:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewCls:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2    # "nexTag":Ljava/lang/String;
    .end local v3    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    return-void

    .line 242
    .restart local v1    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v2    # "nexTag":Ljava/lang/String;
    .restart local v3    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_1
    const-string/jumbo v4, "widget"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 243
    invoke-direct {p0, v3, v2}, Lcom/motorola/android/util/SystemUpdatesXMLParser;->GetPackageDetails(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 245
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 246
    const/4 v4, 0x3

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "widget"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetMappingTable:Ljava/util/HashMap;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldCls:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewCls:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 249
    :cond_6
    const-string/jumbo v4, "widget_host"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 250
    const/4 v4, 0x2

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "widget_host"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v5, "newpackage"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    .line 253
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 254
    const/4 v4, 0x3

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "widget_host"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetHostMappingTable:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 257
    :cond_7
    const-string/jumbo v4, "remove"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 258
    const/4 v4, 0x2

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "remove"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 260
    const/4 v4, 0x3

    sget-object v5, Lcom/motorola/android/util/SystemUpdatesXMLParser;->WS_NULL:Ljava/lang/String;

    const-string/jumbo v6, "remove"

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mUninstallList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 264
    :cond_8
    sget-boolean v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v4, :cond_2

    .line 265
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown tag("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), ignoring @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 269
    :cond_9
    sget-boolean v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v4, :cond_2

    .line 270
    sget-object v4, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "we are @ type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private clearXppData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldPkg:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewPkg:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mOldCls:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mNewCls:Ljava/lang/String;

    .line 123
    return-void
.end method


# virtual methods
.method public ScanSystemUpdateFiles()Z
    .locals 10

    .prologue
    .line 170
    const/4 v3, 0x1

    .line 172
    .local v3, "success":Z
    new-instance v4, Ljava/io/File;

    const-string v7, "/system/etc/updates"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "updateDir":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->xmlFileFilter:Ljava/io/FileFilter;

    invoke-virtual {v4, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 176
    .local v5, "updateFiles":[Ljava/io/File;
    sget-object v7, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found total ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") files in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/system/etc/updates"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 179
    .local v6, "xmlFile":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/motorola/android/util/SystemUpdatesXMLParser;->ReadAndParseXMLUpdateFile(Ljava/io/File;)V

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "updateFiles":[Ljava/io/File;
    .end local v6    # "xmlFile":Ljava/io/File;
    :cond_0
    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mUninstallList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mShortcutMappingTable:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetMappingTable:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/motorola/android/util/SystemUpdatesXMLParser;->mWidgetHostMappingTable:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    const/4 v3, 0x0

    .line 188
    sget-boolean v7, Lcom/motorola/android/util/SystemUpdatesXMLParser;->LOGD:Z

    if-eqz v7, :cond_1

    .line 189
    sget-object v7, Lcom/motorola/android/util/SystemUpdatesXMLParser;->TAG:Ljava/lang/String;

    const-string v8, "No valid files @ (/system/etc/updates), no action needed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    return v3
.end method

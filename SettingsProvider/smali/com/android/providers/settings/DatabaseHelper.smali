.class public Lcom/android/providers/settings/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final mValidTables:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUserHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    .line 93
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "secure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "global"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bluetooth_devices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "gservices"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    const-string v1, "old_favorites"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    .line 119
    invoke-static {p2}, Lcom/android/providers/settings/DatabaseHelper;->dbNameForUser(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x76

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 120
    iput-object p1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    .line 121
    iput p2, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    .line 122
    return-void
.end method

.method private createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 138
    const-string v0, "CREATE TABLE global (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v0, "CREATE INDEX globalIndex1 ON global (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 129
    const-string v0, "CREATE TABLE secure (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "CREATE INDEX secureIndex1 ON secure (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static dbNameForUser(I)Ljava/lang/String;
    .locals 3
    .param p0, "userHandle"    # I

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const-string v1, "settings.db"

    .line 114
    :goto_0
    return-object v1

    .line 112
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "settings.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 2711
    const-string v0, "system"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 2716
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method

.method private getOldDefaultDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 2722
    const/4 v8, 0x0

    .line 2724
    .local v8, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2726
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2727
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2728
    .local v9, "val":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2731
    .end local p4    # "defaultValue":Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2733
    .end local v9    # "val":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p4

    .restart local v9    # "val":Ljava/lang/String;
    .restart local p4    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p4, v9

    .line 2728
    goto :goto_0

    .line 2731
    .end local v9    # "val":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1933
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 1934
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isValidTable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v0, Lcom/android/providers/settings/DatabaseHelper;->mValidTables:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 27
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2116
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2118
    .local v21, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2120
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f030000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 2121
    .local v15, "parser":Landroid/content/res/XmlResourceParser;
    const-string v22, "bookmarks"

    move-object/from16 v0, v22

    invoke-static {v15, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2123
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 2127
    .local v7, "depth":I
    :cond_0
    :goto_0
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v7, :cond_2

    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 2129
    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2133
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 2134
    .local v12, "name":Ljava/lang/String;
    const-string v22, "bookmark"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2194
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v20    # "type":I
    :cond_2
    :goto_1
    return-void

    .line 2138
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "type":I
    :cond_3
    const/16 v22, 0x0

    const-string v23, "package"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2139
    .local v16, "pkg":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "class"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2140
    .local v5, "cls":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "shortcut"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2141
    .local v17, "shortcutStr":Ljava/lang/String;
    const/16 v22, 0x0

    const-string v23, "category"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2143
    .local v4, "category":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 2144
    .local v18, "shortcutValue":I
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2145
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to get shortcut for: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2189
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .line 2190
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2151
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v7    # "depth":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :cond_4
    if-eqz v16, :cond_5

    if-eqz v5, :cond_5

    .line 2152
    const/4 v10, 0x0

    .line 2153
    .local v10, "info":Landroid/content/pm/ActivityInfo;
    :try_start_1
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2155
    .local v6, "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 2168
    :goto_2
    :try_start_3
    new-instance v11, Landroid/content/Intent;

    const-string v22, "android.intent.action.MAIN"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2169
    .local v11, "intent":Landroid/content/Intent;
    const-string v22, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2170
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2171
    invoke-virtual {v10, v13}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2181
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .local v19, "title":Ljava/lang/String;
    :goto_3
    const/high16 v22, 0x10000000

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2182
    const-string v22, "intent"

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    const-string v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    const-string v22, "shortcut"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2185
    const-string v22, "bookmarks"

    const-string v23, "shortcut = ?"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2187
    const-string v22, "bookmarks"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2191
    .end local v4    # "category":Ljava/lang/String;
    .end local v5    # "cls":Ljava/lang/String;
    .end local v7    # "depth":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v17    # "shortcutStr":Ljava/lang/String;
    .end local v18    # "shortcutValue":I
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "type":I
    :catch_1
    move-exception v8

    .line 2192
    .local v8, "e":Ljava/io/IOException;
    const-string v22, "SettingsProvider"

    const-string v23, "Got execption parsing bookmarks."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 2156
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "category":Ljava/lang/String;
    .restart local v5    # "cls":Ljava/lang/String;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "depth":I
    .restart local v10    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v17    # "shortcutStr":Ljava/lang/String;
    .restart local v18    # "shortcutValue":I
    .restart local v20    # "type":I
    :catch_2
    move-exception v8

    .line 2157
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v22, 0x1

    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2159
    .local v14, "packages":[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    aget-object v22, v14, v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2161
    .restart local v6    # "cn":Landroid/content/ComponentName;
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v10

    goto/16 :goto_2

    .line 2162
    :catch_3
    move-exception v9

    .line 2163
    .local v9, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2172
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "packages":[Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_6

    .line 2173
    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 2174
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string v19, ""

    .restart local v19    # "title":Ljava/lang/String;
    goto/16 :goto_3

    .line 2176
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "title":Ljava/lang/String;
    :cond_6
    const-string v22, "SettingsProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to add bookmark for shortcut "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": missing package/class or category attributes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method private loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2698
    return-void

    .line 2696
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    const/4 v2, 0x1

    .line 2365
    const-string v0, "window_animation_scale"

    const/high16 v1, 0x7f070000

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2367
    const-string v0, "transition_animation_scale"

    const v1, 0x7f070001

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2369
    return-void
.end method

.method private loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2372
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2374
    return-void
.end method

.method private loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I
    .param p4, "base"    # I

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2708
    return-void
.end method

.method private loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2492
    const/4 v3, 0x0

    .line 2494
    .local v3, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v9, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 2498
    const-string v9, "airplane_mode_on"

    const v10, 0x7f040001

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2501
    const-string v9, "theater_mode_on"

    const v10, 0x7f040002

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2504
    const-string v9, "airplane_mode_radios"

    const/high16 v10, 0x7f060000

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2507
    const-string v9, "airplane_mode_toggleable_radios"

    const v10, 0x7f060001

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2510
    const-string v9, "assisted_gps_enabled"

    const v10, 0x7f04000c

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2513
    const-string v9, "auto_time"

    const v10, 0x7f040003

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2516
    const-string v9, "auto_time_zone"

    const v10, 0x7f040004

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2519
    const-string v10, "stay_on_while_plugged_in"

    const-string v9, "1"

    const-string v11, "ro.kernel.qemu"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f040022

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_0
    move v9, v7

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v3, v10, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2524
    const-string v9, "wifi_sleep_policy"

    const v10, 0x7f050003

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2527
    const-string v9, "mode_ringer"

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2531
    const-string v9, "package_verifier_enable"

    const v10, 0x7f04000b

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2534
    const-string v9, "wifi_on"

    const v10, 0x7f04000f

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2537
    const-string v9, "wifi_networks_available_notification_on"

    const v10, 0x7f040010

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2540
    const-string v9, "bluetooth_on"

    const v10, 0x7f040008

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2544
    const-string v9, "sys_storage_full_threshold_bytes"

    const v10, 0x7f050008

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2551
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v9

    if-ne v9, v7, :cond_6

    .line 2552
    const-string v9, "ro.cdma.subscription"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2558
    .local v4, "subscription":I
    :goto_1
    const-string v9, "subscription_mode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2562
    const-string v9, "cdma_cell_broadcast_sms"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2566
    const-string v10, "data_roaming"

    const-string v9, "true"

    const-string v11, "ro.com.android.dataroaming"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v7

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {p0, v3, v10, v9}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2571
    const-string v9, "device_provisioned"

    const v10, 0x7f040018

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2574
    iget-object v9, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f05000a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2576
    .local v0, "maxBytes":I
    if-lez v0, :cond_1

    .line 2577
    const-string v9, "download_manager_max_bytes_over_mobile"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2581
    :cond_1
    iget-object v9, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f05000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2583
    .local v2, "recommendedMaxBytes":I
    if-lez v2, :cond_2

    .line 2584
    const-string v9, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v3, v9, v10}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2589
    :cond_2
    const-string v9, "mobile_data"

    const-string v10, "true"

    const-string v11, "ro.com.android.mobiledata"

    const-string v12, "true"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v3, v9, v7}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2594
    const-string v7, "netstats_enabled"

    const v8, 0x7f04000d

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2597
    const-string v7, "usb_mass_storage_enabled"

    const v8, 0x7f04000e

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2600
    const-string v7, "wifi_max_dhcp_retry_count"

    const v8, 0x7f05000e

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2603
    const-string v7, "wifi_display_on"

    const v8, 0x7f040009

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2606
    const-string v7, "lock_sound"

    const v8, 0x7f060009

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2608
    const-string v7, "unlock_sound"

    const v8, 0x7f06000a

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2610
    const-string v7, "trusted_sound"

    const v8, 0x7f06000b

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2612
    const-string v7, "power_sounds_enabled"

    const v8, 0x7f050004

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2614
    const-string v7, "low_battery_sound"

    const v8, 0x7f060004

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2616
    const-string v7, "dock_sounds_enabled"

    const v8, 0x7f050005

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2618
    const-string v7, "desk_dock_sound"

    const v8, 0x7f060005

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2620
    const-string v7, "desk_undock_sound"

    const v8, 0x7f060006

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2622
    const-string v7, "car_dock_sound"

    const v8, 0x7f060007

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2624
    const-string v7, "car_undock_sound"

    const v8, 0x7f060008

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2626
    const-string v7, "wireless_charging_started_sound"

    const v8, 0x7f06000c

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2629
    const-string v7, "dock_audio_media_enabled"

    const v8, 0x7f050007

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2632
    const-string v7, "set_install_location"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2633
    const-string v7, "default_install_location"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2637
    const-string v7, "emergency_tone"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2640
    const-string v7, "call_auto_retry"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2643
    const-string v7, "hide_carrier_network_settings"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2648
    sget v5, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 2650
    .local v5, "type":I
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 2651
    .local v6, "val":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2652
    .local v1, "phoneCount":I
    if-ne v1, v13, :cond_3

    iget-object v7, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11200e1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2654
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2656
    :cond_3
    const-string v7, "preferred_network_mode"

    invoke-direct {p0, v3, v7, v6}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2661
    const-string v7, "ro.telephony.default_cdma_sub"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2663
    const-string v7, "subscription_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2665
    const-string v7, "low_battery_sound_timeout"

    const v8, 0x7f05000f

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2668
    const-string v7, "wifi_scan_always_enabled"

    const v8, 0x7f050010

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2671
    const-string v7, "heads_up_notifications_enabled"

    const v8, 0x7f050012

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2674
    const-string v7, "device_name"

    invoke-direct {p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2676
    const-string v7, "guest_user_enabled"

    const v8, 0x7f040026

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2678
    const-string v7, "volte_vt_enabled"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2681
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2683
    :cond_4
    return-void

    .end local v0    # "maxBytes":I
    .end local v1    # "phoneCount":I
    .end local v2    # "recommendedMaxBytes":I
    .end local v4    # "subscription":I
    .end local v5    # "type":I
    .end local v6    # "val":Ljava/lang/String;
    :cond_5
    move v9, v8

    .line 2519
    goto/16 :goto_0

    .line 2555
    :cond_6
    :try_start_1
    const-string v9, "ro.cdma.subscription"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .restart local v4    # "subscription":I
    goto/16 :goto_1

    :cond_7
    move v9, v8

    .line 2566
    goto/16 :goto_2

    .restart local v0    # "maxBytes":I
    .restart local v2    # "recommendedMaxBytes":I
    :cond_8
    move v7, v8

    .line 2589
    goto/16 :goto_3

    .line 2681
    .end local v0    # "maxBytes":I
    .end local v2    # "recommendedMaxBytes":I
    .end local v4    # "subscription":I
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_9
    throw v7
.end method

.method private loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2703
    return-void
.end method

.method private loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2484
    const-string v0, "backup_enabled"

    const v1, 0x7f040011

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2487
    const-string v0, "backup_transport"

    const v1, 0x7f060003

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2489
    return-void
.end method

.method private loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2377
    const/4 v0, 0x0

    .line 2379
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v4, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2382
    const-string v4, "location_providers_allowed"

    const v5, 0x7f060002

    invoke-direct {p0, v0, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2385
    const-string v4, "ro.com.android.wifi-watchlist"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2386
    .local v1, "wifiWatchList":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2387
    const-string v4, "wifi_watchdog_watch_list"

    invoke-direct {p0, v0, v4, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2395
    :cond_0
    const-string v4, "mock_location"

    const-string v5, "1"

    const-string v6, "ro.allow.mock.location"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2398
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2400
    const-string v2, "mount_play_not_snd"

    const v4, 0x7f040013

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2403
    const-string v2, "mount_ums_autostart"

    const v4, 0x7f040014

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2406
    const-string v2, "mount_ums_prompt"

    const v4, 0x7f040015

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2409
    const-string v2, "mount_ums_notify_enabled"

    const v4, 0x7f040016

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2412
    const-string v2, "accessibility_script_injection"

    const v4, 0x7f04001b

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2415
    const-string v2, "accessibility_web_content_key_bindings"

    const v4, 0x7f06000d

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2418
    const-string v2, "long_press_timeout"

    const v4, 0x7f05000c

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2421
    const-string v2, "touch_exploration_enabled"

    const v4, 0x7f04001d

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2424
    const-string v2, "speak_password"

    const v4, 0x7f04001c

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2427
    const-string v2, "accessibility_script_injection_url"

    const v4, 0x7f06000e

    invoke-direct {p0, v0, v2, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2430
    const-string v2, "ro.lockscreen.disable.default"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2431
    const-string v2, "lockscreen.disabled"

    const-string v3, "1"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2437
    :goto_0
    const-string v2, "screensaver_enabled"

    const v3, 0x1120060

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2439
    const-string v2, "screensaver_activate_on_dock"

    const v3, 0x1120061

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2441
    const-string v2, "screensaver_activate_on_sleep"

    const v3, 0x1120062

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2443
    const-string v2, "screensaver_components"

    const v3, 0x104003c

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2445
    const-string v2, "screensaver_default_component"

    const v3, 0x104003c

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2448
    const-string v2, "accessibility_display_magnification_enabled"

    const v3, 0x7f04001e

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2451
    const-string v2, "accessibility_display_magnification_scale"

    const v3, 0x7f070002

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 2454
    const-string v2, "accessibility_display_magnification_auto_update"

    const v3, 0x7f04001f

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2458
    const-string v2, "user_setup_complete"

    const v3, 0x7f040023

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2461
    const-string v2, "immersive_mode_confirmations"

    const v3, 0x7f06000f

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2464
    const-string v2, "install_non_market_apps"

    const v3, 0x7f04000a

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2467
    const-string v2, "wake_gesture_enabled"

    const v3, 0x7f040025

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2470
    const-string v2, "lock_screen_show_notifications"

    const v3, 0x7f050011

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2473
    const-string v2, "lock_screen_allow_private_notifications"

    const v3, 0x7f040024

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2476
    const-string v2, "sleep_timeout"

    const v3, 0x7f050001

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2479
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2481
    :cond_2
    return-void

    .line 2433
    :cond_3
    :try_start_1
    const-string v2, "lockscreen.disabled"

    const v3, 0x7f040017

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 2479
    .end local v1    # "wifiWatchList":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v2
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 2686
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2687
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2688
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2689
    return-void
.end method

.method private loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2299
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2300
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecureSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2302
    iget v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v0, :cond_0

    .line 2303
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadGlobalSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2305
    :cond_0
    return-void
.end method

.method private loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "resid"    # I

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2693
    return-void
.end method

.method private loadSystemSettings(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2308
    const/4 v0, 0x0

    .line 2310
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v1, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2313
    const-string v1, "dim_screen"

    const/high16 v2, 0x7f040000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2315
    const-string v1, "screen_off_timeout"

    const/high16 v2, 0x7f050000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2319
    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2322
    const-string v1, "hearing_aid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2325
    const-string v1, "tty_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2327
    const-string v1, "screen_brightness"

    const v2, 0x7f050002

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2330
    const-string v1, "screen_brightness_mode"

    const v2, 0x7f040006

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2333
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2335
    const-string v1, "accelerometer_rotation"

    const v2, 0x7f040005

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2338
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2340
    const-string v1, "notification_light_pulse"

    const v2, 0x7f040012

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2343
    invoke-direct {p0, v0}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 2345
    const-string v1, "pointer_speed"

    const v2, 0x7f05000d

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2350
    :cond_0
    return-void

    .line 2348
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method private loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 2353
    const-string v0, "dtmf_tone"

    const v1, 0x7f040020

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2355
    const-string v0, "sound_effects_enabled"

    const v1, 0x7f040021

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2357
    const-string v0, "haptic_feedback_enabled"

    const v1, 0x7f040007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2360
    const-string v0, "lockscreen_sounds_enabled"

    const v1, 0x7f050006

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 2362
    return-void
.end method

.method private loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "deleteOld"    # Z

    .prologue
    .line 2258
    if-eqz p2, :cond_0

    .line 2259
    const-string v2, "DELETE FROM system WHERE name=\'vibrate_on\'"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2262
    :cond_0
    const/4 v0, 0x0

    .line 2264
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2268
    const/4 v1, 0x0

    .line 2269
    .local v1, "vibrate":I
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2272
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v2

    or-int/2addr v1, v2

    .line 2274
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2276
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2278
    :cond_1
    return-void

    .line 2276
    .end local v1    # "vibrate":I
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2284
    const-string v5, "vibrate_on"

    invoke-direct {p0, p1, v5, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 2286
    .local v1, "vibrateSetting":I
    and-int/lit8 v5, v1, 0x3

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 2288
    .local v2, "vibrateWhenRinging":Z
    :goto_0
    const/4 v0, 0x0

    .line 2290
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v5, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2292
    const-string v5, "vibrate_when_ringing"

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v5, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2294
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2296
    :cond_0
    return-void

    .end local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "vibrateWhenRinging":Z
    :cond_1
    move v2, v4

    .line 2286
    goto :goto_0

    .restart local v0    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v2    # "vibrateWhenRinging":Z
    :cond_2
    move v3, v4

    .line 2292
    goto :goto_1

    .line 2294
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    throw v3
.end method

.method private loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2203
    const/4 v1, 0x0

    .line 2205
    .local v1, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2208
    const-string v2, "volume_music"

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2210
    const-string v2, "volume_ring"

    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2212
    const-string v2, "volume_system"

    const/4 v3, 0x1

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2214
    const-string v2, "volume_voice"

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2218
    const-string v2, "volume_alarm"

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2220
    const-string v2, "volume_notification"

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2224
    const-string v2, "volume_bluetooth_sco"

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2234
    const/16 v0, 0xa6

    .line 2238
    .local v0, "ringerModeAffectedStreams":I
    iget-object v2, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2240
    or-int/lit8 v0, v0, 0x8

    .line 2242
    :cond_0
    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2245
    const-string v2, "mute_streams_affected"

    const/16 v3, 0x2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2254
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2255
    return-void

    .line 2251
    .end local v0    # "ringerModeAffectedStreams":I
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method

.method private movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "prefixesToMove"    # [Ljava/lang/String;

    .prologue
    .line 1977
    const/4 v3, 0x0

    .line 1978
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 1980
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1982
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE substr(name,0,?)=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1988
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1989
    .local v5, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v3, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1990
    const/4 v6, 0x2

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1991
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1993
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-long v8, v7

    invoke-virtual {v1, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1994
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1995
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1988
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1997
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2000
    if-eqz v3, :cond_1

    .line 2001
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2003
    :cond_1
    if-eqz v1, :cond_2

    .line 2004
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2007
    :cond_2
    return-void

    .line 1999
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2000
    if-eqz v3, :cond_3

    .line 2001
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2003
    :cond_3
    if-eqz v1, :cond_4

    .line 2004
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v6
.end method

.method private moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceTable"    # Ljava/lang/String;
    .param p3, "destTable"    # Ljava/lang/String;
    .param p4, "settingsToMove"    # [Ljava/lang/String;
    .param p5, "doIgnore"    # Z

    .prologue
    .line 1941
    const/4 v3, 0x0

    .line 1942
    .local v3, "insertStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v1, 0x0

    .line 1944
    .local v1, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1946
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_0

    const-string v6, " OR IGNORE "

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (name,value) SELECT name,value FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1950
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE name=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1952
    move-object v0, p4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 1953
    .local v5, "setting":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1954
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1956
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1957
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1952
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1946
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "setting":Ljava/lang/String;
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 1959
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1962
    if-eqz v3, :cond_2

    .line 1963
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1965
    :cond_2
    if-eqz v1, :cond_3

    .line 1966
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1969
    :cond_3
    return-void

    .line 1961
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1962
    if-eqz v3, :cond_4

    .line 1963
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1965
    :cond_4
    if-eqz v1, :cond_5

    .line 1966
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v6
.end method

.method private upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 2097
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2099
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 2102
    .local v0, "value":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO system(name,value) values(\'screen_brightness_mode\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2108
    return-void

    .line 2099
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2106
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 2010
    const-string v1, "system"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "value"

    aput-object v0, v2, v12

    const-string v3, "name=\'lock_pattern\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2012
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2013
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2014
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2015
    .local v10, "lockPattern":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2018
    :try_start_0
    new-instance v11, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2019
    .local v11, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 2021
    .local v9, "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v11, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    .end local v9    # "cellPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v11    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2027
    const-string v0, "system"

    const-string v1, "name=\'lock_pattern\'"

    invoke-virtual {p1, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2031
    .end local v10    # "lockPattern":Ljava/lang/String;
    :goto_1
    return-void

    .line 2029
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2022
    .restart local v10    # "lockPattern":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2035
    const-string v1, "system"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "value"

    aput-object v0, v2, v7

    const-string v3, "name=? AND value=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "screen_off_timeout"

    aput-object v0, v4, v6

    const-string v0, "-1"

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2039
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2040
    .local v9, "stmt":Landroid/database/sqlite/SQLiteStatement;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2041
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2043
    :try_start_0
    const-string v0, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 2047
    const-string v0, "screen_off_timeout"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2055
    :cond_0
    :goto_0
    return-void

    .line 2050
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v0

    .line 2053
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x0

    .line 2058
    const-string v2, "vibrate_on"

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v1

    .line 2060
    .local v1, "vibrateSetting":I
    and-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    .line 2061
    const/4 v2, 0x2

    invoke-static {v3, v3, v2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2065
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v1

    .line 2068
    const/4 v0, 0x0

    .line 2070
    .local v0, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v2, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 2072
    const-string v2, "vibrate_on"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2074
    if-eqz v0, :cond_1

    .line 2075
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2077
    :cond_1
    return-void

    .line 2074
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 2075
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2
    throw v2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 148
    const-string v1, "CREATE TABLE system (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string v1, "CREATE INDEX systemIndex1 ON system (name);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    iget v1, p0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    :cond_0
    const-string v1, "CREATE TABLE bluetooth_devices (_id INTEGER PRIMARY KEY,name TEXT,addr TEXT,channel INTEGER,type INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 170
    const-string v1, "CREATE TABLE bookmarks (_id INTEGER PRIMARY KEY,title TEXT,folder TEXT,intent TEXT,shortcut INTEGER,ordering INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v1, "CREATE INDEX bookmarksIndex1 ON bookmarks (folder);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v1, "CREATE INDEX bookmarksIndex2 ON bookmarks (shortcut);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "onlyCore":Z
    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 189
    :goto_0
    if-nez v0, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVolumeLevels(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->loadSettings(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    return-void

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 48
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 202
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading settings database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move/from16 v44, p2

    .line 214
    .local v44, "upgradeVersion":I
    const/16 v3, 0x14

    move/from16 v0, v44

    if-ne v0, v3, :cond_0

    .line 221
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateSetting(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 223
    const/16 v44, 0x15

    .line 226
    :cond_0
    const/16 v3, 0x16

    move/from16 v0, v44

    if-ge v0, v3, :cond_1

    .line 227
    const/16 v44, 0x16

    .line 229
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeLockPatternLocation(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 232
    :cond_1
    const/16 v3, 0x17

    move/from16 v0, v44

    if-ge v0, v3, :cond_2

    .line 233
    const-string v3, "UPDATE favorites SET iconResource=0 WHERE iconType=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    const/16 v44, 0x17

    .line 237
    :cond_2
    const/16 v3, 0x17

    move/from16 v0, v44

    if-ne v0, v3, :cond_3

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 240
    :try_start_0
    const-string v3, "ALTER TABLE favorites ADD spanX INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v3, "ALTER TABLE favorites ADD spanY INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v3, "UPDATE favorites SET spanX=1, spanY=1 WHERE itemType<=0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const-string v3, "UPDATE favorites SET spanX=2, spanY=2 WHERE itemType=1000 or itemType=1002"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v3, "UPDATE favorites SET spanX=4, spanY=1 WHERE itemType=1001"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 253
    const/16 v44, 0x18

    .line 256
    :cond_3
    const/16 v3, 0x18

    move/from16 v0, v44

    if-ne v0, v3, :cond_4

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 261
    :try_start_1
    const-string v3, "DELETE FROM system WHERE name=\'network_preference\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    const-string v3, "INSERT INTO system (\'name\', \'value\') values (\'network_preference\', \'1\')"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 268
    const/16 v44, 0x19

    .line 271
    :cond_4
    const/16 v3, 0x19

    move/from16 v0, v44

    if-ne v0, v3, :cond_5

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 274
    :try_start_2
    const-string v3, "ALTER TABLE favorites ADD uri TEXT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 275
    const-string v3, "ALTER TABLE favorites ADD displayMode INTEGER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    const/16 v44, 0x1a

    .line 283
    :cond_5
    const/16 v3, 0x1a

    move/from16 v0, v44

    if-ne v0, v3, :cond_6

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 287
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createSecureTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 292
    const/16 v44, 0x1b

    .line 295
    :cond_6
    const/16 v3, 0x1b

    move/from16 v0, v44

    if-ne v0, v3, :cond_7

    .line 296
    const/16 v3, 0x1f

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adb_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "android_id"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "bluetooth_on"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "data_roaming"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "device_provisioned"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "http_proxy"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "install_non_market_apps"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "location_providers_allowed"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "logging_id"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "network_preference"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "parental_control_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0xb

    const-string v4, "parental_control_last_update"

    aput-object v4, v7, v3

    const/16 v3, 0xc

    const-string v4, "parental_control_redirect_url"

    aput-object v4, v7, v3

    const/16 v3, 0xd

    const-string v4, "settings_classname"

    aput-object v4, v7, v3

    const/16 v3, 0xe

    const-string v4, "usb_mass_storage_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0xf

    const-string v4, "use_google_mail"

    aput-object v4, v7, v3

    const/16 v3, 0x10

    const-string v4, "wifi_networks_available_notification_on"

    aput-object v4, v7, v3

    const/16 v3, 0x11

    const-string v4, "wifi_networks_available_repeat_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x12

    const-string v4, "wifi_num_open_networks_kept"

    aput-object v4, v7, v3

    const/16 v3, 0x13

    const-string v4, "wifi_on"

    aput-object v4, v7, v3

    const/16 v3, 0x14

    const-string v4, "wifi_watchdog_acceptable_packet_loss_percentage"

    aput-object v4, v7, v3

    const/16 v3, 0x15

    const-string v4, "wifi_watchdog_ap_count"

    aput-object v4, v7, v3

    const/16 v3, 0x16

    const-string v4, "wifi_watchdog_background_check_delay_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x17

    const-string v4, "wifi_watchdog_background_check_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x18

    const-string v4, "wifi_watchdog_background_check_timeout_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x19

    const-string v4, "wifi_watchdog_initial_ignored_ping_count"

    aput-object v4, v7, v3

    const/16 v3, 0x1a

    const-string v4, "wifi_watchdog_max_ap_checks"

    aput-object v4, v7, v3

    const/16 v3, 0x1b

    const-string v4, "wifi_watchdog_on"

    aput-object v4, v7, v3

    const/16 v3, 0x1c

    const-string v4, "wifi_watchdog_ping_count"

    aput-object v4, v7, v3

    const/16 v3, 0x1d

    const-string v4, "wifi_watchdog_ping_delay_ms"

    aput-object v4, v7, v3

    const/16 v3, 0x1e

    const-string v4, "wifi_watchdog_ping_timeout_ms"

    aput-object v4, v7, v3

    .line 329
    .local v7, "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 330
    const/16 v44, 0x1c

    .line 333
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_7
    const/16 v3, 0x1c

    move/from16 v0, v44

    if-eq v0, v3, :cond_8

    const/16 v3, 0x1d

    move/from16 v0, v44

    if-ne v0, v3, :cond_9

    .line 340
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 342
    :try_start_4
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const/16 v36, 0x26

    .line 347
    .local v36, "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 355
    const/16 v44, 0x1e

    .line 358
    .end local v36    # "newValue":I
    :cond_9
    const/16 v3, 0x1e

    move/from16 v0, v44

    if-ne v0, v3, :cond_a

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 366
    :try_start_5
    const-string v3, "UPDATE bookmarks SET folder = \'@quicklaunch\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    const-string v3, "UPDATE bookmarks SET title = \'\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 372
    const/16 v44, 0x1f

    .line 375
    :cond_a
    const/16 v3, 0x1f

    move/from16 v0, v44

    if-ne v0, v3, :cond_c

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 381
    const/16 v40, 0x0

    .line 383
    .local v40, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_6
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 387
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 389
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    if-eqz v40, :cond_b

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 395
    :cond_b
    const/16 v44, 0x20

    .line 398
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    const/16 v3, 0x20

    move/from16 v0, v44

    if-ne v0, v3, :cond_e

    .line 401
    const-string v3, "ro.com.android.wifi-watchlist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 402
    .local v46, "wifiWatchList":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 405
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO secure(name,value) values(\'wifi_watchdog_watch_list\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 413
    :cond_d
    const/16 v44, 0x21

    .line 416
    .end local v46    # "wifiWatchList":Ljava/lang/String;
    :cond_e
    const/16 v3, 0x21

    move/from16 v0, v44

    if-ne v0, v3, :cond_f

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 420
    :try_start_8
    const-string v3, "INSERT INTO system(name,value) values(\'zoom\',\'2\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 425
    const/16 v44, 0x22

    .line 428
    :cond_f
    const/16 v3, 0x22

    move/from16 v0, v44

    if-ne v0, v3, :cond_11

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 430
    const/16 v40, 0x0

    .line 432
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_9
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadSecure35Settings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    if-eqz v40, :cond_10

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 440
    :cond_10
    const/16 v44, 0x23

    .line 446
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_11
    const/16 v3, 0x23

    move/from16 v0, v44

    if-ne v0, v3, :cond_12

    .line 447
    const/16 v44, 0x24

    .line 450
    :cond_12
    const/16 v3, 0x24

    move/from16 v0, v44

    if-ne v0, v3, :cond_13

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 455
    :try_start_a
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    const/16 v36, 0xa6

    .line 461
    .restart local v36    # "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    const/16 v44, 0x25

    .line 471
    .end local v36    # "newValue":I
    :cond_13
    const/16 v3, 0x25

    move/from16 v0, v44

    if-ne v0, v3, :cond_15

    .line 472
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 473
    const/16 v40, 0x0

    .line 475
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_b
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 477
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 479
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    if-eqz v40, :cond_14

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 484
    :cond_14
    const/16 v44, 0x26

    .line 487
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_15
    const/16 v3, 0x26

    move/from16 v0, v44

    if-ne v0, v3, :cond_16

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 490
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a3

    const-string v45, "1"

    .line 492
    .local v45, "value":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR IGNORE INTO secure(name,value) values(\'assisted_gps_enabled\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 499
    const/16 v44, 0x27

    .line 502
    .end local v45    # "value":Ljava/lang/String;
    :cond_16
    const/16 v3, 0x27

    move/from16 v0, v44

    if-ne v0, v3, :cond_17

    .line 503
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeAutoBrightness(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 504
    const/16 v44, 0x28

    .line 507
    :cond_17
    const/16 v3, 0x28

    move/from16 v0, v44

    if-ne v0, v3, :cond_19

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 512
    const/16 v40, 0x0

    .line 514
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_d
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 516
    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 518
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 520
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 524
    if-eqz v40, :cond_18

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 526
    :cond_18
    const/16 v44, 0x29

    .line 529
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_19
    const/16 v3, 0x29

    move/from16 v0, v44

    if-ne v0, v3, :cond_1b

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 534
    const/16 v40, 0x0

    .line 536
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_e
    const-string v3, "DELETE FROM system WHERE name=\'haptic_feedback_enabled\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultHapticSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 541
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    if-eqz v40, :cond_1a

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 546
    :cond_1a
    const/16 v44, 0x2a

    .line 549
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1b
    const/16 v3, 0x2a

    move/from16 v0, v44

    if-ne v0, v3, :cond_1d

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 554
    const/16 v40, 0x0

    .line 556
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_f
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 558
    const-string v3, "notification_light_pulse"

    const v4, 0x7f040012

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 563
    if-eqz v40, :cond_1c

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 565
    :cond_1c
    const/16 v44, 0x2b

    .line 568
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1d
    const/16 v3, 0x2b

    move/from16 v0, v44

    if-ne v0, v3, :cond_1f

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 573
    const/16 v40, 0x0

    .line 575
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_10
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 577
    const-string v3, "volume_bluetooth_sco"

    const/4 v4, 0x6

    invoke-static {v4}, Landroid/media/AudioService;->getDefaultStreamVolume(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 582
    if-eqz v40, :cond_1e

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 584
    :cond_1e
    const/16 v44, 0x2c

    .line 587
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_1f
    const/16 v3, 0x2c

    move/from16 v0, v44

    if-ne v0, v3, :cond_20

    .line 591
    const-string v3, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    const-string v3, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 593
    const/16 v44, 0x2d

    .line 596
    :cond_20
    const/16 v3, 0x2d

    move/from16 v0, v44

    if-ne v0, v3, :cond_21

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 602
    :try_start_11
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_play_not_snd\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_autostart\',\'0\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 606
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_prompt\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    const-string v3, "INSERT INTO secure(name,value) values(\'mount_ums_notify_enabled\',\'1\');"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 614
    const/16 v44, 0x2e

    .line 617
    :cond_21
    const/16 v3, 0x2e

    move/from16 v0, v44

    if-ne v0, v3, :cond_22

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 624
    :try_start_12
    const-string v3, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    .line 627
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 629
    const/16 v44, 0x2f

    .line 633
    :cond_22
    const/16 v3, 0x2f

    move/from16 v0, v44

    if-ne v0, v3, :cond_23

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 640
    :try_start_13
    const-string v3, "DELETE FROM system WHERE name=\'lockscreen.password_type\';"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 645
    const/16 v44, 0x30

    .line 648
    :cond_23
    const/16 v3, 0x30

    move/from16 v0, v44

    if-ne v0, v3, :cond_24

    .line 653
    const/16 v44, 0x31

    .line 656
    :cond_24
    const/16 v3, 0x31

    move/from16 v0, v44

    if-ne v0, v3, :cond_26

    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 661
    const/16 v40, 0x0

    .line 663
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_14
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadUISoundEffectsSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 669
    if-eqz v40, :cond_25

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 672
    :cond_25
    const/16 v44, 0x32

    .line 675
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_26
    const/16 v3, 0x32

    move/from16 v0, v44

    if-ne v0, v3, :cond_27

    .line 679
    const/16 v44, 0x33

    .line 682
    :cond_27
    const/16 v3, 0x33

    move/from16 v0, v44

    if-ne v0, v3, :cond_28

    .line 684
    const/16 v3, 0x9

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "lock_pattern_visible_pattern"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "lock_pattern_tactile_feedback_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "lockscreen.password_type"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "lockscreen.lockoutattemptdeadline"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "lockscreen.patterneverchosen"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "lock_pattern_autolock"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "lockscreen.lockedoutpermanently"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "lockscreen.password_salt"

    aput-object v4, v7, v3

    .line 695
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 696
    const/16 v44, 0x34

    .line 699
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_28
    const/16 v3, 0x34

    move/from16 v0, v44

    if-ne v0, v3, :cond_2a

    .line 701
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 702
    const/16 v40, 0x0

    .line 704
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_15
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 706
    const-string v3, "vibrate_in_silent"

    const v4, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 711
    if-eqz v40, :cond_29

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 714
    :cond_29
    const/16 v44, 0x35

    .line 717
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2a
    const/16 v3, 0x35

    move/from16 v0, v44

    if-ne v0, v3, :cond_2b

    .line 721
    const/16 v44, 0x36

    .line 724
    :cond_2b
    const/16 v3, 0x36

    move/from16 v0, v44

    if-ne v0, v3, :cond_2c

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 730
    :try_start_16
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeScreenTimeoutFromNever(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 731
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 736
    const/16 v44, 0x37

    .line 739
    :cond_2c
    const/16 v3, 0x37

    move/from16 v0, v44

    if-ne v0, v3, :cond_2e

    .line 741
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "set_install_location"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "default_install_location"

    aput-object v4, v7, v3

    .line 745
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "secure"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 747
    const/16 v40, 0x0

    .line 749
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_17
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 751
    const-string v3, "set_install_location"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    const-string v3, "default_install_location"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 757
    if-eqz v40, :cond_2d

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 759
    :cond_2d
    const/16 v44, 0x38

    .line 762
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_2e
    const/16 v3, 0x38

    move/from16 v0, v44

    if-ne v0, v3, :cond_30

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 767
    const/16 v40, 0x0

    .line 769
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_18
    const-string v3, "DELETE FROM system WHERE name=\'airplane_mode_toggleable_radios\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 771
    const-string v3, "INSERT OR IGNORE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 773
    const-string v3, "airplane_mode_toggleable_radios"

    const v4, 0x7f060001

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 778
    if-eqz v40, :cond_2f

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 780
    :cond_2f
    const/16 v44, 0x39

    .line 785
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_30
    const/16 v3, 0x39

    move/from16 v0, v44

    if-ne v0, v3, :cond_32

    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 792
    const/16 v40, 0x0

    .line 794
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 796
    const-string v3, "accessibility_script_injection"

    const v4, 0x7f04001b

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 798
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 799
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 801
    const-string v3, "accessibility_web_content_key_bindings"

    const v4, 0x7f06000d

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 806
    if-eqz v40, :cond_31

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 808
    :cond_31
    const/16 v44, 0x3a

    .line 811
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_32
    const/16 v3, 0x3a

    move/from16 v0, v44

    if-ne v0, v3, :cond_34

    .line 813
    const-string v3, "auto_time"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromSystem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v31

    .line 814
    .local v31, "autoTimeValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 815
    const/16 v40, 0x0

    .line 817
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1a
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 818
    const-string v3, "auto_time_zone"

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 823
    if-eqz v40, :cond_33

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 825
    :cond_33
    const/16 v44, 0x3b

    .line 828
    .end local v31    # "autoTimeValue":I
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_34
    const/16 v3, 0x3b

    move/from16 v0, v44

    if-ne v0, v3, :cond_36

    .line 830
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 831
    const/16 v40, 0x0

    .line 833
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1b
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 835
    const-string v3, "user_rotation"

    const v4, 0x7f050009

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 840
    if-eqz v40, :cond_35

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 842
    :cond_35
    const/16 v44, 0x3c

    .line 845
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_36
    const/16 v3, 0x3c

    move/from16 v0, v44

    if-ne v0, v3, :cond_37

    .line 849
    const/16 v44, 0x3d

    .line 852
    :cond_37
    const/16 v3, 0x3d

    move/from16 v0, v44

    if-ne v0, v3, :cond_38

    .line 856
    const/16 v44, 0x3e

    .line 860
    :cond_38
    const/16 v3, 0x3e

    move/from16 v0, v44

    if-ne v0, v3, :cond_39

    .line 864
    const/16 v44, 0x3f

    .line 867
    :cond_39
    const/16 v3, 0x3f

    move/from16 v0, v44

    if-ne v0, v3, :cond_3a

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 872
    :try_start_1c
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 874
    const/16 v36, 0xae

    .line 879
    .restart local v36    # "newValue":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1c

    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 886
    const/16 v44, 0x40

    .line 889
    .end local v36    # "newValue":I
    :cond_3a
    const/16 v3, 0x40

    move/from16 v0, v44

    if-ne v0, v3, :cond_3c

    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 892
    const/16 v40, 0x0

    .line 894
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1d
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 896
    const-string v3, "long_press_timeout"

    const v4, 0x7f05000c

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 898
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 899
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1d

    .line 901
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 902
    if-eqz v40, :cond_3b

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 904
    :cond_3b
    const/16 v44, 0x41

    .line 909
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3c
    const/16 v3, 0x41

    move/from16 v0, v44

    if-ne v0, v3, :cond_3e

    .line 913
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 914
    const/16 v40, 0x0

    .line 916
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1e
    const-string v3, "DELETE FROM system WHERE name=\'window_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    const-string v3, "DELETE FROM system WHERE name=\'transition_animation_scale\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 922
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/providers/settings/DatabaseHelper;->loadDefaultAnimationSettings(Landroid/database/sqlite/SQLiteStatement;)V

    .line 923
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1e

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 926
    if-eqz v40, :cond_3d

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 928
    :cond_3d
    const/16 v44, 0x42

    .line 931
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_3e
    const/16 v3, 0x42

    move/from16 v0, v44

    if-ne v0, v3, :cond_40

    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 936
    const/16 v39, 0xa6

    .line 940
    .local v39, "ringerModeAffectedStreams":I
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 942
    or-int/lit8 v39, v39, 0x8

    .line 944
    :cond_3f
    const-string v3, "DELETE FROM system WHERE name=\'mode_ringer_streams_affected\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO system (\'name\', \'value\') values (\'mode_ringer_streams_affected\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1f

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 953
    const/16 v44, 0x43

    .line 956
    .end local v39    # "ringerModeAffectedStreams":I
    :cond_40
    const/16 v3, 0x43

    move/from16 v0, v44

    if-ne v0, v3, :cond_42

    .line 958
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 959
    const/16 v40, 0x0

    .line 961
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_20
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 963
    const-string v3, "touch_exploration_enabled"

    const v4, 0x7f04001d

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 965
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 966
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_20

    .line 968
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 969
    if-eqz v40, :cond_41

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 971
    :cond_41
    const/16 v44, 0x44

    .line 974
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_42
    const/16 v3, 0x44

    move/from16 v0, v44

    if-ne v0, v3, :cond_43

    .line 976
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 978
    :try_start_21
    const-string v3, "DELETE FROM system WHERE name=\'notifications_use_ring_volume\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_21

    .line 982
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 984
    const/16 v44, 0x45

    .line 987
    :cond_43
    const/16 v3, 0x45

    move/from16 v0, v44

    if-ne v0, v3, :cond_44

    .line 989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 991
    .local v30, "airplaneRadios":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 993
    .local v41, "toggleableRadios":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 995
    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE system SET value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "airplane_mode_radios"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE system SET value=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_22

    .line 1001
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1003
    const/16 v44, 0x46

    .line 1006
    .end local v30    # "airplaneRadios":Ljava/lang/String;
    .end local v41    # "toggleableRadios":Ljava/lang/String;
    :cond_44
    const/16 v3, 0x46

    move/from16 v0, v44

    if-ne v0, v3, :cond_45

    .line 1008
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1009
    const/16 v44, 0x47

    .line 1012
    :cond_45
    const/16 v3, 0x47

    move/from16 v0, v44

    if-ne v0, v3, :cond_47

    .line 1014
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1015
    const/16 v40, 0x0

    .line 1017
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_23
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1019
    const-string v3, "speak_password"

    const v4, 0x7f04001c

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1021
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_23

    .line 1023
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1024
    if-eqz v40, :cond_46

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1026
    :cond_46
    const/16 v44, 0x48

    .line 1029
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_47
    const/16 v3, 0x48

    move/from16 v0, v44

    if-ne v0, v3, :cond_49

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1032
    const/16 v40, 0x0

    .line 1034
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_24
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1036
    const-string v3, "vibrate_in_silent"

    const v4, 0x7f04001a

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_24

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1041
    if-eqz v40, :cond_48

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1043
    :cond_48
    const/16 v44, 0x49

    .line 1046
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_49
    const/16 v3, 0x49

    move/from16 v0, v44

    if-ne v0, v3, :cond_4a

    .line 1047
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->upgradeVibrateSettingFromNone(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1048
    const/16 v44, 0x4a

    .line 1051
    :cond_4a
    const/16 v3, 0x4a

    move/from16 v0, v44

    if-ne v0, v3, :cond_4c

    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1054
    const/16 v40, 0x0

    .line 1056
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_25
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1057
    const-string v3, "accessibility_script_injection_url"

    const v4, 0x7f06000e

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1059
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_25

    .line 1061
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1062
    if-eqz v40, :cond_4b

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1064
    :cond_4b
    const/16 v44, 0x4b

    .line 1066
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_4c
    const/16 v3, 0x4b

    move/from16 v0, v44

    if-ne v0, v3, :cond_51

    .line 1067
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1068
    const/16 v40, 0x0

    .line 1069
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/16 v32, 0x0

    .line 1071
    .local v32, "c":Landroid/database/Cursor;
    :try_start_26
    const-string v9, "secure"

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v10, v3

    const-string v11, "name=\'lockscreen.disabled\'"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1075
    if-eqz v32, :cond_4d

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4e

    .line 1076
    :cond_4d
    const-string v3, "INSERT INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1078
    const-string v3, "lockscreen.disabled"

    const v4, 0x7f040017

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1081
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1083
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1084
    if-eqz v32, :cond_4f

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_4f
    if-eqz v40, :cond_50

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1087
    :cond_50
    const/16 v44, 0x4c

    .line 1092
    .end local v32    # "c":Landroid/database/Cursor;
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_51
    const/16 v3, 0x4c

    move/from16 v0, v44

    if-ne v0, v3, :cond_52

    .line 1094
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1096
    :try_start_27
    const-string v3, "DELETE FROM system WHERE name=\'vibrate_in_silent\'"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_27

    .line 1100
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1103
    const/16 v44, 0x4d

    .line 1106
    :cond_52
    const/16 v3, 0x4d

    move/from16 v0, v44

    if-ne v0, v3, :cond_53

    .line 1108
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->loadVibrateWhenRingingSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1110
    const/16 v44, 0x4e

    .line 1113
    :cond_53
    const/16 v3, 0x4e

    move/from16 v0, v44

    if-ne v0, v3, :cond_55

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1116
    const/16 v40, 0x0

    .line 1118
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_28
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1120
    const-string v3, "accessibility_script_injection_url"

    const v4, 0x7f06000e

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1122
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_28

    .line 1124
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1125
    if-eqz v40, :cond_54

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1127
    :cond_54
    const/16 v44, 0x4f

    .line 1130
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_55
    const/16 v3, 0x4f

    move/from16 v0, v44

    if-ne v0, v3, :cond_57

    .line 1147
    const-string v3, "secure"

    const-string v4, "accessibility_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b8

    const/16 v29, 0x1

    .line 1149
    .local v29, "accessibilityEnabled":Z
    :goto_1
    const-string v3, "secure"

    const-string v4, "touch_exploration_enabled"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b9

    const/16 v42, 0x1

    .line 1151
    .local v42, "touchExplorationEnabled":Z
    :goto_2
    if-eqz v29, :cond_56

    if-eqz v42, :cond_56

    .line 1152
    const-string v3, "secure"

    const-string v4, "enabled_accessibility_services"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1154
    .local v35, "enabledServices":Ljava/lang/String;
    const-string v3, "secure"

    const-string v4, "touch_exploration_granted_accessibility_services"

    const-string v5, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getStringValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1156
    .local v43, "touchExplorationGrantedServices":Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 1158
    const/16 v40, 0x0

    .line 1160
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_29
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1161
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1163
    const-string v3, "touch_exploration_granted_accessibility_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1166
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_29

    .line 1168
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1169
    if-eqz v40, :cond_56

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1173
    .end local v35    # "enabledServices":Ljava/lang/String;
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v43    # "touchExplorationGrantedServices":Ljava/lang/String;
    :cond_56
    const/16 v44, 0x50

    .line 1178
    .end local v29    # "accessibilityEnabled":Z
    .end local v42    # "touchExplorationEnabled":Z
    :cond_57
    const/16 v3, 0x50

    move/from16 v0, v44

    if-ne v0, v3, :cond_59

    .line 1180
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1181
    const/16 v40, 0x0

    .line 1183
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2a
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1185
    const-string v3, "screensaver_enabled"

    const v4, 0x1120060

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1187
    const-string v3, "screensaver_activate_on_dock"

    const v4, 0x1120061

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1189
    const-string v3, "screensaver_activate_on_sleep"

    const v4, 0x1120062

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1191
    const-string v3, "screensaver_components"

    const v4, 0x104003c

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1193
    const-string v3, "screensaver_default_component"

    const v4, 0x104003c

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1196
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2a

    .line 1198
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1199
    if-eqz v40, :cond_58

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1201
    :cond_58
    const/16 v44, 0x51

    .line 1204
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_59
    const/16 v3, 0x51

    move/from16 v0, v44

    if-ne v0, v3, :cond_5b

    .line 1206
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1207
    const/16 v40, 0x0

    .line 1209
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2b
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1211
    const-string v3, "package_verifier_enable"

    const v4, 0x7f04000b

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1213
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2b

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1216
    if-eqz v40, :cond_5a

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1218
    :cond_5a
    const/16 v44, 0x52

    .line 1221
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5b
    const/16 v3, 0x52

    move/from16 v0, v44

    if-ne v0, v3, :cond_5d

    .line 1223
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_5c

    .line 1225
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1226
    const/16 v40, 0x0

    .line 1230
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->createGlobalTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1231
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1232
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1233
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1234
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1236
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2c

    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1239
    if-eqz v40, :cond_5c

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1242
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5c
    const/16 v44, 0x53

    .line 1245
    :cond_5d
    const/16 v3, 0x53

    move/from16 v0, v44

    if-ne v0, v3, :cond_5f

    .line 1249
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1250
    const/16 v40, 0x0

    .line 1252
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_2d
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1253
    const-string v3, "accessibility_display_magnification_enabled"

    const v4, 0x7f04001e

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1256
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1257
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1258
    const-string v3, "accessibility_display_magnification_scale"

    const v4, 0x7f070002

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->loadFractionSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;II)V

    .line 1260
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1261
    const-string v3, "INSERT INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1262
    const-string v3, "accessibility_display_magnification_auto_update"

    const v4, 0x7f04001f

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1266
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2d

    .line 1268
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1269
    if-eqz v40, :cond_5e

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1271
    :cond_5e
    const/16 v44, 0x54

    .line 1274
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_5f
    const/16 v3, 0x54

    move/from16 v0, v44

    if-ne v0, v3, :cond_61

    .line 1275
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_60

    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1277
    const/16 v40, 0x0

    .line 1281
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x6

    :try_start_2e
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "adb_enabled"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "bluetooth_on"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "data_roaming"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "device_provisioned"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "install_non_market_apps"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "usb_mass_storage_enabled"

    aput-object v4, v7, v3

    .line 1289
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1290
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    .line 1292
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1293
    if-eqz v40, :cond_60

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1296
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_60
    const/16 v44, 0x55

    .line 1299
    :cond_61
    const/16 v3, 0x55

    move/from16 v0, v44

    if-ne v0, v3, :cond_63

    .line 1300
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_62

    .line 1301
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1305
    const/4 v3, 0x1

    :try_start_2f
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stay_on_while_plugged_in"

    aput-object v4, v7, v3

    .line 1306
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1308
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2f

    .line 1310
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1313
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_62
    const/16 v44, 0x56

    .line 1316
    :cond_63
    const/16 v3, 0x56

    move/from16 v0, v44

    if-ne v0, v3, :cond_65

    .line 1317
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_64

    .line 1318
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1320
    const/4 v3, 0x3

    :try_start_30
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_verifier_enable"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "verifier_timeout"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "verifier_default_response"

    aput-object v4, v7, v3

    .line 1325
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1327
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_30

    .line 1329
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1332
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_64
    const/16 v44, 0x57

    .line 1335
    :cond_65
    const/16 v3, 0x57

    move/from16 v0, v44

    if-ne v0, v3, :cond_67

    .line 1336
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_66

    .line 1337
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1339
    const/4 v3, 0x3

    :try_start_31
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_stall_alarm_non_aggressive_delay_in_ms"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "data_stall_alarm_aggressive_delay_in_ms"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "gprs_register_check_period_ms"

    aput-object v4, v7, v3

    .line 1344
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1346
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_31

    .line 1348
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1351
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_66
    const/16 v44, 0x58

    .line 1354
    :cond_67
    const/16 v3, 0x58

    move/from16 v0, v44

    if-ne v0, v3, :cond_69

    .line 1355
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_68

    .line 1356
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1358
    const/16 v3, 0x1f

    :try_start_32
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "battery_discharge_duration_threshold"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "battery_discharge_threshold"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "send_action_app_error"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "dropbox_age_seconds"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "dropbox_max_files"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "dropbox_quota_kb"

    aput-object v4, v7, v3

    const/4 v3, 0x6

    const-string v4, "dropbox_quota_percent"

    aput-object v4, v7, v3

    const/4 v3, 0x7

    const-string v4, "dropbox_reserve_percent"

    aput-object v4, v7, v3

    const/16 v3, 0x8

    const-string v4, "dropbox:"

    aput-object v4, v7, v3

    const/16 v3, 0x9

    const-string v4, "logcat_for_"

    aput-object v4, v7, v3

    const/16 v3, 0xa

    const-string v4, "sys_free_storage_log_interval"

    aput-object v4, v7, v3

    const/16 v3, 0xb

    const-string v4, "disk_free_change_reporting_threshold"

    aput-object v4, v7, v3

    const/16 v3, 0xc

    const-string v4, "sys_storage_threshold_percentage"

    aput-object v4, v7, v3

    const/16 v3, 0xd

    const-string v4, "sys_storage_threshold_max_bytes"

    aput-object v4, v7, v3

    const/16 v3, 0xe

    const-string v4, "sys_storage_full_threshold_bytes"

    aput-object v4, v7, v3

    const/16 v3, 0xf

    const-string v4, "sync_max_retry_delay_in_seconds"

    aput-object v4, v7, v3

    const/16 v3, 0x10

    const-string v4, "connectivity_change_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x11

    const-string v4, "captive_portal_detection_enabled"

    aput-object v4, v7, v3

    const/16 v3, 0x12

    const-string v4, "captive_portal_server"

    aput-object v4, v7, v3

    const/16 v3, 0x13

    const-string v4, "nsd_on"

    aput-object v4, v7, v3

    const/16 v3, 0x14

    const-string v4, "set_install_location"

    aput-object v4, v7, v3

    const/16 v3, 0x15

    const-string v4, "default_install_location"

    aput-object v4, v7, v3

    const/16 v3, 0x16

    const-string v4, "inet_condition_debounce_up_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x17

    const-string v4, "inet_condition_debounce_down_delay"

    aput-object v4, v7, v3

    const/16 v3, 0x18

    const-string v4, "read_external_storage_enforced_default"

    aput-object v4, v7, v3

    const/16 v3, 0x19

    const-string v4, "http_proxy"

    aput-object v4, v7, v3

    const/16 v3, 0x1a

    const-string v4, "global_http_proxy_host"

    aput-object v4, v7, v3

    const/16 v3, 0x1b

    const-string v4, "global_http_proxy_port"

    aput-object v4, v7, v3

    const/16 v3, 0x1c

    const-string v4, "global_http_proxy_exclusion_list"

    aput-object v4, v7, v3

    const/16 v3, 0x1d

    const-string v4, "set_global_http_proxy"

    aput-object v4, v7, v3

    const/16 v3, 0x1e

    const-string v4, "default_dns_server"

    aput-object v4, v7, v3

    .line 1391
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1392
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_32

    .line 1394
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1397
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_68
    const/16 v44, 0x59

    .line 1400
    :cond_69
    const/16 v3, 0x59

    move/from16 v0, v44

    if-ne v0, v3, :cond_6b

    .line 1401
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6a

    .line 1402
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1404
    const/4 v3, 0x3

    :try_start_33
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/4 v3, 0x0

    const-string v4, "bluetooth_headset_priority_"

    aput-object v4, v38, v3

    const/4 v3, 0x1

    const-string v4, "bluetooth_a2dp_sink_priority_"

    aput-object v4, v38, v3

    const/4 v3, 0x2

    const-string v4, "bluetooth_input_device_priority_"

    aput-object v4, v38, v3

    .line 1410
    .local v38, "prefixesToMove":[Ljava/lang/String;
    const-string v3, "secure"

    const-string v4, "global"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/providers/settings/DatabaseHelper;->movePrefixedSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1412
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_33

    .line 1414
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1417
    .end local v38    # "prefixesToMove":[Ljava/lang/String;
    :cond_6a
    const/16 v44, 0x5a

    .line 1420
    :cond_6b
    const/16 v3, 0x5a

    move/from16 v0, v44

    if-ne v0, v3, :cond_6d

    .line 1421
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6c

    .line 1422
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1424
    const/16 v3, 0xb

    :try_start_34
    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "window_animation_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "transition_animation_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "animator_duration_scale"

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "fancy_ime_animations"

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "compatibility_mode"

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "emergency_tone"

    aput-object v4, v12, v3

    const/4 v3, 0x6

    const-string v4, "call_auto_retry"

    aput-object v4, v12, v3

    const/4 v3, 0x7

    const-string v4, "debug_app"

    aput-object v4, v12, v3

    const/16 v3, 0x8

    const-string v4, "wait_for_debugger"

    aput-object v4, v12, v3

    const/16 v3, 0x9

    const-string v4, "show_processes"

    aput-object v4, v12, v3

    const/16 v3, 0xa

    const-string v4, "always_finish_activities"

    aput-object v4, v12, v3

    .line 1437
    .local v12, "systemToGlobal":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const-string v4, "preferred_network_mode"

    aput-object v4, v17, v3

    const/4 v3, 0x1

    const-string v4, "subscription_mode"

    aput-object v4, v17, v3

    .line 1442
    .local v17, "secureToGlobal":[Ljava/lang/String;
    const-string v10, "system"

    const-string v11, "global"

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1443
    const-string v15, "secure"

    const-string v16, "global"

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_34

    .line 1447
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1450
    .end local v12    # "systemToGlobal":[Ljava/lang/String;
    .end local v17    # "secureToGlobal":[Ljava/lang/String;
    :cond_6c
    const/16 v44, 0x5b

    .line 1453
    :cond_6d
    const/16 v3, 0x5b

    move/from16 v0, v44

    if-ne v0, v3, :cond_6f

    .line 1454
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_6e

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1458
    const/4 v3, 0x1

    :try_start_35
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mode_ringer"

    aput-object v4, v7, v3

    .line 1459
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1461
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_35

    .line 1463
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1466
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_6e
    const/16 v44, 0x5c

    .line 1469
    :cond_6f
    const/16 v3, 0x5c

    move/from16 v0, v44

    if-ne v0, v3, :cond_71

    .line 1470
    const/16 v40, 0x0

    .line 1472
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_36
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1474
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_c0

    .line 1478
    const-string v3, "global"

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34

    .line 1480
    .local v34, "deviceProvisioned":I
    const-string v3, "user_setup_complete"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_36

    .line 1488
    .end local v34    # "deviceProvisioned":I
    :goto_3
    if-eqz v40, :cond_70

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1490
    :cond_70
    const/16 v44, 0x5d

    .line 1493
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_71
    const/16 v3, 0x5d

    move/from16 v0, v44

    if-ne v0, v3, :cond_73

    .line 1495
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_72

    .line 1496
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1499
    :try_start_37
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSystemGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1500
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "system"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1501
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->sSecureGlobalKeys:Ljava/util/HashSet;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/DatabaseHelper;->hashsetToStringArray(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v7

    .line 1502
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1504
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_37

    .line 1506
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1509
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_72
    const/16 v44, 0x5e

    .line 1512
    :cond_73
    const/16 v3, 0x5e

    move/from16 v0, v44

    if-ne v0, v3, :cond_75

    .line 1514
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_74

    .line 1515
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1516
    const/16 v40, 0x0

    .line 1518
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_38
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1520
    const-string v3, "wireless_charging_started_sound"

    const v4, 0x7f06000c

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1522
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_38

    .line 1524
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1525
    if-eqz v40, :cond_74

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1528
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_74
    const/16 v44, 0x5f

    .line 1531
    :cond_75
    const/16 v3, 0x5f

    move/from16 v0, v44

    if-ne v0, v3, :cond_77

    .line 1532
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_76

    .line 1533
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1535
    const/4 v3, 0x1

    :try_start_39
    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bugreport_in_power_menu"

    aput-object v4, v7, v3

    .line 1536
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    const-string v5, "secure"

    const-string v6, "global"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1537
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_39

    .line 1539
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1542
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :cond_76
    const/16 v44, 0x60

    .line 1545
    :cond_77
    const/16 v3, 0x60

    move/from16 v0, v44

    if-ne v0, v3, :cond_78

    .line 1547
    const/16 v44, 0x61

    .line 1550
    :cond_78
    const/16 v3, 0x61

    move/from16 v0, v44

    if-ne v0, v3, :cond_7a

    .line 1551
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_79

    .line 1552
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1553
    const/16 v40, 0x0

    .line 1555
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3a
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1557
    const-string v3, "low_battery_sound_timeout"

    const v4, 0x7f05000f

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1559
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3a

    .line 1561
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1562
    if-eqz v40, :cond_79

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1565
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_79
    const/16 v44, 0x62

    .line 1568
    :cond_7a
    const/16 v3, 0x62

    move/from16 v0, v44

    if-ne v0, v3, :cond_7b

    .line 1570
    const/16 v44, 0x63

    .line 1573
    :cond_7b
    const/16 v3, 0x63

    move/from16 v0, v44

    if-ne v0, v3, :cond_7c

    .line 1575
    const/16 v44, 0x64

    .line 1578
    :cond_7c
    const/16 v3, 0x64

    move/from16 v0, v44

    if-ne v0, v3, :cond_7e

    .line 1580
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_7d

    .line 1581
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1582
    const/16 v40, 0x0

    .line 1584
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1586
    const-string v3, "heads_up_notifications_enabled"

    const v4, 0x7f050012

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1588
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3b

    .line 1590
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1591
    if-eqz v40, :cond_7d

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1594
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7d
    const/16 v44, 0x65

    .line 1597
    :cond_7e
    const/16 v3, 0x65

    move/from16 v0, v44

    if-ne v0, v3, :cond_80

    .line 1598
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_7f

    .line 1599
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1600
    const/16 v40, 0x0

    .line 1602
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3c
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1604
    const-string v3, "device_name"

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1605
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_3c

    .line 1607
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1608
    if-eqz v40, :cond_7f

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1611
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_7f
    const/16 v44, 0x66

    .line 1614
    :cond_80
    const/16 v3, 0x66

    move/from16 v0, v44

    if-ne v0, v3, :cond_82

    .line 1615
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1616
    const/16 v40, 0x0

    .line 1620
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_c6

    .line 1623
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    const-string v4, "install_non_market_apps"

    aput-object v4, v22, v3

    .line 1626
    .local v22, "globalToSecure":[Ljava/lang/String;
    const-string v20, "global"

    const-string v21, "secure"

    const/16 v23, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1635
    .end local v22    # "globalToSecure":[Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_3d

    .line 1637
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1638
    if-eqz v40, :cond_81

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1640
    :cond_81
    const/16 v44, 0x67

    .line 1643
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_82
    const/16 v3, 0x67

    move/from16 v0, v44

    if-ne v0, v3, :cond_84

    .line 1644
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1645
    const/16 v40, 0x0

    .line 1647
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3e
    const-string v3, "INSERT OR REPLACE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1649
    const-string v3, "wake_gesture_enabled"

    const v4, 0x7f040025

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1651
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3e

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1654
    if-eqz v40, :cond_83

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1656
    :cond_83
    const/16 v44, 0x68

    .line 1659
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_84
    const/16 v3, 0x69

    move/from16 v0, v44

    if-ge v0, v3, :cond_86

    .line 1660
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_85

    .line 1661
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1662
    const/16 v40, 0x0

    .line 1664
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3f
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1666
    const-string v3, "guest_user_enabled"

    const v4, 0x7f040026

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_3f

    .line 1670
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1671
    if-eqz v40, :cond_85

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1674
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_85
    const/16 v44, 0x69

    .line 1677
    :cond_86
    const/16 v3, 0x6a

    move/from16 v0, v44

    if-ge v0, v3, :cond_89

    .line 1679
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1680
    const/16 v40, 0x0

    .line 1682
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_40
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1684
    const-string v3, "lock_screen_show_notifications"

    const v4, 0x7f050011

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1686
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_87

    .line 1687
    const-string v3, "global"

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/providers/settings/DatabaseHelper;->getIntValueFromTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v37

    .line 1689
    .local v37, "oldShow":I
    if-ltz v37, :cond_87

    .line 1691
    const-string v3, "lock_screen_show_notifications"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1692
    const-string v3, "DELETE FROM global WHERE name=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v33

    .line 1694
    .local v33, "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    const-string v4, "lock_screen_show_notifications"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1695
    invoke-virtual/range {v33 .. v33}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1698
    .end local v33    # "deleteStmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v37    # "oldShow":I
    :cond_87
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_40

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1701
    if-eqz v40, :cond_88

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1703
    :cond_88
    const/16 v44, 0x6a

    .line 1706
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_89
    const/16 v3, 0x6b

    move/from16 v0, v44

    if-ge v0, v3, :cond_8b

    .line 1708
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_8a

    .line 1709
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1710
    const/16 v40, 0x0

    .line 1712
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_41
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1714
    const-string v3, "trusted_sound"

    const v4, 0x7f06000b

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadStringSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1716
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_41

    .line 1718
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1719
    if-eqz v40, :cond_8a

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1722
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8a
    const/16 v44, 0x6b

    .line 1725
    :cond_8b
    const/16 v3, 0x6c

    move/from16 v0, v44

    if-ge v0, v3, :cond_8d

    .line 1729
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1730
    const/16 v40, 0x0

    .line 1732
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_42
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1734
    const-string v3, "screen_brightness_mode"

    const v4, 0x7f040006

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1736
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_42

    .line 1738
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1739
    if-eqz v40, :cond_8c

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1741
    :cond_8c
    const/16 v44, 0x6c

    .line 1744
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8d
    const/16 v3, 0x6d

    move/from16 v0, v44

    if-ge v0, v3, :cond_8f

    .line 1745
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1746
    const/16 v40, 0x0

    .line 1748
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_43
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1750
    const-string v3, "lock_screen_allow_private_notifications"

    const v4, 0x7f040024

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1752
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_43

    .line 1754
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1755
    if-eqz v40, :cond_8e

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1757
    :cond_8e
    const/16 v44, 0x6d

    .line 1760
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_8f
    const/16 v3, 0x6e

    move/from16 v0, v44

    if-ge v0, v3, :cond_91

    .line 1764
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1765
    const/16 v40, 0x0

    .line 1767
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_44
    const-string v3, "UPDATE system SET value = ? WHERE name = ? AND value = ?;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1769
    const/4 v3, 0x1

    const-string v4, "SIP_ADDRESS_ONLY"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1770
    const/4 v3, 0x2

    const-string v4, "sip_call_options"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1771
    const/4 v3, 0x3

    const-string v4, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1772
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1773
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_44

    .line 1775
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1776
    if-eqz v40, :cond_90

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1778
    :cond_90
    const/16 v44, 0x6e

    .line 1781
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_91
    const/16 v3, 0x6f

    move/from16 v0, v44

    if-ge v0, v3, :cond_93

    .line 1783
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_92

    .line 1784
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1785
    const/16 v40, 0x0

    .line 1787
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_45
    const-string v3, "INSERT OR REPLACE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1789
    const-string v3, "mode_ringer"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1790
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_45

    .line 1792
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1793
    if-eqz v40, :cond_92

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1796
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_92
    const/16 v44, 0x6f

    .line 1799
    :cond_93
    const/16 v3, 0x70

    move/from16 v0, v44

    if-ge v0, v3, :cond_95

    .line 1800
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_94

    .line 1804
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1805
    const/16 v40, 0x0

    .line 1807
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_46
    const-string v3, "UPDATE global SET value = ?  WHERE name = ? AND value = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1809
    const/4 v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1810
    const/4 v3, 0x2

    const-string v4, "device_name"

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1811
    const/4 v3, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/DatabaseHelper;->getOldDefaultDeviceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1812
    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1813
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_46

    .line 1815
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1816
    if-eqz v40, :cond_94

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1819
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_94
    const/16 v44, 0x70

    .line 1822
    :cond_95
    const/16 v3, 0x71

    move/from16 v0, v44

    if-ge v0, v3, :cond_97

    .line 1823
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1824
    const/16 v40, 0x0

    .line 1826
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_47
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1828
    const-string v3, "sleep_timeout"

    const v4, 0x7f050001

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadIntegerSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1830
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_47

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1833
    if-eqz v40, :cond_96

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1835
    :cond_96
    const/16 v44, 0x71

    .line 1840
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_97
    const/16 v3, 0x73

    move/from16 v0, v44

    if-ge v0, v3, :cond_99

    .line 1841
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_98

    .line 1842
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1843
    const/16 v40, 0x0

    .line 1845
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_48
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1847
    const-string v3, "theater_mode_on"

    const v4, 0x7f040002

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 1849
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_48

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1852
    if-eqz v40, :cond_98

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1855
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_98
    const/16 v44, 0x73

    .line 1858
    :cond_99
    const/16 v3, 0x74

    move/from16 v0, v44

    if-ge v0, v3, :cond_9b

    .line 1859
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/settings/DatabaseHelper;->mUserHandle:I

    if-nez v3, :cond_9a

    .line 1860
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1861
    const/16 v40, 0x0

    .line 1863
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_49
    const-string v3, "INSERT OR IGNORE INTO global(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1865
    const-string v3, "volte_vt_enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1866
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_49

    .line 1868
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1869
    if-eqz v40, :cond_9a

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1872
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9a
    const/16 v44, 0x74

    .line 1875
    :cond_9b
    const/16 v3, 0x75

    move/from16 v0, v44

    if-ge v0, v3, :cond_9c

    .line 1876
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1878
    const/4 v3, 0x1

    :try_start_4a
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/4 v3, 0x0

    const-string v4, "lock_to_app_exit_locked"

    aput-object v4, v27, v3

    .line 1881
    .local v27, "systemToSecure":[Ljava/lang/String;
    const-string v25, "system"

    const-string v26, "secure"

    const/16 v28, 0x1

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/DatabaseHelper;->moveSettingsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1882
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_4a

    .line 1884
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1886
    const/16 v44, 0x75

    .line 1889
    .end local v27    # "systemToSecure":[Ljava/lang/String;
    :cond_9c
    const/16 v3, 0x76

    move/from16 v0, v44

    if-ge v0, v3, :cond_9e

    .line 1892
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1893
    const/16 v40, 0x0

    .line 1895
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4b
    const-string v3, "INSERT OR REPLACE INTO system(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1897
    const-string v3, "hide_rotation_lock_toggle_for_accessibility"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1898
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_4b

    .line 1900
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1901
    if-eqz v40, :cond_9d

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1903
    :cond_9d
    const/16 v44, 0x76

    .line 1907
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_9e
    move/from16 v0, v44

    move/from16 v1, p3

    if-eq v0, v1, :cond_9f

    .line 1908
    const-string v3, "SettingsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got stuck trying to upgrade from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", must wipe the settings provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-string v3, "DROP TABLE IF EXISTS global"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1911
    const-string v3, "DROP TABLE IF EXISTS globalIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1912
    const-string v3, "DROP TABLE IF EXISTS system"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1913
    const-string v3, "DROP INDEX IF EXISTS systemIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1914
    const-string v3, "DROP TABLE IF EXISTS secure"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1915
    const-string v3, "DROP INDEX IF EXISTS secureIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1916
    const-string v3, "DROP TABLE IF EXISTS gservices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1917
    const-string v3, "DROP INDEX IF EXISTS gservicesIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1918
    const-string v3, "DROP TABLE IF EXISTS bluetooth_devices"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1919
    const-string v3, "DROP TABLE IF EXISTS bookmarks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1920
    const-string v3, "DROP INDEX IF EXISTS bookmarksIndex1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1921
    const-string v3, "DROP INDEX IF EXISTS bookmarksIndex2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1922
    const-string v3, "DROP TABLE IF EXISTS favorites"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1923
    invoke-virtual/range {p0 .. p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 1927
    .local v47, "wipeReason":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT INTO secure(name,value) values(\'wiped_db_reason\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1930
    .end local v47    # "wipeReason":Ljava/lang/String;
    :cond_9f
    return-void

    .line 251
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 266
    :catchall_1
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 278
    :catchall_2
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 290
    :catchall_3
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 352
    :catchall_4
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 370
    :catchall_5
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 392
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_6
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 393
    if-eqz v40, :cond_a0

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a0
    throw v3

    .line 410
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v46    # "wifiWatchList":Ljava/lang/String;
    :catchall_7
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 423
    .end local v46    # "wifiWatchList":Ljava/lang/String;
    :catchall_8
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 437
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_9
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    if-eqz v40, :cond_a1

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a1
    throw v3

    .line 466
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 481
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    if-eqz v40, :cond_a2

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a2
    throw v3

    .line 490
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_a3
    :try_start_4c
    const-string v45, "0"
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_c

    goto/16 :goto_0

    .line 496
    :catchall_c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 523
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 524
    if-eqz v40, :cond_a4

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a4
    throw v3

    .line 543
    :catchall_e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    if-eqz v40, :cond_a5

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a5
    throw v3

    .line 562
    :catchall_f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 563
    if-eqz v40, :cond_a6

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a6
    throw v3

    .line 581
    :catchall_10
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 582
    if-eqz v40, :cond_a7

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a7
    throw v3

    .line 612
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_11
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 627
    :catchall_12
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 643
    :catchall_13
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 668
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_14
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 669
    if-eqz v40, :cond_a8

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a8
    throw v3

    .line 710
    :catchall_15
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 711
    if-eqz v40, :cond_a9

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_a9
    throw v3

    .line 733
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_16
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 756
    .restart local v7    # "settingsToMove":[Ljava/lang/String;
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_17
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 757
    if-eqz v40, :cond_aa

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_aa
    throw v3

    .line 777
    .end local v7    # "settingsToMove":[Ljava/lang/String;
    :catchall_18
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 778
    if-eqz v40, :cond_ab

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ab
    throw v3

    .line 805
    :catchall_19
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 806
    if-eqz v40, :cond_ac

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ac
    throw v3

    .line 822
    .restart local v31    # "autoTimeValue":I
    :catchall_1a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 823
    if-eqz v40, :cond_ad

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ad
    throw v3

    .line 839
    .end local v31    # "autoTimeValue":I
    :catchall_1b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 840
    if-eqz v40, :cond_ae

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ae
    throw v3

    .line 884
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 901
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 902
    if-eqz v40, :cond_af

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_af
    throw v3

    .line 925
    :catchall_1e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 926
    if-eqz v40, :cond_b0

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b0
    throw v3

    .line 951
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v39    # "ringerModeAffectedStreams":I
    :catchall_1f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 968
    .end local v39    # "ringerModeAffectedStreams":I
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_20
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 969
    if-eqz v40, :cond_b1

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b1
    throw v3

    .line 982
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_21
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1001
    .restart local v30    # "airplaneRadios":Ljava/lang/String;
    .restart local v41    # "toggleableRadios":Ljava/lang/String;
    :catchall_22
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1023
    .end local v30    # "airplaneRadios":Ljava/lang/String;
    .end local v41    # "toggleableRadios":Ljava/lang/String;
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_23
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1024
    if-eqz v40, :cond_b2

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b2
    throw v3

    .line 1040
    :catchall_24
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1041
    if-eqz v40, :cond_b3

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b3
    throw v3

    .line 1061
    :catchall_25
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1062
    if-eqz v40, :cond_b4

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b4
    throw v3

    .line 1083
    .restart local v32    # "c":Landroid/database/Cursor;
    :catchall_26
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1084
    if-eqz v32, :cond_b5

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_b5
    if-eqz v40, :cond_b6

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b6
    throw v3

    .line 1100
    .end local v32    # "c":Landroid/database/Cursor;
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_27
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1124
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_28
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1125
    if-eqz v40, :cond_b7

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_b7
    throw v3

    .line 1147
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_b8
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 1149
    .restart local v29    # "accessibilityEnabled":Z
    :cond_b9
    const/16 v42, 0x0

    goto/16 :goto_2

    .line 1168
    .restart local v35    # "enabledServices":Ljava/lang/String;
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v42    # "touchExplorationEnabled":Z
    .restart local v43    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_29
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1169
    if-eqz v40, :cond_ba

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ba
    throw v3

    .line 1198
    .end local v29    # "accessibilityEnabled":Z
    .end local v35    # "enabledServices":Ljava/lang/String;
    .end local v42    # "touchExplorationEnabled":Z
    .end local v43    # "touchExplorationGrantedServices":Ljava/lang/String;
    :catchall_2a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1199
    if-eqz v40, :cond_bb

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bb
    throw v3

    .line 1215
    :catchall_2b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1216
    if-eqz v40, :cond_bc

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bc
    throw v3

    .line 1238
    :catchall_2c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1239
    if-eqz v40, :cond_bd

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bd
    throw v3

    .line 1268
    :catchall_2d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1269
    if-eqz v40, :cond_be

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_be
    throw v3

    .line 1292
    :catchall_2e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1293
    if-eqz v40, :cond_bf

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_bf
    throw v3

    .line 1310
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1329
    :catchall_30
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1348
    :catchall_31
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1394
    :catchall_32
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1414
    :catchall_33
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1447
    :catchall_34
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1463
    :catchall_35
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1484
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :cond_c0
    :try_start_4d
    const-string v3, "user_setup_complete"

    const v4, 0x7f040023

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_36

    goto/16 :goto_3

    .line 1488
    :catchall_36
    move-exception v3

    if-eqz v40, :cond_c1

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c1
    throw v3

    .line 1506
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_37
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1524
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_38
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1525
    if-eqz v40, :cond_c2

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c2
    throw v3

    .line 1539
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_39
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1561
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_3a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1562
    if-eqz v40, :cond_c3

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c3
    throw v3

    .line 1590
    :catchall_3b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1591
    if-eqz v40, :cond_c4

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c4
    throw v3

    .line 1607
    :catchall_3c
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1608
    if-eqz v40, :cond_c5

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c5
    throw v3

    .line 1630
    :cond_c6
    :try_start_4e
    const-string v3, "INSERT OR IGNORE INTO secure(name,value) VALUES(?,?);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v40

    .line 1632
    const-string v3, "install_non_market_apps"

    const v4, 0x7f04000a

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v3, v4}, Lcom/android/providers/settings/DatabaseHelper;->loadBooleanSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_3d

    goto/16 :goto_4

    .line 1637
    :catchall_3d
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1638
    if-eqz v40, :cond_c7

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c7
    throw v3

    .line 1653
    :catchall_3e
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1654
    if-eqz v40, :cond_c8

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c8
    throw v3

    .line 1670
    :catchall_3f
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1671
    if-eqz v40, :cond_c9

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_c9
    throw v3

    .line 1700
    :catchall_40
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1701
    if-eqz v40, :cond_ca

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ca
    throw v3

    .line 1718
    :catchall_41
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1719
    if-eqz v40, :cond_cb

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cb
    throw v3

    .line 1738
    :catchall_42
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1739
    if-eqz v40, :cond_cc

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cc
    throw v3

    .line 1754
    :catchall_43
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1755
    if-eqz v40, :cond_cd

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cd
    throw v3

    .line 1775
    :catchall_44
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1776
    if-eqz v40, :cond_ce

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ce
    throw v3

    .line 1792
    :catchall_45
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1793
    if-eqz v40, :cond_cf

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_cf
    throw v3

    .line 1815
    :catchall_46
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1816
    if-eqz v40, :cond_d0

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d0
    throw v3

    .line 1832
    :catchall_47
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1833
    if-eqz v40, :cond_d1

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d1
    throw v3

    .line 1851
    :catchall_48
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1852
    if-eqz v40, :cond_d2

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d2
    throw v3

    .line 1868
    :catchall_49
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1869
    if-eqz v40, :cond_d3

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d3
    throw v3

    .line 1884
    .end local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4a
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 1900
    .restart local v40    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    :catchall_4b
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1901
    if-eqz v40, :cond_d4

    invoke-virtual/range {v40 .. v40}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_d4
    throw v3
.end method

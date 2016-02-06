.class public Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;
.super Ljava/lang/Object;
.source "LocationMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationStatsDataSource"
.end annotation


# static fields
.field private static mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private mAllColumns:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stat_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "stat_value_int"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "stat_value_string"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-direct {v0, p1}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    return-void
.end method

.method private statExists(Ljava/lang/String;)Z
    .locals 11
    .param p1, "statName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v10

    .local v4, "statNameArray":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    const-string v3, "stat_name == ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->close()V

    return-void
.end method

.method public getLongValueByName(Ljava/lang/String;J)J
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, "statNameArray":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    const-string v3, "stat_name == ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .local v10, "retVal":J
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-wide v10

    .end local v10    # "retVal":J
    :cond_0
    move-wide v10, p2

    .restart local v10    # "retVal":J
    goto :goto_0
.end method

.method public getStringValueByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, "statNameArray":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    const-string v3, "stat_name == ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "retVal":Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v9

    .end local v9    # "retVal":Ljava/lang/String;
    :cond_0
    move-object v9, p2

    .restart local v9    # "retVal":Ljava/lang/String;
    goto :goto_0
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDBHelper:Lcom/android/server/location/LocationMetrics$MySQLiteHelper;

    invoke-virtual {v0}, Lcom/android/server/location/LocationMetrics$MySQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public updateLongStatVal(Ljava/lang/String;J)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "statVal"    # J

    .prologue
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v9, v0

    .local v9, "names":[Ljava/lang/String;
    const-wide/16 v10, 0x0

    .local v10, "insertId":J
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->statExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stat_value_int"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    const-string v2, "stat_name == ?"

    invoke-virtual {v0, v1, v12, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    :goto_0
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v0, "stat_name"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stat_value_int"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    goto :goto_0
.end method

.method public updateStringStatVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "statVal"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .local v12, "values":Landroid/content/ContentValues;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v9, v0

    .local v9, "names":[Ljava/lang/String;
    const-wide/16 v10, 0x0

    .local v10, "insertId":J
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->statExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stat_value_string"

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    const-string v2, "stat_name == ?"

    invoke-virtual {v0, v1, v12, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    :goto_0
    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    iget-object v2, p0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mAllColumns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v0, "stat_name"

    invoke-virtual {v12, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stat_value_string"

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/location/LocationMetrics$LocationStatsDataSource;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location_stats"

    invoke-virtual {v0, v1, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    goto :goto_0
.end method

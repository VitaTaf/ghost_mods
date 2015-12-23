.class public Lcom/motorola/kpi/Kpi6paTop;
.super Ljava/lang/Object;
.source "Kpi6paTop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/kpi/Kpi6paTop$1;,
        Lcom/motorola/kpi/Kpi6paTop$Tag;
    }
.end annotation


# static fields
.field public static final DEBUG_6PA_KPI:I

.field private static final INDEX_READ_SECTORS:I = 0x2

.field private static final INDEX_WRITE_SECTORS:I = 0x6

.field public static final KPI_LOG_LEVEL_0:I = 0x0

.field public static final KPI_LOG_LEVEL_1:I = 0x1

.field public static final KPI_LOG_LEVEL_2:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "KPI-6PA-TOP"

.field private static final NO_THREADS_INFO:I = 0x0

.field private static final NULL_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "Kpi6paTop"

.field private static final WITH_THREADS_INFO:I = 0x1

.field private static listKpi6paTop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/kpi/Kpi6paTop;",
            ">;"
        }
    .end annotation
.end field

.field private static mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

.field private static mSystemPartition:Ljava/lang/String;


# instance fields
.field private intentName:Ljava/lang/String;

.field private numAppend:I

.field private printed:Z

.field private tag:Ljava/lang/String;

.field private topInfo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "debug.6pa.kpi"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    .line 270
    const-string v0, "\u0000"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/kpi/Kpi6paTop;->NULL_PATTERN:Ljava/util/regex/Pattern;

    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/kpi/Kpi6paTop;->mSystemPartition:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static Kpi6paIORes(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 409
    sget v1, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/motorola/kpi/Kpi6paTop;->getMmcStats(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/motorola/kpi/Kpi6paTop;->getMmcStats(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "logLine":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v0    # "logLine":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static Kpi6paZy1(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 381
    const/4 v2, 0x0

    .line 382
    .local v2, "packageName":Ljava/lang/String;
    sget v4, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    if-lt v4, v5, :cond_0

    .line 383
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 384
    .local v3, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 385
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    .local v0, "arg":Ljava/lang/String;
    const-string v4, "--nice-name="

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 395
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_0
    :goto_1
    sget v4, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    if-lt v4, v5, :cond_1

    .line 396
    if-nez v2, :cond_3

    .line 397
    const-string v4, "KPI-6PA-ZY-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " call sZygoteWriter.flush() for unknown packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    :goto_2
    return-object v2

    .line 384
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "sz":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "sz":I
    :cond_3
    const-string v4, "KPI-6PA-ZY-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " call sZygoteWriter.flush() for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 389
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "sz":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private native clearTopInfo()V
.end method

.method private static findSystemPartition()Ljava/lang/String;
    .locals 13

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 278
    .local v8, "ret":Ljava/lang/String;
    const/4 v7, 0x0

    .line 279
    .local v7, "line":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/mounts"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 282
    const-string/jumbo v10, "system"

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 286
    :cond_1
    if-eqz v7, :cond_2

    .line 287
    const/4 v10, 0x0

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "systemPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "absPath":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 291
    const-string v10, "Kpi6paTop"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "line:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " systemPath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " absPath:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ret:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    .end local v0    # "absPath":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v9    # "systemPath":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_5

    .line 302
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 309
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_0
    return-object v8

    .line 303
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 305
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "Kpi6paTop"

    const-string v11, "Unable to close buffered reader after reading /proc/mounts."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 306
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 293
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 294
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v10, "Kpi6paTop"

    const-string v11, "Unable to find system partition."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    if-eqz v1, :cond_3

    .line 302
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 303
    :catch_2
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "Kpi6paTop"

    const-string v11, "Unable to close buffered reader after reading /proc/mounts."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v6

    .line 297
    .local v6, "ioe":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v10, "Kpi6paTop"

    const-string v11, "Unable to find system partition due to IO exception."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    if-eqz v1, :cond_3

    .line 302
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 303
    :catch_4
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "Kpi6paTop"

    const-string v11, "Unable to close buffered reader after reading /proc/mounts."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v1, :cond_4

    .line 302
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 306
    :cond_4
    :goto_4
    throw v10

    .line 303
    :catch_5
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v11, "Kpi6paTop"

    const-string v12, "Unable to close buffered reader after reading /proc/mounts."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 300
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 296
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_6
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 293
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_5
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private native freeTopInfo()V
.end method

.method public static get(Ljava/lang/String;)Lcom/motorola/kpi/Kpi6paTop;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/Kpi6paTop;

    iget-object v1, v1, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 240
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/Kpi6paTop;

    .line 243
    :goto_1
    return-object v1

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMmcStats(Z)Ljava/lang/String;
    .locals 15
    .param p0, "system"    # Z

    .prologue
    const/4 v14, 0x6

    .line 316
    const-string v11, ""

    .line 317
    .local v11, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 319
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 320
    .local v5, "fileName":Ljava/lang/String;
    :try_start_0
    sget-object v12, Lcom/motorola/kpi/Kpi6paTop;->mSystemPartition:Ljava/lang/String;

    if-nez v12, :cond_0

    .line 321
    invoke-static {}, Lcom/motorola/kpi/Kpi6paTop;->findSystemPartition()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/motorola/kpi/Kpi6paTop;->mSystemPartition:Ljava/lang/String;

    .line 324
    :cond_0
    if-eqz p0, :cond_4

    .line 325
    sget-object v12, Lcom/motorola/kpi/Kpi6paTop;->mSystemPartition:Ljava/lang/String;

    if-nez v12, :cond_2

    .line 326
    const-string v12, "Kpi6paTop"

    const-string v13, "Could not find system partition."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v12, ""
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v1, :cond_1

    .line 369
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    :cond_1
    :goto_0
    return-object v12

    .line 370
    :catch_0
    move-exception v4

    .line 372
    .local v4, "e":Ljava/io/IOException;
    const-string v13, "Kpi6paTop"

    const-string v14, "Unable to close buffered reader after reading mmc sectors."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/sys/block/mmcblk0/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/motorola/kpi/Kpi6paTop;->mSystemPartition:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/stat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 333
    :goto_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "data":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 339
    sget-object v12, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v3, v12}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 340
    sget-object v12, Lcom/motorola/kpi/Kpi6paTop;->NULL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 341
    .local v9, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-nez v12, :cond_6

    .line 342
    const-string v12, "\\s+"

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "a":[Ljava/lang/String;
    array-length v12, v0

    if-le v12, v14, :cond_5

    .line 344
    const/4 v12, 0x2

    aget-object v8, v0, v12

    .line 345
    .local v8, "longStr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 346
    const/4 v12, 0x6

    aget-object v8, v0, v12

    .line 347
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 367
    .end local v0    # "a":[Ljava/lang/String;
    .end local v8    # "longStr":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    if-eqz v2, :cond_9

    .line 369
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "data":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    move-object v12, v11

    .line 376
    goto/16 :goto_0

    .line 331
    :cond_4
    :try_start_5
    const-string v5, "/sys/block/mmcblk0/stat"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 349
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "a":[Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v9    # "matcher":Ljava/util/regex/Matcher;
    :cond_5
    :try_start_6
    const-string v12, "Kpi6paTop"

    const-string v13, "Invalid stat file format."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 357
    .end local v0    # "a":[Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    :catch_1
    move-exception v6

    move-object v1, v2

    .line 358
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v6, "fnfe":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to find mmc block stat files."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 367
    if-eqz v1, :cond_3

    .line 369
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 370
    :catch_2
    move-exception v4

    .line 372
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to close buffered reader after reading mmc sectors."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 352
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v9    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    :try_start_9
    const-string v12, "Kpi6paTop"

    const-string v13, "Tainted stats file."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 360
    .end local v3    # "data":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    :catch_3
    move-exception v7

    move-object v1, v2

    .line 361
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_5
    :try_start_a
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to read mmc block stats due to IO exception."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 367
    if-eqz v1, :cond_3

    .line 369
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 370
    :catch_4
    move-exception v4

    .line 372
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to close buffered reader after reading mmc sectors."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 355
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "data":Ljava/lang/String;
    :cond_7
    :try_start_c
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to read block stats."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    .line 363
    .end local v3    # "data":Ljava/lang/String;
    :catch_5
    move-exception v10

    move-object v1, v2

    .line 364
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    :goto_6
    :try_start_d
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to parse sector stats."

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 367
    if-eqz v1, :cond_3

    .line 369
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_3

    .line 370
    :catch_6
    move-exception v4

    .line 372
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to close buffered reader after reading mmc sectors."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 370
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "data":Ljava/lang/String;
    :catch_7
    move-exception v4

    .line 372
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "Kpi6paTop"

    const-string v13, "Unable to close buffered reader after reading mmc sectors."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 373
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 367
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v1, :cond_8

    .line 369
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 373
    :cond_8
    :goto_8
    throw v12

    .line 370
    :catch_8
    move-exception v4

    .line 372
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v13, "Kpi6paTop"

    const-string v14, "Unable to close buffered reader after reading mmc sectors."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 367
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 363
    :catch_9
    move-exception v10

    goto :goto_6

    .line 360
    :catch_a
    move-exception v7

    goto :goto_5

    .line 357
    :catch_b
    move-exception v6

    goto/16 :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "data":Ljava/lang/String;
    :cond_9
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static varargs log(Lcom/motorola/kpi/Kpi6paTop$Tag;[Ljava/lang/Object;)V
    .locals 26
    .param p0, "tag"    # Lcom/motorola/kpi/Kpi6paTop$Tag;
    .param p1, "parms"    # [Ljava/lang/Object;

    .prologue
    .line 453
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop$1;->$SwitchMap$com$motorola$kpi$Kpi6paTop$Tag:[I

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/kpi/Kpi6paTop$Tag;->ordinal()I

    move-result v23

    aget v22, v22, v23

    packed-switch v22, :pswitch_data_0

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 456
    :pswitch_0
    const/16 v22, 0x0

    aget-object v13, p1, v22

    check-cast v13, Landroid/content/Intent;

    .line 457
    .local v13, "intent":Landroid/content/Intent;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 458
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 459
    const-string v22, "KPI-6PA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " startActivityForResult "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    :cond_1
    const-string v22, "KPI-6PA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " startActivityForResult "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    .end local v13    # "intent":Landroid/content/Intent;
    :pswitch_1
    const/16 v22, 0x0

    aget-object v13, p1, v22

    .line 469
    .local v13, "intent":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 470
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 471
    .local v18, "startTime":J
    const-string v22, "KPI-6PA-AMS-1"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityManagerService.startActivity(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v22, "KPI-6PA-RES-1"

    const-string/jumbo v23, "startActivity"

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/motorola/kpi/Kpi6paTop;->Kpi6paIORes(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 477
    .end local v13    # "intent":Ljava/lang/Object;
    .end local v18    # "startTime":J
    :pswitch_2
    const/16 v22, 0x0

    aget-object v13, p1, v22

    .line 478
    .restart local v13    # "intent":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 479
    const-string v22, "KPI-6PA-AMS-1"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityManagerService.startActivityIntentSender(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 484
    .end local v13    # "intent":Ljava/lang/Object;
    :pswitch_3
    const/16 v22, 0x0

    aget-object v17, p1, v22

    .line 485
    .local v17, "token":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 486
    const-string v22, "KPI-6PA-AMS-2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ApplicationThreadNative.schedulePauseActivity() :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 491
    .end local v17    # "token":Ljava/lang/Object;
    :pswitch_4
    const/16 v22, 0x0

    aget-object v17, p1, v22

    .line 492
    .restart local v17    # "token":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 493
    const-string v22, "KPI-6PA-AMS-3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityManagerService.activityPaused() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 498
    .end local v17    # "token":Ljava/lang/Object;
    :pswitch_5
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 499
    const-string v22, "KPI-6PA-AMS-4"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityManagerService.attachApplication()"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 504
    :pswitch_6
    const/16 v22, 0x0

    aget-object v12, p1, v22

    .line 505
    .local v12, "info":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 506
    const-string v22, "KPI-6PA-AMS-5"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ApplicationThreadNative.scheduleLaunchActivity() :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 511
    .end local v12    # "info":Ljava/lang/Object;
    :pswitch_7
    const/16 v22, 0x0

    aget-object v12, p1, v22

    .line 512
    .restart local v12    # "info":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 513
    const-string v22, "KPI-6PA-AMS-6"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityThread.scheduleLaunchActivity() "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 518
    .end local v12    # "info":Ljava/lang/Object;
    :pswitch_8
    const/16 v22, 0x0

    aget-object v15, p1, v22

    check-cast v15, Ljava/lang/String;

    .line 519
    .local v15, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 520
    .local v10, "curTime":J
    const/16 v22, 0x1

    aget-object v4, p1, v22

    check-cast v4, Landroid/content/ComponentName;

    .line 521
    .local v4, "activity":Landroid/content/ComponentName;
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    if-eqz v22, :cond_2

    .line 522
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v10, v11}, Lcom/motorola/kpi/LaunchCheckinHandler;->newApp(Landroid/content/ComponentName;J)V

    .line 524
    :cond_2
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 525
    const-string v22, "KPI-6PA-AMS-7"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", processName "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 529
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v10    # "curTime":J
    .end local v15    # "processName":Ljava/lang/String;
    :pswitch_9
    const/16 v22, 0x0

    aget-object v4, p1, v22

    check-cast v4, Landroid/content/ComponentName;

    .line 530
    .restart local v4    # "activity":Landroid/content/ComponentName;
    const/16 v22, 0x1

    aget-object v22, p1, v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 531
    .restart local v10    # "curTime":J
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    if-eqz v22, :cond_3

    .line 532
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v10, v11}, Lcom/motorola/kpi/LaunchCheckinHandler;->displayed(Landroid/content/ComponentName;J)V

    .line 534
    :cond_3
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 535
    const-string v22, "KPI-6PA-AMS-8"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " windowsDrawn "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v22, "KPI-6PA-RES-2"

    const-string/jumbo v23, "windowsDrawn"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v10, v11, v1}, Lcom/motorola/kpi/Kpi6paTop;->Kpi6paIORes(Ljava/lang/String;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 540
    .end local v4    # "activity":Landroid/content/ComponentName;
    .end local v10    # "curTime":J
    :pswitch_a
    const/16 v22, 0x0

    aget-object v9, p1, v22

    check-cast v9, Landroid/content/ComponentName;

    .line 541
    .local v9, "component":Landroid/content/ComponentName;
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    if-eqz v22, :cond_0

    .line 542
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v9, v1, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->start(Landroid/content/ComponentName;J)V

    goto/16 :goto_0

    .line 546
    .end local v9    # "component":Landroid/content/ComponentName;
    :pswitch_b
    const/16 v22, 0x0

    aget-object v15, p1, v22

    check-cast v15, Ljava/lang/String;

    .line 547
    .restart local v15    # "processName":Ljava/lang/String;
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    if-eqz v22, :cond_0

    .line 548
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->newProc(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 552
    .end local v15    # "processName":Ljava/lang/String;
    :pswitch_c
    const/16 v22, 0x0

    aget-object v9, p1, v22

    check-cast v9, Landroid/content/ComponentName;

    .line 553
    .restart local v9    # "component":Landroid/content/ComponentName;
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    if-eqz v22, :cond_0

    .line 554
    sget-object v22, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v9, v1, v2}, Lcom/motorola/kpi/LaunchCheckinHandler;->suspend(Landroid/content/ComponentName;J)V

    goto/16 :goto_0

    .line 558
    .end local v9    # "component":Landroid/content/ComponentName;
    :pswitch_d
    const/16 v22, 0x0

    aget-object v17, p1, v22

    .line 559
    .restart local v17    # "token":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 560
    const-string v22, "KPI-6PA-AT-1"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityThread.schedulePauseActivity() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    .end local v17    # "token":Ljava/lang/Object;
    :pswitch_e
    const/16 v22, 0x0

    aget-object v5, p1, v22

    .line 566
    .local v5, "activityInfo":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 567
    const-string v22, "KPI-6PA-AT-2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityThread.handlePauseActivity() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 572
    .end local v5    # "activityInfo":Ljava/lang/Object;
    :pswitch_f
    const/16 v22, 0x0

    aget-object v17, p1, v22

    .line 573
    .restart local v17    # "token":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 574
    const-string v22, "KPI-6PA-AT-3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityManagerNative.activityResumed(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 579
    .end local v17    # "token":Ljava/lang/Object;
    :pswitch_10
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 580
    const-string v22, "KPI-6PA-AT-4"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityManagerNative.attachApplication()"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 585
    :pswitch_11
    const/16 v22, 0x0

    aget-object v5, p1, v22

    .line 586
    .restart local v5    # "activityInfo":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 587
    const-string v22, "KPI-6PA-AT-5"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ApplicationThread.handleLaunchActivity() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    .end local v5    # "activityInfo":Ljava/lang/Object;
    :pswitch_12
    const/16 v22, 0x0

    aget-object v5, p1, v22

    .line 593
    .restart local v5    # "activityInfo":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 594
    const-string v22, "KPI-6PA-AT-6"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " leave ApplicationThread.handleLaunchActivity() :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 599
    .end local v5    # "activityInfo":Ljava/lang/Object;
    :pswitch_13
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 600
    const-string v22, "KPI-6PA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Launch Home from hot key"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 604
    :pswitch_14
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 605
    const-string v22, "KPI-6PA"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Camera button pressed"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 609
    :pswitch_15
    const/16 v22, 0x0

    aget-object v6, p1, v22

    .line 610
    .local v6, "animation":Ljava/lang/Object;
    const/16 v22, 0x1

    aget-object v7, p1, v22

    .line 611
    .local v7, "animator":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 612
    const-string v22, "KPI-6PA-WMS-2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Start mAnimation: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 617
    .end local v6    # "animation":Ljava/lang/Object;
    .end local v7    # "animator":Ljava/lang/Object;
    :pswitch_16
    const/16 v22, 0x0

    aget-object v6, p1, v22

    .line 618
    .restart local v6    # "animation":Ljava/lang/Object;
    const/16 v22, 0x1

    aget-object v7, p1, v22

    .line 619
    .restart local v7    # "animator":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 620
    const-string v22, "KPI-6PA-WMS-3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Finish mAnimation: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 625
    .end local v6    # "animation":Ljava/lang/Object;
    .end local v7    # "animator":Ljava/lang/Object;
    :pswitch_17
    const/16 v22, 0x0

    aget-object v6, p1, v22

    .line 626
    .restart local v6    # "animation":Ljava/lang/Object;
    const/16 v22, 0x1

    aget-object v7, p1, v22

    .line 627
    .restart local v7    # "animator":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 628
    const-string v22, "KPI-6PA-WMS-4"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Start mAnimation: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 633
    .end local v6    # "animation":Ljava/lang/Object;
    .end local v7    # "animator":Ljava/lang/Object;
    :pswitch_18
    const/16 v22, 0x0

    aget-object v6, p1, v22

    .line 634
    .restart local v6    # "animation":Ljava/lang/Object;
    const/16 v22, 0x1

    aget-object v7, p1, v22

    .line 635
    .restart local v7    # "animator":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 636
    const-string v22, "KPI-6PA-WMS-5"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Finish mAnimation: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 641
    .end local v6    # "animation":Ljava/lang/Object;
    .end local v7    # "animator":Ljava/lang/Object;
    :pswitch_19
    const/16 v22, 0x0

    aget-object v8, p1, v22

    .line 642
    .local v8, "appToken":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 643
    const-string v22, "KPI-6PA-WMS-6"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " WindowState.performShowLocked() sends empty message FINISHED_STARTING: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 649
    .end local v8    # "appToken":Ljava/lang/Object;
    :pswitch_1a
    const/16 v22, 0x0

    aget-object v8, p1, v22

    .line 650
    .restart local v8    # "appToken":Ljava/lang/Object;
    const/16 v22, 0x1

    aget-object v21, p1, v22

    .line 651
    .local v21, "window":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 652
    const-string v22, "KPI-6PA-WMS-7"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter PhoneWindowManager.removeStartingWindow(): "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 657
    .end local v8    # "appToken":Ljava/lang/Object;
    .end local v21    # "window":Ljava/lang/Object;
    :pswitch_1b
    const/16 v22, 0x0

    aget-object v16, p1, v22

    .line 658
    .local v16, "session":Ljava/lang/Object;
    const/16 v22, 0x1

    aget-object v20, p1, v22

    .line 659
    .local v20, "win":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 660
    const-string v22, "KPI-6PA-WMS-8"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter WindowManagerService.removeWindow() "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 665
    .end local v16    # "session":Ljava/lang/Object;
    .end local v20    # "win":Ljava/lang/Object;
    :pswitch_1c
    const/16 v22, 0x0

    aget-object v14, p1, v22

    .line 666
    .local v14, "pid":Ljava/lang/Object;
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 667
    const-string v22, "KPI-6PA-ZY-2"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " result.pid = sZygoteInputStream.readInt() = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 672
    .end local v14    # "pid":Ljava/lang/Object;
    :pswitch_1d
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 673
    const-string v22, "KPI-6PA-ZY-3"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ZygoteConnection.runOnce()"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 677
    :pswitch_1e
    sget v22, Lcom/motorola/kpi/Kpi6paTop;->DEBUG_6PA_KPI:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 678
    const-string v22, "KPI-6PA-ZY-6"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " enter ActivityThread.main()"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public static make(Ljava/lang/String;)Lcom/motorola/kpi/Kpi6paTop;
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 217
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/kpi/Kpi6paTop;

    iget-object v2, v2, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 218
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/kpi/Kpi6paTop;

    .line 225
    :goto_1
    return-object v2

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Lcom/motorola/kpi/Kpi6paTop;

    invoke-direct {v0, p0}, Lcom/motorola/kpi/Kpi6paTop;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "Kpi6paTop":Lcom/motorola/kpi/Kpi6paTop;
    sget-object v2, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 225
    goto :goto_1
.end method

.method private native newTopInfo(I)V
.end method

.method private native printTopInfo()V
.end method

.method private native readTopInfo(J)V
.end method

.method public static remove(Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 257
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/kpi/Kpi6paTop;

    iget-object v1, v1, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 259
    sget-object v1, Lcom/motorola/kpi/Kpi6paTop;->listKpi6paTop:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    const/4 v1, 0x1

    .line 263
    :goto_1
    return v1

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    if-eqz p0, :cond_1

    .line 425
    new-instance v0, Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-direct {v0, p0}, Lcom/motorola/kpi/LaunchCheckinHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-object v0, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lcom/motorola/kpi/Kpi6paTop;->mLaunchStats:Lcom/motorola/kpi/LaunchCheckinHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/motorola/kpi/LaunchCheckinHandler;->saveStats(JZ)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized append()V
    .locals 7

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/motorola/kpi/Kpi6paTop;->printed:Z

    if-eqz v4, :cond_0

    .line 174
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/kpi/Kpi6paTop;->printed:Z

    .line 178
    :cond_0
    iget v4, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    .local v0, "start":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/motorola/kpi/Kpi6paTop;->readTopInfo(J)V

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 190
    .local v2, "time":J
    const-string v4, "KPI-6PA-TOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Kpi6paTop.append("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/kpi/Kpi6paTop;->intentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to parse /proc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 173
    .end local v0    # "start":J
    .end local v2    # "time":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/motorola/kpi/Kpi6paTop;->topInfo:I

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/motorola/kpi/Kpi6paTop;->freeTopInfo()V

    .line 110
    :cond_0
    return-void
.end method

.method public declared-synchronized print()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/kpi/Kpi6paTop;->printed:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "KPI-6PA-TOP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kpi6paTop.print("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/kpi/Kpi6paTop;->intentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already printed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_0
    :try_start_1
    const-string v0, "KPI-6PA-TOP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kpi6paTop.print("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/kpi/Kpi6paTop;->intentName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/kpi/Kpi6paTop;->printed:Z

    .line 203
    invoke-direct {p0}, Lcom/motorola/kpi/Kpi6paTop;->printTopInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(ZLjava/lang/String;)V
    .locals 7
    .param p1, "readThreads"    # Z
    .param p2, "intentName"    # Ljava/lang/String;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/motorola/kpi/Kpi6paTop;->topInfo:I

    if-nez v4, :cond_1

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/motorola/kpi/Kpi6paTop;->newTopInfo(I)V

    .line 147
    :goto_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/motorola/kpi/Kpi6paTop;->numAppend:I

    .line 150
    iput-object p2, p0, Lcom/motorola/kpi/Kpi6paTop;->intentName:Ljava/lang/String;

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 156
    .local v0, "start":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/motorola/kpi/Kpi6paTop;->readTopInfo(J)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 162
    .local v2, "time":J
    const-string v4, "KPI-6PA-TOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Kpi6paTop.start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to parse /proc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 135
    .end local v0    # "start":J
    .end local v2    # "time":J
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/motorola/kpi/Kpi6paTop;->newTopInfo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 138
    :cond_1
    :try_start_2
    iget-boolean v4, p0, Lcom/motorola/kpi/Kpi6paTop;->printed:Z

    if-nez v4, :cond_2

    .line 139
    const-string v4, "KPI-6PA-TOP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kpi6paTop.start("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/kpi/Kpi6paTop;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " print backlog before restarting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/motorola/kpi/Kpi6paTop;->print()V

    .line 142
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/motorola/kpi/Kpi6paTop;->printed:Z

    .line 143
    invoke-direct {p0}, Lcom/motorola/kpi/Kpi6paTop;->clearTopInfo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
